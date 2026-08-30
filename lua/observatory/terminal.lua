-- Terminal buffer colors

-- ANSI asks for six named hues: red, green, yellow, blue, magenta, cyan.
-- Many colorschemes do not provide all of them, so there are three supported
-- methods for filling them in.

local color = require "observatory.color"

local M = {}

-- Where each named ANSI slot sits on the hue circle, in degrees, and nothing
-- more: these are never displayed, only compared against a palette's own hues to
-- decide which color answers to "magenta".
--
-- The names are the chromatic corners of the RGB cube -- red 0, yellow 60, green
-- 120, cyan 180, blue 240, magenta 300 -- which is what a program asking for
-- `\e[34m` means, and where a terminal's stock palette sits. Three entries are
-- ours instead: red, yellow and green are the hues the generators build `err`,
-- `warn` and `ok` at, so that all three methods below agree about those slots.
-- Cyan is 16 past its corner because green is pinned 30 short of its own, which
-- otherwise leaves the scheme's green inside cyan's acceptance window; 85 of 158
-- schemes handed their green to the cyan slot. Blue stops 8 short of its corner,
-- where equal red and green make a synthesised blue read as lavender.
local ANSI = {
  { slot = 1, hue = 358, name = "red" },
  { slot = 2, hue = 150, name = "green" },
  { slot = 3, hue = 44, name = "yellow" },
  { slot = 4, hue = 232, name = "blue" },
  { slot = 5, hue = 300, name = "magenta" },
  { slot = 6, hue = 196, name = "cyan" },
}

-- The scheme's own colors for three of them. Every palette carries these at
-- fixed hues, because errors, warnings and git status cannot be recolored to
-- suit a subject without losing their meaning.
local DIAGNOSTIC = { red = "err", green = "ok", yellow = "warn" }

-- Candidates the nearest-hue search may draw from: the syntax accents, plus the
-- diagnostics, which are often a scheme's only saturated warm colors.
local POOL = {
  "prop",
  "func",
  "kw",
  "typ",
  "mod",
  "str",
  "num",
  "op",
  "macro",
  "esc",
  "err",
  "warn",
  "ok",
}

---The palette color whose hue is closest to `hue`, preferring more saturated
---candidates when two are equally close.
local function nearest(c, hue)
  local best, best_score
  for _, role in ipairs(POOL) do
    local hex = c[role]
    if hex then
      local h, s = color.hsl(hex)
      local score = color.hue_gap(h, hue) - s * 4
      if not best_score or score < best_score then
        best, best_score = hex, score
      end
    end
  end
  return best
end

---A color at the requested hue, built on the scheme's own terms: the mean
---saturation of its accents, at a contrast the ladder already uses.
local function synthesise(c, hue)
  local sum, n = 0, 0
  for _, role in ipairs(POOL) do
    if c[role] then
      local _, s = color.hsl(c[role])
      sum, n = sum + s, n + 1
    end
  end
  local sat = n > 0 and sum / n or 0.55
  return color.solve(hue, sat, 9.0) or color.solve(hue, sat * 0.7, 9.0) or nearest(c, hue)
end

local Methods = {}

---Never invent a color. Every slot is a color the scheme already contains,
---which means a warm monochrome gets a "green" that is really a yellow, and
---some slots come out near-duplicates. Honest, and occasionally useless.
function Methods.nearest(c)
  local out = {}
  for _, a in ipairs(ANSI) do
    out[a.slot] = nearest(c, a.hue)
  end
  return out
end

---Take red, yellow and green from the scheme's diagnostics, which are always
---present and always at those hues; take blue, magenta and cyan from the
---nearest accent when one is within 40 degrees, and build them otherwise.
function Methods.diagnostic(c)
  local out = {}
  for _, a in ipairs(ANSI) do
    local role = DIAGNOSTIC[a.name]
    if role and c[role] then
      out[a.slot] = c[role]
    else
      local hex = nearest(c, a.hue)
      local h = color.hsl(hex)
      out[a.slot] = color.hue_gap(h, a.hue) <= 40 and hex or synthesise(c, a.hue)
    end
  end
  return out
end

---Build all six at their canonical hues, on the scheme's own saturation and
---ladder. Consistent across the whole collection, at the cost of putting
---colors in a palette whose derivation never contained them.
function Methods.synth(c)
  local out = {}
  for _, a in ipairs(ANSI) do
    out[a.slot] = synthesise(c, a.hue)
  end
  return out
end

M.methods = { "nearest", "diagnostic", "synth" }

---@param c table palette
---@param method string one of M.methods
function M.apply(c, method)
  local build = Methods[method] or Methods.nearest
  local dim = build(c)

  -- 0 and 8 are the terminal's two blacks, 7 and 15 its two whites; the
  -- collection has a neutral ladder for exactly this.
  vim.g.terminal_color_0 = c.bg
  vim.g.terminal_color_8 = c.comment
  vim.g.terminal_color_7 = c.dim
  vim.g.terminal_color_15 = c.text

  for slot = 1, 6 do
    local hex = dim[slot]
    vim.g["terminal_color_" .. slot] = hex
    -- The bright half is the same hue one rung up the ladder. Where the color
    -- is already near the top, it stays where it is.
    local bright = math.min(color.contrast(hex) * 1.45, 16.5)
    vim.g["terminal_color_" .. (slot + 8)] = color.at_contrast(hex, bright)
  end
end

return M

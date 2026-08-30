-- Color utils

local M = {}

---@param hex string "#rrggbb"
---@return number, number, number
function M.rgb(hex)
  return tonumber(hex:sub(2, 3), 16), tonumber(hex:sub(4, 5), 16), tonumber(hex:sub(6, 7), 16)
end

---@return string
function M.hex(r, g, b)
  return string.format(
    "#%02x%02x%02x",
    math.floor(r + 0.5),
    math.floor(g + 0.5),
    math.floor(b + 0.5)
  )
end

local function linear(v)
  v = v / 255
  if v <= 0.04045 then
    return v / 12.92
  end
  return ((v + 0.055) / 1.055) ^ 2.4
end

---Relative luminance, per WCAG 2.
function M.luminance(hex)
  local r, g, b = M.rgb(hex)
  return 0.2126 * linear(r) + 0.7152 * linear(g) + 0.0722 * linear(b)
end

---Contrast ratio, per WCAG 2. `bg` defaults to true black; pass the background
---you actually have to ask the legibility question about it, which is a different
---question from the lightness rung this module solves for.
---@param hex string "#rrggbb"
---@param bg string|nil "#rrggbb"
---@return number
function M.contrast(hex, bg)
  return (M.luminance(hex) + 0.05) / ((bg and M.luminance(bg) or 0) + 0.05)
end

---@return number,number,number hue in degrees, number saturation, number lightness
function M.hsl(hex)
  local r, g, b = M.rgb(hex)
  r, g, b = r / 255, g / 255, b / 255
  local max, min = math.max(r, g, b), math.min(r, g, b)
  local l = (max + min) / 2
  if max == min then
    return 0, 0, l
  end
  local d = max - min
  local s = l > 0.5 and d / (2 - max - min) or d / (max + min)
  local h
  if max == r then
    h = (g - b) / d + (g < b and 6 or 0)
  elseif max == g then
    h = (b - r) / d + 2
  else
    h = (r - g) / d + 4
  end
  return h * 60, s, l
end

local function channel(p, q, t)
  if t < 0 then
    t = t + 1
  end
  if t > 1 then
    t = t - 1
  end
  if t < 1 / 6 then
    return p + (q - p) * 6 * t
  end
  if t < 1 / 2 then
    return q
  end
  if t < 2 / 3 then
    return p + (q - p) * (2 / 3 - t) * 6
  end
  return p
end

---@param h number degrees
---@param s number 0..1
---@param l number 0..1
function M.from_hsl(h, s, l)
  if s == 0 then
    return M.hex(l * 255, l * 255, l * 255)
  end
  local q = l < 0.5 and l * (1 + s) or l + s - l * s
  local p = 2 * l - q
  h = (h % 360) / 360
  return M.hex(
    channel(p, q, h + 1 / 3) * 255,
    channel(p, q, h) * 255,
    channel(p, q, h - 1 / 3) * 255
  )
end

---The color at this hue and saturation whose contrast against black is
---`target`, found by bisection on lightness. Returns nil when the hue and
---saturation cannot reach the target at any lightness, which happens for
---saturated warm hues at high contrast.
---@return string|nil
function M.solve(hue, sat, target)
  local lo, hi = 0.0, 1.0
  local hex
  for _ = 1, 32 do
    local mid = (lo + hi) / 2
    hex = M.from_hsl(hue, sat, mid)
    if M.contrast(hex) < target then
      lo = mid
    else
      hi = mid
    end
  end
  if math.abs(M.contrast(hex) - target) > 0.5 then
    return nil
  end
  return hex
end

---The same color, moved to a different contrast. Used for the eight bright
---ANSI slots, which are their dim counterparts one rung up the ladder.
function M.at_contrast(hex, target)
  local h, s = M.hsl(hex)
  return M.solve(h, s, target) or hex
end

---Shortest distance between two hues, in degrees.
function M.hue_gap(a, b)
  local d = math.abs((a - b) % 360)
  return math.min(d, 360 - d)
end

return M

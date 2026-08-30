local config = require "observatory.config"

local M = {}

---@param opts table|nil
function M.setup(opts)
  config.setup(opts)
  -- Reload colorscheme if it was set before setup
  local name = vim.g.colors_name
  if name and name:find "^observatory%-" then
    M.load(name)
  end
end

---@param name string
---@return table|nil palette, string|nil err
local function read_palette(name)
  local ok, palette = pcall(require, "observatory.palettes." .. name)
  if not ok then
    return nil, ("observatory: no palette for %q"):format(name)
  end
  return palette
end

---A scheme's palette, keyed by role: `bg`, `text`, `comment`, `kw`, `str`,
---`func`, and so on. Defaults to the scheme currently loaded, which makes it the
---thing to write anything scheme-aware against -- a statusline theme, a plugin
---that wants colors of its own. For highlight groups, the `overrides` option
---hands this same table to a function and applies the result with the scheme.
---@param name string|nil
---@return table|nil
function M.palette(name)
  name = name or vim.g.colors_name
  if not name then
    return nil
  end
  return (read_palette(name))
end

---The user's `overrides` for one scheme, resolved against what the scheme itself
---would paint: only the groups they name, each already merged. `"*"` is applied
---before the scheme's own entry so the two layer.
---
---A spec is merged rather than substituted, so `{ italic = false }` keeps the
---color the palette chose. A spec that links replaces outright, because
---`nvim_set_hl` ignores everything else once `link` is present.
---@param o table resolved options
---@param c table palette
---@param name string
---@param base fun(group: string): table|nil what the scheme would paint
---@return table<string, table>
local function resolve_overrides(o, c, name, base)
  local out = {}
  for _, key in ipairs { "*", name } do
    local specs = o.overrides[key]
    if type(specs) == "function" then
      specs = specs(c)
    end
    for group, spec in pairs(specs or {}) do
      if type(spec) ~= "table" then
        -- The one mistake this shape invites: a function belongs on the scheme
        -- key, where it receives the palette, not on a group.
        vim.notify(
          ("observatory: overrides[%q].%s is a %s, and a group takes a table"):format(
            key,
            group,
            type(spec)
          ),
          vim.log.levels.WARN
        )
      else
        local under = out[group] or base(group)
        out[group] = (spec.link or not under) and spec or vim.tbl_extend("force", under, spec)
      end
    end
  end
  return out
end

---The highlight table a scheme would apply
---@param name string|nil
---@return table<string, table>|nil
function M.groups(name)
  name = name or vim.g.colors_name
  local c = M.palette(name)
  if not c then
    return nil
  end
  local o = config.resolve()
  local groups = require("observatory.groups").get(c, o)
  for group, spec in pairs(require("observatory.integrations").get(c, o)) do
    groups[group] = spec
  end
  local overrides = resolve_overrides(o, c, name, function(g)
    return groups[g]
  end)
  for group, spec in pairs(overrides) do
    groups[group] = spec
  end
  return groups
end

---Apply the selected scheme
---@param name string
function M.load(name)
  local c, err = read_palette(name)
  if not c then
    if err then
      vim.notify(err, vim.log.levels.ERROR)
    end
    return
  end

  vim.api.nvim_command "highlight clear"

  if vim.fn.exists "syntax_on" == 1 then
    vim.api.nvim_command "syntax reset"
  end

  vim.o.termguicolors = true
  vim.o.background = "dark"
  vim.g.colors_name = name

  local opts = config.resolve()
  local core = require("observatory.groups").get(c, opts)
  local extra = require("observatory.integrations").get(c, opts)
  for group, spec in pairs(core) do
    vim.api.nvim_set_hl(0, group, spec)
  end
  for group, spec in pairs(extra) do
    vim.api.nvim_set_hl(0, group, spec)
  end

  if next(opts.overrides) then
    local overrides = resolve_overrides(opts, c, name, function(g)
      return extra[g] or core[g]
    end)
    for group, spec in pairs(overrides) do
      vim.api.nvim_set_hl(0, group, spec)
    end
  end

  if opts.terminal.enabled then
    require("observatory.terminal").apply(c, opts.terminal.method)
  end
end

return M

local M = {}

M.defaults = {
  --- Clear the editor background, leaving floats, selections and diff
  --- backdrops with their own. Note that every scheme in this collection is
  --- built on a true black background and its contrast ratios are measured
  --- against #000000; turn this on and those measurements describe your
  --- terminal's background rather than the scheme's.
  transparent = false,

  --- Italics on comments and builtins.
  italic = true,

  --- Bold on keywords, functions and titles.
  bold = true,

  --- Undercurl on diagnostics and spelling. Off means underline, for terminals
  --- that draw a curl badly or not at all.
  undercurl = true,

  --- Fill `vim.g.terminal_color_0` through `15` for `:terminal` buffers.
  --- `false` leaves Neovim's defaults alone. `true` means "nearest". The three
  --- methods differ in what they do when a palette has no green, magenta or
  --- cyan -- which is common here, since several schemes span five degrees of
  --- hue or fewer.
  ---
  ---   "nearest"     never invent a color; use the closest one the scheme
  ---                 owns, even when "closest" is not close.
  ---   "diagnostic"  red, yellow and green from the scheme's own error,
  ---                 warning and git colors; the rest from the nearest
  ---                 accent, or built if nothing is within 40 degrees.
  ---   "synth"       build all six at canonical hues, on the scheme's own
  ---                 saturation and contrast ladder.
  ---
  ---@type boolean|"nearest"|"diagnostic"|"synth"
  terminal_colors = false,

  --- Highlight groups for other plugins. Off, and named one at a time:
  ---
  ---   integrations = { telescope = true, mini = true }
  ---   integrations = true                    -- every one of them
  ---
  --- Off by default because the cost is paid whether or not you have the plugin.
  --- Switching them all on roughly triples the `nvim_set_hl` calls a load makes,
  --- and a highlight for a group nobody reads is inert but not free. Naming the
  --- four or five plugins you actually run is a line of config and most of the
  --- load.
  ---
  --- A plugin left out is not unstyled: it keeps its own defaults, which are
  --- mostly `hi default link` onto the core groups this scheme paints. What an
  --- integration adds is the part those links get wrong or leave gray.
  ---
  --- `require("observatory.integrations").names()` lists them.
  ---@type table<string, boolean>|boolean
  integrations = {},

  --- Highlight groups of your own, keyed by the scheme they apply to. `"*"` is
  --- every scheme and is applied first, so a per-scheme tweak layers on a shared
  --- one. A value can be a function of the palette, for overrides written against
  --- the scheme's own colors rather than against a hex literal:
  ---
  ---   overrides = {
  ---     ["*"] = { Comment = { italic = false } },
  ---     ["observatory-plate"] = function(c)
  ---       return { ["@keyword"] = { fg = c.text, bold = true } }
  ---     end,
  ---   }
  ---
  --- A spec is merged into the scheme's own, so naming one attribute keeps the
  --- color the palette chose; a spec that links replaces outright, since a link
  --- and attributes cannot both apply. Overrides land in the same pass as the
  --- rest of the scheme, which is the difference between this and an autocmd on
  --- ColorScheme: no second application, no ordering against the other plugins
  --- listening to that event, and `require("observatory").groups()` reports what
  --- is actually on screen.
  ---@type table<string, table<string, vim.api.keyset.highlight>|fun(palette: table): table<string, vim.api.keyset.highlight>>
  overrides = {},
}

M.options = vim.deepcopy(M.defaults)

---@param opts table|nil
function M.setup(opts)
  opts = opts or {}
  M.options = vim.tbl_deep_extend("force", M.options, opts)
  -- A highlight spec is a leaf, not a nested option: naming a group in a second
  -- setup call means to replace that group's spec, not to merge attributes into
  -- the one it had before and leave a hybrid of the two.
  for scheme, specs in pairs(opts.overrides or {}) do
    if type(specs) == "table" then
      for group, spec in pairs(specs) do
        M.options.overrides[scheme][group] = spec
      end
    end
  end
end

---Options as the highlight modules want them: the user's table, plus
---`terminal_colors` split into the two questions the term module asks of it.
function M.resolve()
  local o = vim.deepcopy(M.options)
  local t = o.terminal_colors
  o.terminal = {
    enabled = t ~= false and t ~= nil,
    method = type(t) == "string" and t or "nearest",
  }
  return o
end

return M

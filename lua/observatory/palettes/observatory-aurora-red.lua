-- observatory-aurora-red -- the rare all-red aurora, green demoted to an accent
--
-- The same emission lines as `observatory-aurora`, weighted for the type-A red
-- aurora: the 630.0 nm oxygen line that normally forms a faint high-altitude
-- fringe leads instead, with the N2 pink at 661.1+427.8 nm behind it and the
-- 557.7 nm green demoted to an accent. This does happen -- during strong storms
-- the red oxygen line can dominate the whole display -- and it is the closest
-- the sky gets to a warm color scheme.
--
-- Reds and pinks carry the buffer; the green and teal that lead the ordinary
-- aurora survive only on types and modules, where their rarity makes them
-- useful. Even the grays are rose-tinted, so this is a warm scheme throughout
-- despite being built from the same physics as the green one.
--
-- A warm-dominant palette leaves diagnostics nowhere to go
-- by hue, so they go by extremity: the error red is the deepest and most
-- chromatic value here at 5.20 contrast, and the sodium airglow yellow the
-- brightest at 13.00. Green being pushed to an accent is what makes git's green
-- readable at all.
--
-- Construction follows the rest of the family: every foreground is solved
-- by binary search for an exact contrast ratio against #000000, each accent
-- is the most chromatic form of its hue that still meets that ratio under a
-- per-role cap, and the closest pair of adjacent-capable roles sits at
-- 12.0 Delta E.

return {
  name = "observatory-aurora-red",
  about = "the rare all-red aurora, green demoted to an accent",
  floor = 12.0,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#1b090c",
  bg_float = "#280b10",
  bg_sel = "#4c141b",
  bg_hl = "#641b22",
  border = "#742432",
  bg_search = "#992c46",
  nontext = "#5d262f",

  -- the text ladder
  text = "#e0dcdc",
  dim = "#c1aaad",
  punct = "#bb959d",
  comment = "#9f747e",
  lnr = "#965869",
  lnr_cur = "#c1a3a8",

  -- syntax roles
  str = "#ea65db",
  num = "#da91e9",
  typ = "#22a64e",
  mod = "#2dc5cf",
  prop = "#d4bdc0",
  func = "#f4a491",
  kw = "#ea867b",
  op = "#bd78a4",
  macro = "#ea65db",
  esc = "#da91e9",

  -- interface duties, following the syntax colors
  err = "#f4282f",
  warn = "#e5cc13",
  info = "#2dc5cf",
  hint = "#22a64e",
  ok = "#2da877",
  accent = "#f4a491",
  cursearch = "#ea867b",
  subst = "#ea65db",
  match = "#e5cc13",
  title = "#f4a491",
  dir = "#2dc5cf",
  label = "#ea867b",
  tag = "#ea867b",
  h1 = "#ea867b",
  h2 = "#f4a491",
  h3 = "#ea65db",
  h4 = "#da91e9",
  h5 = "#2dc5cf",
  h6 = "#22a64e",

  -- diff and virtual-text backdrops
  diff_add = "#062317",
  diff_delete = "#430c0e",
  diff_change = "#061e20",
  diff_text = "#0a3638",
  vt_error = "#390a0c",
  vt_warn = "#1c1a05",
  vt_info = "#051b1c",
  vt_hint = "#051b0c",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "pink", hue = 307, chroma = 75.0, cr = 7.38 },
    { key = "violet", hue = 290, chroma = 53.6, cr = 9.21 },
    { key = "green", hue = 140, chroma = 64.4, cr = 6.63 },
    { key = "teal", hue = 184, chroma = 37.7, cr = 10.00 },
    { key = "blush", hue = 352, chroma = 8.8, cr = 11.84 },
    { key = "scarlet", hue = 12, chroma = 35.1, cr = 10.57 },
    { key = "rose", hue = 6, chroma = 43.4, cr = 8.19 },
    { key = "mauve", hue = 322, chroma = 35.6, cr = 6.39 },
  },
}

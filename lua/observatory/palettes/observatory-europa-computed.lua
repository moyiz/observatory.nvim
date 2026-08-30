-- observatory-europa-computed -- water ice, and whatever the ocean brought up
--
-- Source: Europa has two materials and no third. Nearly everything is water
-- ice, bright and faintly blue; everything else is the rust-brown
-- contaminant filling the lineae -- magnesium and sodium sulfates from
-- below, plus sulfur reworked by Jupiter's radiation belts.
--
-- A two-material world makes an unusually clean duotone: cool ice for the
-- bulk of a buffer, warm contaminant for the roles you scan for. Nothing
-- here sits between the two families, because nothing on Europa does
-- either -- there is no green, no violet, no yellow beyond the sulfates.
--
-- The split is deliberate along role frequency rather than hue: strings,
-- properties and modules are ice, keywords, types and functions are the
-- lineae. Ice takes the largest role because ice is nearly all of Europa. So
-- a line of code looks like the surface does from orbit -- pale, with
-- rust-colored cracks running through it.--
-- Units, and the roles they take:
--
--   frost        hue 194   16.92 contrast   properties
--   ice          hue 200   12.63 contrast   strings, escapes
--   plain        hue 200    9.14 contrast   modules
--   chaos        hue  30    8.73 contrast   types
--   lineae       hue  20    7.32 contrast   keywords, macros, imports
--   sulfate     hue  38    6.20 contrast   functions
--   radiolytic   hue  14    5.34 contrast   numbers
--   crack        hue 208    4.71 contrast   operators
--
-- Hues here are fixed by the source, since they are the part that
-- represents the world. Saturation and contrast were then solved within a
-- band around their authored values, so that every pair of colors that can
-- appear together -- including every pair with the error, warning and git
-- colors, which sit beside code in the sign column -- clears the family's
-- separation limit.
--
-- Construction follows the rest of the family: every foreground is solved
-- by binary search for an exact contrast ratio against #000000, each accent
-- is the most chromatic form of its hue that still meets that ratio under a
-- per-role cap, and the closest pair of adjacent-capable roles sits at
-- 11.0 Delta E.

return {
  name = "observatory-europa-computed",
  about = "water ice, and whatever the ocean brought up",
  floor = 11.0,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#080f13",
  bg_float = "#0b161d",
  bg_sel = "#132a3a",
  bg_hl = "#173948",
  border = "#224558",
  bg_search = "#2b587b",
  nontext = "#223b45",

  -- the text ladder
  text = "#c6cacb",
  dim = "#9fadb3",
  punct = "#7999a5",
  comment = "#72797d",
  lnr = "#4c697c",
  lnr_cur = "#95a9b2",

  -- syntax roles
  str = "#abcedf",
  num = "#aa7362",
  typ = "#ca9f75",
  mod = "#a6acaf",
  prop = "#dce9ed",
  func = "#b3832f",
  kw = "#e07f4e",
  op = "#557b9d",
  macro = "#e07f4e",
  esc = "#abcedf",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#a6acaf",
  hint = "#abcedf",
  ok = "#29b16d",
  accent = "#b3832f",
  cursearch = "#e07f4e",
  subst = "#abcedf",
  match = "#edc24a",
  title = "#b3832f",
  dir = "#ca9f75",
  label = "#e07f4e",
  tag = "#e07f4e",
  h1 = "#e07f4e",
  h2 = "#b3832f",
  h3 = "#abcedf",
  h4 = "#ca9f75",
  h5 = "#a6acaf",
  h6 = "#aa7362",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#071e29",
  diff_text = "#0c3346",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#061a23",
  vt_hint = "#061821",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "ice", hue = 200, chroma = 14.6, cr = 12.63 },
    { key = "radiolytic", hue = 14, chroma = 26.7, cr = 5.34 },
    { key = "chaos", hue = 30, chroma = 29.9, cr = 8.73 },
    { key = "plain", hue = 200, chroma = 2.7, cr = 9.14 },
    { key = "frost", hue = 194, chroma = 4.9, cr = 16.92 },
    { key = "sulfate", hue = 38, chroma = 51.5, cr = 6.20 },
    { key = "lineae", hue = 20, chroma = 54.0, cr = 7.32 },
    { key = "crack", hue = 208, chroma = 22.8, cr = 4.71 },
  },
}

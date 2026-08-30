-- observatory-albedo -- the solar system, lit by apparent magnitude
--
-- Source: the planets. Hue is roughly what each body looks like through a
-- telescope, and contrast is ranked by mean apparent magnitude -- how bright
-- it actually appears from here, not how bright it is.
--
-- Plain text is Earth, because that is where you are reading from. Every
-- other role is somewhere else in the system, and the two rules pull in
-- different directions in a useful way: Venus is pale cream and very bright,
-- Neptune is a deep blue and nearly invisible, so the palette is mostly warm
-- at the top and cool at the bottom without that having been the intent.
--
-- Bodies, magnitudes and the roles they take:
--
--   Moon     mag -12.7   hue  36   15.90 contrast   strings, escapes
--   Venus    mag  -4.1   hue  48   14.20 contrast   properties
--   Jupiter  mag  -2.2   hue  33   11.80 contrast   functions
--   Mars     mag  -1.0   hue  17    9.60 contrast   keywords
--   Mercury  mag  -0.4   hue  27    8.30 contrast   types
--   Saturn   mag  +0.7   hue  51    7.10 contrast   numbers
--   Uranus   mag  +5.7   hue 184    5.60 contrast   operators, modules
--   Neptune  mag  +7.8   hue 219    4.60 contrast   macros, imports
--   Earth    -- you are here --   hue 213   12.20 contrast   variables
--
-- The Moon outranks everything at magnitude -12.7 and is nearly colorless,
-- which makes it the right source for strings: the largest area of colored
-- text on a screen wants the most brightness and the least chroma. The rest of
-- the roles are grouped so that each body's share of a buffer falls in the same
-- order as its brightness, which is the quantity the ladder is built on --
-- Neptune, at magnitude 7.8, gets the least of it. The hue circle here has a
-- real gap: nothing in the solar system is green or violet.
--
-- Construction follows the rest of the family: every foreground is solved
-- by binary search for an exact contrast ratio against #000000, each accent
-- is the most chromatic form of its hue that still meets that ratio under a
-- per-role cap, and the closest pair of adjacent-capable roles sits at
-- 10.8 Delta E.

return {
  name = "observatory-albedo",
  about = "the solar system, lit by apparent magnitude",
  floor = 10.8,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#0a0f17",
  bg_float = "#0d1623",
  bg_sel = "#172746",
  bg_hl = "#1f3463",
  border = "#2a406d",
  bg_search = "#31558b",
  nontext = "#293754",

  -- the text ladder
  text = "#b8c7d9",
  dim = "#a9afbc",
  punct = "#909db2",
  comment = "#778095",
  lnr = "#5d6a8b",
  lnr_cur = "#a3abbc",

  -- syntax roles
  str = "#e3dfda",
  num = "#a9962d",
  typ = "#b99d87",
  mod = "#3a9096",
  prop = "#dbd4bc",
  func = "#dabe9b",
  kw = "#e59f82",
  op = "#3a9096",
  macro = "#4073d2",
  esc = "#e3dfda",

  -- interface duties, following the syntax colors
  err = "#f44c52",
  warn = "#edc24a",
  info = "#3a9096",
  hint = "#e3dfda",
  ok = "#29b16d",
  accent = "#dabe9b",
  cursearch = "#e59f82",
  subst = "#e3dfda",
  match = "#edc24a",
  title = "#dabe9b",
  dir = "#b99d87",
  label = "#e59f82",
  tag = "#e59f82",
  h1 = "#e59f82",
  h2 = "#dabe9b",
  h3 = "#e3dfda",
  h4 = "#b99d87",
  h5 = "#3a9096",
  h6 = "#a9962d",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#061e20",
  diff_text = "#0a3539",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#051b1c",
  vt_hint = "#1f1405",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "moon", hue = 33, chroma = 3.0, cr = 15.83 },
    { key = "saturn", hue = 51, chroma = 55.0, cr = 7.09 },
    { key = "mercury", hue = 26, chroma = 16.9, cr = 8.24 },
    { key = "uranus", hue = 184, chroma = 26.0, cr = 5.61 },
    { key = "venus", hue = 46, chroma = 12.8, cr = 14.16 },
    { key = "jupiter", hue = 33, chroma = 21.9, cr = 11.82 },
    { key = "mars", hue = 18, chroma = 34.2, cr = 9.61 },
    { key = "neptune", hue = 219, chroma = 56.0, cr = 4.60 },
  },
}

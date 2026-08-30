-- observatory-earth-computed -- the only world that needs no help finding colors
--
-- Source: Earth, from orbit and at night. Ocean blue, shelf turquoise,
-- vegetation green, desert tan, cloud and ice white, the 557.7 nm oxygen
-- airglow that rings the limb, and the sodium yellow of city lighting.
--
-- Every other scheme in this set fights for hues, because most worlds are
-- one color and a stretch. Earth is the exception: it supplies blue, green,
-- tan, white and yellow without any exaggeration, which makes this the most
-- conventional-looking scheme of the twelve and the only one that would pass
-- as an ordinary syntax theme.
--
-- The ocean takes strings, because strings are the largest share of colored
-- characters on a screen -- a fifth of them, measured over a corpus in five
-- languages -- and the ocean is 71% of the planet. Vegetation moves to
-- keywords, nearer the tenth of the surface it actually covers. Functions get
-- the sodium yellow of city lighting, the only color here that is ours
-- rather than the planet's, and the airglow that rings the limb in orbital
-- photographs rings a string literal in escapes.
--
-- Units, and the roles they take:
--
--   cloud        hue 203   16.93 contrast   properties
--   ice          hue 190   13.88 contrast   modules
--   desert       hue  32    9.81 contrast   types
--   sodium       hue  42    9.76 contrast   functions
--   forest       hue 128    8.35 contrast   keywords, macros, imports
--   airglow      hue 158    7.23 contrast   escapes
--   ocean        hue 214    6.41 contrast   strings
--   abyss        hue 228    5.26 contrast   numbers
--   shelf        hue 200    4.69 contrast   operators
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
-- 11.6 Delta E.

return {
  name = "observatory-earth-computed",
  about = "the only world that needs no help finding colors",
  floor = 11.6,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#090f14",
  bg_float = "#0c1620",
  bg_sel = "#162843",
  bg_hl = "#1a3852",
  border = "#264263",
  bg_search = "#31558b",
  nontext = "#25394b",

  -- the text ladder
  text = "#c5c7ca",
  dim = "#a1abb5",
  punct = "#7a97aa",
  comment = "#72787f",
  lnr = "#506782",
  lnr_cur = "#97a7b3",

  -- syntax roles
  str = "#5890d9",
  num = "#657ad1",
  typ = "#d7a973",
  mod = "#b1d9e1",
  prop = "#e0e8ed",
  func = "#e4a613",
  kw = "#35bb47",
  op = "#4f7d94",
  macro = "#35bb47",
  esc = "#2dab7d",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#b1d9e1",
  hint = "#5890d9",
  ok = "#29b16d",
  accent = "#e4a613",
  cursearch = "#35bb47",
  subst = "#5890d9",
  match = "#edc24a",
  title = "#e4a613",
  dir = "#d7a973",
  label = "#35bb47",
  tag = "#35bb47",
  h1 = "#35bb47",
  h2 = "#e4a613",
  h3 = "#5890d9",
  h4 = "#d7a973",
  h5 = "#b1d9e1",
  h6 = "#657ad1",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#061e23",
  diff_text = "#0b343d",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#051a1f",
  vt_hint = "#07162a",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "ocean", hue = 214, chroma = 43.0, cr = 6.41 },
    { key = "abyss", hue = 228, chroma = 50.3, cr = 5.26 },
    { key = "desert", hue = 32, chroma = 35.7, cr = 9.81 },
    { key = "ice", hue = 190, chroma = 14.0, cr = 13.88 },
    { key = "cloud", hue = 203, chroma = 3.8, cr = 16.93 },
    { key = "sodium", hue = 42, chroma = 74.1, cr = 9.76 },
    { key = "forest", hue = 128, chroma = 75.6, cr = 8.35 },
    { key = "shelf", hue = 200, chroma = 19.6, cr = 4.69 },
    { key = "airglow", hue = 158, chroma = 47.0, cr = 7.23 },
  },
}

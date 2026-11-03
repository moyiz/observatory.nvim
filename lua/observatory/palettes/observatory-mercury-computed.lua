-- observatory-mercury-computed -- the grayest planet, mapped by reflectance unit
--
-- Source: MESSENGER MDIS enhanced-color mapping, which separates Mercury
-- into units the eye cannot: low-reflectance material, high-reflectance
-- smooth plains, the bluish hollows, and the pyroclastic faculae around
-- explosive vents.
--
-- Mercury is about as reflective as worn asphalt and looks gray in any
-- honest photograph. Everything colorful here comes from a stretch: the
-- tan plains, the blue-gray low-reflectance material and the orange
-- pyroclastic deposits are real distinctions between real materials, but
-- their separation is exaggerated far past what an eye at Mercury would
-- report. This is a scheme of a map, not of a view.
--
-- Keywords take the faculae, the most saturated thing on the planet and the
-- only strong orange. Strings take the low-reflectance material, which is
-- the blue-gray that makes the enhanced-color maps look blue. Plain text
-- sits at 12.7 contrast, below the crater rays at 16.9, so the
-- brightest thing in a buffer is the brightest thing on the planet.
--
-- Units, and the roles they take:
--
--   ray          hue 210   16.94 contrast   properties
--   plains       hue  33   12.39 contrast   functions
--   hollow       hue 196   10.36 contrast   modules
--   regolith     hue  30    9.02 contrast   types
--   facula       hue  18    7.90 contrast   keywords, macros, imports
--   lrm          hue 233    6.84 contrast   strings, escapes
--   graphite     hue 228    6.01 contrast   numbers
--   basin        hue 237    4.74 contrast   operators
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
-- 11.3 Delta E.
--
-- After the solve, a last pass moved saturation and contrast, never hue. CIE76
-- overstates how far apart some colors look, saturated blues most of all, so
-- every pair of syntax colors and each of them against plain text is now also
-- held 6.0 apart in CIEDE2000, which graphite and lrm, at 3.5, were not.

return {
  name = "observatory-mercury-computed",
  about = "the grayest planet, mapped by reflectance unit",
  floor = 11.3,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#0b0d19",
  bg_float = "#10142a",
  bg_sel = "#1e2159",
  bg_hl = "#22316c",
  border = "#313b7d",
  bg_search = "#4047b5",
  nontext = "#2c365a",

  -- the text ladder
  text = "#c5c9d2",
  dim = "#a0a5b4",
  punct = "#8794b2",
  comment = "#70778f",
  lnr = "#58638f",
  lnr_cur = "#99a0b5",

  -- syntax roles
  str = "#838ddf",
  num = "#7b87b9",
  typ = "#b9a795",
  mod = "#89bed2",
  prop = "#e5e7e9",
  func = "#dcc3a4",
  kw = "#e5865d",
  op = "#6b70c4",
  macro = "#e5865d",
  esc = "#838ddf",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#89bed2",
  hint = "#838ddf",
  ok = "#29b16d",
  accent = "#dcc3a4",
  cursearch = "#e5865d",
  subst = "#838ddf",
  match = "#edc24a",
  title = "#dcc3a4",
  dir = "#b9a795",
  label = "#e5865d",
  tag = "#e5865d",
  h1 = "#e5865d",
  h2 = "#dcc3a4",
  h3 = "#838ddf",
  h4 = "#b9a795",
  h5 = "#89bed2",
  h6 = "#7b87b9",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#071d26",
  diff_text = "#0c3343",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#061b22",
  vt_hint = "#0b103e",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "lrm", hue = 233, chroma = 46.1, cr = 6.84 },
    { key = "graphite", hue = 228, chroma = 28.7, cr = 6.01 },
    { key = "regolith", hue = 30, chroma = 12.2, cr = 9.02 },
    { key = "hollow", hue = 196, chroma = 19.9, cr = 10.36 },
    { key = "ray", hue = 210, chroma = 1.3, cr = 16.94 },
    { key = "plains", hue = 33, chroma = 19.3, cr = 12.39 },
    { key = "facula", hue = 18, chroma = 49.7, cr = 7.90 },
    { key = "basin", hue = 237, chroma = 49.0, cr = 4.74 },
  },
}

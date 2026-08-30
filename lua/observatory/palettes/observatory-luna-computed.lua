-- observatory-luna-computed -- gray, until you stretch it
--
-- Source: the Moon's real but slight color variation. Clementine and
-- Galileo color ratios separate the titanium-rich maria, which are
-- genuinely bluer, from the tan anorthositic highlands. And Apollo 17 found
-- soil at Shorty crater that is orange without any enhancement at all --
-- beads of volcanic glass, and the only vivid color anyone has picked up
-- off the lunar surface.
--
-- So the Moon is a two-family world after all, blue-gray against tan, with
-- one saturated orange in it. This is the lowest-chroma scheme of the twelve
-- and deliberately so: the mare blue and highland tan sit barely off gray,
-- exactly as they do in the ratio images, and the orange soil is the single
-- thing that jumps.
--
-- The highlands take strings, and with them about a fifth of a buffer: they
-- are 83% of the surface, and nothing else here has a claim on that much. The
-- titanium-rich mare basalt is a few per cent of it, and takes functions.
-- Keywords keep the orange soil -- one crater's worth of glass beads, on a
-- role you scan for rather than one you read.
--
-- Compare `observatory-mercury`, the same gray-with-tan problem solved
-- by a much harder stretch -- this palette is the less chromatic of the two,
-- and pays for that in variety.
--
-- Units, and the roles they take:
--
--   ray          hue 200   16.93 contrast   properties
--   highland     hue  38   12.28 contrast   strings, escapes
--   mare         hue 224   10.18 contrast   modules
--   regolith     hue  31    7.82 contrast   types
--   orange_soil  hue  26    7.39 contrast   keywords, macros, imports
--   titanium     hue 236    6.34 contrast   functions
--   breccia      hue  33    5.28 contrast   numbers
--   shadow       hue 219    5.21 contrast   operators
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
-- 12.0 Delta E.

return {
  name = "observatory-luna-computed",
  about = "gray, until you stretch it",
  floor = 12.0,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#0a0f18",
  bg_float = "#0f1427",
  bg_sel = "#1b2451",
  bg_hl = "#1f3463",
  border = "#2d3e74",
  bg_search = "#3a4ca6",
  nontext = "#2a3856",

  -- the text ladder
  text = "#c3c7cf",
  dim = "#a4aab5",
  punct = "#8593aa",
  comment = "#757881",
  lnr = "#576489",
  lnr_cur = "#9da6b5",

  -- syntax roles
  str = "#cec5b5",
  num = "#927c61",
  typ = "#a89c8f",
  mod = "#a6b4dc",
  prop = "#e5e7e8",
  func = "#8388ca",
  kw = "#d98546",
  op = "#6a7fa7",
  macro = "#d98546",
  esc = "#cec5b5",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#a6b4dc",
  hint = "#cec5b5",
  ok = "#29b16d",
  accent = "#8388ca",
  cursearch = "#d98546",
  subst = "#cec5b5",
  match = "#edc24a",
  title = "#8388ca",
  dir = "#a89c8f",
  label = "#d98546",
  tag = "#d98546",
  h1 = "#d98546",
  h2 = "#8388ca",
  h3 = "#cec5b5",
  h4 = "#a89c8f",
  h5 = "#a6b4dc",
  h6 = "#927c61",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#0b183f",
  diff_text = "#132a6d",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#0a1637",
  vt_hint = "#1d1405",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "highland", hue = 38, chroma = 9.1, cr = 12.28 },
    { key = "breccia", hue = 33, chroma = 18.4, cr = 5.28 },
    { key = "regolith", hue = 31, chroma = 8.6, cr = 7.82 },
    { key = "mare", hue = 224, chroma = 22.0, cr = 10.18 },
    { key = "ray", hue = 200, chroma = 0.9, cr = 16.93 },
    { key = "titanium", hue = 236, chroma = 37.4, cr = 6.34 },
    { key = "orange_soil", hue = 26, chroma = 53.8, cr = 7.39 },
    { key = "shadow", hue = 219, chroma = 23.9, cr = 5.21 },
  },
}

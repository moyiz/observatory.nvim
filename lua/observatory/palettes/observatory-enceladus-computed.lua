-- observatory-enceladus-computed -- the brightest surface in the solar system
--
-- Source: Enceladus reflects essentially all the light that reaches it --
-- geometric albedo around 1.4, the highest of any body in the solar system
-- -- because its south polar vents keep resurfacing it with fresh ice. The
-- tiger stripes are bluer than their surroundings, since coarse-grained ice
-- scatters short wavelengths differently from powder.
--
-- The brightest surface anywhere gets a pale palette: properties reach
-- 16.9 against black, where pure white is 21.0. The only color is the
-- blue-cyan of the stripes, and it is thin, because fresh ice has almost no
-- chroma to give -- this is among the least chromatic schemes in the set.
--
-- What separates this from `observatory-pulsar`, the family's other pale scheme, is
-- chroma rather than brightness. Pulsar raises every role's contrast together
-- until the color washes out of all of them. Here the ladder is ordinary and
-- the chroma is simply low, so the palette reads as ice rather than as
-- bleach. Grain size, not hue, does the work -- which is also true of the
-- moon itself.
--
-- Units, and the roles they take:
--
--   plume        hue 191   16.86 contrast   properties
--   fresh        hue 196   12.59 contrast   functions
--   stripe       hue 188    9.56 contrast   types
--   firn         hue 204    7.84 contrast   modules
--   coarse       hue 180    6.67 contrast   strings, escapes
--   crevasse     hue 208    5.41 contrast   keywords, macros, imports
--   ering        hue 195    4.71 contrast   numbers
--   sulcus       hue 202    4.71 contrast   operators
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
-- 14.1 Delta E.

return {
  name = "observatory-enceladus-computed",
  about = "the brightest surface in the solar system",
  floor = 14.1,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#081012",
  bg_float = "#0a171b",
  bg_sel = "#122a37",
  bg_hl = "#153a44",
  border = "#204653",
  bg_search = "#285a72",
  nontext = "#213b42",

  -- the text ladder
  text = "#c2c6c7",
  dim = "#a6b1b6",
  punct = "#68a0ad",
  comment = "#4ba0c5",
  lnr = "#4a6c78",
  lnr_cur = "#9aadb2",

  -- syntax roles
  str = "#32a0a0",
  num = "#70797c",
  typ = "#38bfd3",
  mod = "#999fa3",
  prop = "#d1ebf1",
  func = "#9fd0e2",
  kw = "#4486bf",
  op = "#4b7d9b",
  macro = "#4486bf",
  esc = "#32a0a0",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#999fa3",
  hint = "#32a0a0",
  ok = "#29b16d",
  accent = "#9fd0e2",
  cursearch = "#4486bf",
  subst = "#32a0a0",
  match = "#edc24a",
  title = "#9fd0e2",
  dir = "#38bfd3",
  label = "#4486bf",
  tag = "#4486bf",
  h1 = "#4486bf",
  h2 = "#9fd0e2",
  h3 = "#32a0a0",
  h4 = "#38bfd3",
  h5 = "#999fa3",
  h6 = "#70797c",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#081d2b",
  diff_text = "#0d324b",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#071a26",
  vt_hint = "#051a1a",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "coarse", hue = 180, chroma = 31.3, cr = 6.67 },
    { key = "ering", hue = 195, chroma = 3.9, cr = 4.71 },
    { key = "stripe", hue = 188, chroma = 35.4, cr = 9.56 },
    { key = "firn", hue = 204, chroma = 3.1, cr = 7.84 },
    { key = "plume", hue = 191, chroma = 9.3, cr = 16.86 },
    { key = "fresh", hue = 196, chroma = 18.3, cr = 12.59 },
    { key = "crevasse", hue = 208, chroma = 36.1, cr = 5.41 },
    { key = "sulcus", hue = 202, chroma = 22.8, cr = 4.71 },
  },
}

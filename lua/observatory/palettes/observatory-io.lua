-- observatory-io -- sulfur, ochre and frost, and no blue anywhere
--
-- Source: Galileo's highest-resolution true-color Io, assembled from the
-- 1999 flybys. Io resurfaces itself faster than it can be cratered, so nothing
-- in the frame is old: the yellows are sulfur allotropes laid down by four
-- hundred active volcanoes, and the white is sulfur-dioxide frost.
--
-- Image: Io -- Galileo, SSI.
-- NASA/JPL/University of Arizona.
-- Sampled at 3196 x 3196; 60% of the frame carried light.
--
-- Io is the most saturated world in the solar system and the frame proves it:
-- the area-weighted purity of the sampled colors is higher than any other
-- world here, and every one of them lies within a seventeen-degree wedge of
-- yellow. That makes this a one-hue scheme by the picture's own arrangement,
-- separated by lightness from bright frost down to the dark floor of a
-- caldera, which is exactly how the moon is read.
--
-- Roles follow area. With the hue fixed by the subject, the ladder does the
-- work.
--
-- What is in the frame, and the roles it takes:
--
--   ochre         hue  54  16.85 contrast  27.0% of frame   numbers, operators, macros, imports
--   sulfur       hue  55  14.20 contrast  33.3% of frame   modules
--   frost         hue  52  13.59 contrast  31.2% of frame   properties, types
--   flow          hue  43  10.63 contrast   4.3% of frame   keywords
--   vent          hue  40   7.51 contrast   3.2% of frame   escapes
--   caldera       hue  37   4.72 contrast   1.0% of frame   strings, functions
--
-- Hues here are the picture's, taken from it unaltered, since they are what
-- makes a palette recognisable as its subject. Each color's purity was then
-- solved for rather than chosen -- the saturation is whatever puts the frame's
-- own chroma on screen at that rung -- and saturation and contrast were both
-- allowed to move within a narrow band until every pair of colors that can
-- appear together, including every pair with the error, warning and git
-- colors that sit beside code in the sign column, cleared the family's
-- separation limit.
--
-- Construction follows the rest of the family: every foreground is solved by
-- binary search for an exact contrast ratio against #000000. What differs is
-- purity, which is solved rather than maximised -- each accent carries the
-- chroma its own patch of the frame carries, as far as the display allows --
-- and the closest pair of adjacent-capable roles sits at 17.7 Delta E.
--
-- The frame also put two of its colors closer together than the family's
-- separation floor allows, so the ladder was spread to 5 points of
-- lightness between rungs rather than the three the picture asked for.
-- The order is still the picture's; the spacing is not.

return {
  name = "observatory-io",
  about = "sulfur, ochre and frost, and no blue anywhere",
  floor = 17.7,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#100e07",
  bg_float = "#171509",
  bg_sel = "#2a290e",
  bg_hl = "#3c3613",
  border = "#45421b",
  bg_search = "#58571f",
  nontext = "#3c381e",

  -- the text ladder
  text = "#d1d0cc",
  dim = "#adac97",
  punct = "#a9a593",
  comment = "#79786e",
  lnr = "#676651",
  lnr_cur = "#aaa690",

  -- syntax roles
  str = "#8c744d",
  num = "#f6e978",
  typ = "#d7d1aa",
  mod = "#ded78c",
  prop = "#d7d1aa",
  func = "#8c744d",
  kw = "#dab453",
  op = "#f6e978",
  macro = "#f6e978",
  esc = "#b79656",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#f2bc28",
  info = "#ded78c",
  hint = "#8c744d",
  ok = "#29b16d",
  accent = "#8c744d",
  cursearch = "#dab453",
  subst = "#8c744d",
  match = "#f2bc28",
  title = "#8c744d",
  dir = "#d7d1aa",
  label = "#dab453",
  tag = "#dab453",
  h1 = "#dab453",
  h2 = "#8c744d",
  h3 = "#8c744d",
  h4 = "#d7d1aa",
  h5 = "#ded78c",
  h6 = "#f6e978",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#1e1b05",
  diff_text = "#343109",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#1a1805",
  vt_hint = "#1e1505",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "caldera", hue = 37, chroma = 25.3, cr = 4.72 },
    { key = "ochre", hue = 54, chroma = 56.8, cr = 16.85 },
    { key = "frost", hue = 52, chroma = 20.6, cr = 13.59 },
    { key = "sulfur", hue = 55, chroma = 38.8, cr = 14.20 },
    { key = "flow", hue = 43, chroma = 53.5, cr = 10.63 },
    { key = "vent", hue = 40, chroma = 38.4, cr = 7.51 },
  },
}

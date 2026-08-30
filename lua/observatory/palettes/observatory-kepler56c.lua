-- observatory-kepler56c -- a red giant, and the planet it is about to swallow
--
-- Source: the 2014 release illustrating Kepler-56's fate. The star has begun
-- to expand off the main sequence and will engulf its inner planet in about
-- 130 million years and the next one 25 million years after that, which is the
-- rare case of a planetary system with a known expiry date.
--
-- Image: Kepler-56 c -- artist concept, Harvard-Smithsonian Center for Astrophysics.
-- David A. Aguilar (CfA).
-- Sampled at 3618 x 2652; 100% of the frame carried light.
--
-- This is the brightest frame in the collection: the star fills it, so the
-- sampled colors are the photosphere at different depths, from a white-hot
-- core through saturated yellows into orange at the limb. The palette is
-- therefore a yellow ladder with nothing cool in it at all, and it runs hotter
-- than any of the star schemes derived from spectra, because artwork of a
-- dying star is drawn to look like a furnace.
--
-- Roles follow area, and with a single hue the ladder carries the palette.
--
-- What is in the frame, and the roles it takes:
--
--   limb          hue 341  16.95 contrast   9.5% of frame   types, operators
--   unit_8        hue  43  14.62 contrast   6.4% of frame   escapes
--   star          hue  50  10.90 contrast  31.8% of frame   numbers, macros, imports
--   flare         hue  41   9.06 contrast  16.0% of frame   functions
--   glare         hue  33   7.49 contrast  13.6% of frame   properties
--   haze          hue  27   5.99 contrast   8.4% of frame   keywords
--   ember         hue  35   5.85 contrast   7.9% of frame   strings
--   unit_7        hue  17   4.68 contrast   6.5% of frame   modules
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
-- and the closest pair of adjacent-capable roles sits at 9.2 Delta E.

return {
  name = "observatory-kepler56c",
  about = "a red giant, and the planet it is about to swallow",
  floor = 9.2,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#110e07",
  bg_float = "#181509",
  bg_sel = "#2b280e",
  bg_hl = "#3f3514",
  border = "#48411c",
  bg_search = "#5c5520",
  nontext = "#3f381f",

  -- the text ladder
  text = "#c9c7c0",
  dim = "#aeab99",
  punct = "#9b937d",
  comment = "#807d67",
  lnr = "#6a6651",
  lnr_cur = "#aca690",

  -- syntax roles
  str = "#c47406",
  num = "#dcb808",
  typ = "#fedfe9",
  mod = "#d34711",
  prop = "#e48207",
  func = "#e29d07",
  kw = "#dc6708",
  op = "#fedfe9",
  macro = "#dcb808",
  esc = "#e8d6a8",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#d34711",
  hint = "#c47406",
  ok = "#29b16d",
  accent = "#e29d07",
  cursearch = "#dc6708",
  subst = "#c47406",
  match = "#edc24a",
  title = "#e29d07",
  dir = "#fedfe9",
  label = "#dc6708",
  tag = "#dc6708",
  h1 = "#dc6708",
  h2 = "#e29d07",
  h3 = "#c47406",
  h4 = "#fedfe9",
  h5 = "#d34711",
  h6 = "#dcb808",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#301308",
  diff_text = "#52210e",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#2a1107",
  vt_hint = "#1e1405",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "ember", hue = 35, chroma = 67.1, cr = 5.85 },
    { key = "star", hue = 50, chroma = 76.9, cr = 10.90 },
    { key = "limb", hue = 341, chroma = 12.3, cr = 16.95 },
    { key = "unit_7", hue = 17, chroma = 77.6, cr = 4.68 },
    { key = "glare", hue = 33, chroma = 75.7, cr = 7.49 },
    { key = "flare", hue = 41, chroma = 74.7, cr = 9.06 },
    { key = "haze", hue = 27, chroma = 76.3, cr = 5.99 },
    { key = "unit_8", hue = 43, chroma = 25.0, cr = 14.62 },
  },
}

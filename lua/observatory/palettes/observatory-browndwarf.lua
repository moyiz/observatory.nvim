-- observatory-browndwarf -- not a star, not a planet: a red monochrome
--
-- Source: NASA/JPL-Caltech's concept art for the WISE brown dwarf survey
-- (PIA14722), showing the L, T and Y classes side by side. Brown dwarfs are
-- the objects that failed to become stars -- too light to fuse hydrogen -- and
-- the coolest known are at room temperature, which is why WISE, an infrared
-- survey, is what found them.
--
-- Image: Brown dwarfs of types L, T and Y -- artist concept from WISE (PIA14722).
-- NASA/JPL-Caltech.
-- Sampled at 6000 x 3000; 27% of the frame carried light.
--
-- Every illustration of one is red, and this one is 66 per cent a single red:
-- what a body radiating mostly beyond the visible looks like when an artist
-- renders the little that leaks into it. The rest is deeper crimson and
-- magenta banding, one small gray for the field, and a violet night side. So
-- this is the most single-minded palette in the collection -- a red
-- monochrome, separated by lightness and purity, with hue doing almost no
-- work at all.
--
-- Roles follow area, which with two thirds of the frame in one color means
-- that color takes strings, functions and keywords together.
--
-- What is in the frame, and the roles it takes:
--
--   clouds        hue  13  16.95 contrast   3.5% of frame   functions
--   deep          hue   6  12.59 contrast   2.3% of frame   escapes
--   night         hue 344  12.02 contrast  11.4% of frame   properties
--   surface       hue   4  10.15 contrast  48.1% of frame   operators, macros, imports, modules
--   bands         hue 337   7.50 contrast  15.0% of frame   strings
--   star          hue 272   5.97 contrast  11.9% of frame   types, numbers
--   limb          hue 352   4.70 contrast   7.9% of frame   keywords
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
-- and the closest pair of adjacent-capable roles sits at 15.8 Delta E.
--
-- 1 of the 8 colors sampled from the frame were folded into their
-- nearest neighbour rather than kept: at this subject's hue span there is
-- not enough lightness left to hold that many apart at the family's
-- separation floor, and two colors a reader cannot distinguish are one
-- color. The folded share went to the neighbour, so the proportions of
-- the frame are still what the roles follow.
--
-- The frame also put two of its colors closer together than the family's
-- separation floor allows, so the ladder was spread to 9 points of
-- lightness between rungs rather than the three the picture asked for.
-- The order is still the picture's; the spacing is not.

return {
  name = "observatory-browndwarf",
  about = "not a star, not a planet: a red monochrome",
  floor = 15.8,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#190b0b",
  bg_float = "#240f0e",
  bg_sel = "#431c16",
  bg_hl = "#611f1f",
  border = "#6c2e2a",
  bg_search = "#8b3d31",
  nontext = "#562b2b",

  -- the text ladder
  text = "#c7c2c2",
  dim = "#b8a7a5",
  punct = "#b59999",
  comment = "#847573",
  lnr = "#7b5f5c",
  lnr_cur = "#b9a09f",

  -- syntax roles
  str = "#dc7da2",
  num = "#9581a6",
  typ = "#9581a6",
  mod = "#f99b95",
  prop = "#fdaec3",
  func = "#fde1d9",
  kw = "#af606a",
  op = "#f99b95",
  macro = "#f99b95",
  esc = "#f3bbb5",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#f99b95",
  hint = "#dc7da2",
  ok = "#29b16d",
  accent = "#fde1d9",
  cursearch = "#af606a",
  subst = "#dc7da2",
  match = "#edc24a",
  title = "#fde1d9",
  dir = "#9581a6",
  label = "#af606a",
  tag = "#af606a",
  h1 = "#af606a",
  h2 = "#fde1d9",
  h3 = "#dc7da2",
  h4 = "#9581a6",
  h5 = "#f99b95",
  h6 = "#9581a6",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#370d0a",
  diff_text = "#5c1510",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#310b09",
  vt_hint = "#2d0817",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "bands", hue = 337, chroma = 41.3, cr = 7.50 },
    { key = "star", hue = 272, chroma = 22.5, cr = 5.97 },
    { key = "surface", hue = 4, chroma = 38.9, cr = 10.15 },
    { key = "night", hue = 344, chroma = 31.8, cr = 12.02 },
    { key = "clouds", hue = 13, chroma = 11.2, cr = 16.95 },
    { key = "limb", hue = 352, chroma = 34.2, cr = 4.70 },
    { key = "deep", hue = 6, chroma = 22.1, cr = 12.59 },
  },
}

-- observatory-uranus -- featureless pale cyan, and that is the observation
--
-- Source: Voyager 2's 1986 approach, color-calibrated. Voyager arrived at
-- the one moment in an eighty-four-year orbit when the southern hemisphere
-- faced the sun continuously and the atmosphere was at its least disturbed, so
-- the most famous portrait of Uranus is a portrait of nothing happening.
--
-- Image: Uranus -- Voyager 2, ISS, 1986.
-- NASA/JPL-Caltech.
-- Sampled at 830 x 830; 54% of the frame carried light.
--
-- Methane absorbs red light, which leaves the cyan-green everyone recognises,
-- and there is almost nothing else in the frame: the sampled colors differ
-- from one another mostly in brightness and cover a fifty-degree hue span
-- entirely within cyan. So the scheme is a cool near-monochrome, and reads as
-- calm for the same reason the planet does.
--
-- Roles follow area.
--
-- What is in the frame, and the roles it takes:
--
--   disc          hue 200  16.90 contrast  54.8% of frame   strings, numbers, macros, imports
--   haze          hue 200  12.56 contrast  27.9% of frame   properties, keywords, operators
--   limb          hue 197   7.66 contrast  14.8% of frame   functions, modules, escapes
--   shade         hue 160   4.70 contrast   2.5% of frame   types
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
-- and the closest pair of adjacent-capable roles sits at 16.2 Delta E.
--
-- The frame is faint: its colors average 9 chroma, where a palette
-- needs something nearer twenty-six to keep ten kinds of token apart.
-- So all of them were scaled by 3.0, uniformly. Every hue, every ratio
-- between the colors and every proportion of the frame is the picture's;
-- only the overall saturation is the display's, in the way that a print of
-- a photograph has its own.
--
-- 2 of the 6 colors sampled from the frame were folded into their
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
  name = "observatory-uranus",
  about = "featureless pale cyan, and that is the observation",
  floor = 16.2,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#080f12",
  bg_float = "#0b161d",
  bg_sel = "#132b3a",
  bg_hl = "#163947",
  border = "#224457",
  bg_search = "#2a5979",
  nontext = "#223b45",

  -- the text ladder
  text = "#c3c8ca",
  dim = "#9fadb4",
  punct = "#949c9f",
  comment = "#637c8c",
  lnr = "#4d6877",
  lnr_cur = "#95a9b2",

  -- syntax roles
  str = "#c9ecfd",
  num = "#c9ecfd",
  typ = "#4e8170",
  mod = "#62a5c0",
  prop = "#81d2fc",
  func = "#62a5c0",
  kw = "#81d2fc",
  op = "#81d2fc",
  macro = "#c9ecfd",
  esc = "#62a5c0",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#62a5c0",
  hint = "#c9ecfd",
  ok = "#29b16d",
  accent = "#62a5c0",
  cursearch = "#81d2fc",
  subst = "#c9ecfd",
  match = "#edc24a",
  title = "#62a5c0",
  dir = "#4e8170",
  label = "#81d2fc",
  tag = "#81d2fc",
  h1 = "#81d2fc",
  h2 = "#62a5c0",
  h3 = "#c9ecfd",
  h4 = "#4e8170",
  h5 = "#62a5c0",
  h6 = "#c9ecfd",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#071e27",
  diff_text = "#0c3343",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#061b23",
  vt_hint = "#061821",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "disc", hue = 200, chroma = 14.3, cr = 16.90 },
    { key = "shade", hue = 160, chroma = 21.7, cr = 4.70 },
    { key = "limb", hue = 197, chroma = 24.7, cr = 7.66 },
    { key = "haze", hue = 200, chroma = 31.4, cr = 12.56 },
  },
}

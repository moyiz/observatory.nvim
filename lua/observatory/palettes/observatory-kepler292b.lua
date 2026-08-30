-- observatory-kepler292b -- a super-Earth as an ocean world, in teal and sea green
--
-- Source: NASA/JPL-Caltech's concept of Kepler-22 b, standing in for
-- Kepler-292 b. The planet is real -- 1.8 Earth radii, a 2.6-day orbit, from
-- Kepler's fourth-year release -- but no artist has drawn it, and the
-- catalogue's own super-Earth placeholder is a gray frame shared with every
-- other planet of the size, which produced three identical palettes.
-- Kepler-22 b is drawn as the class is imagined: water, cloud, nothing else.
--
-- Image: Kepler-292 b -- artist concept of Kepler-22b, NASA/JPL-Caltech (PIA14883).
-- NASA/JPL-Caltech/Ames.
-- Sampled at 4096 x 3072; 20% of the frame carried light.
--
-- Teal and sea green over five sixths of the lit frame, deepening to a near
-- black-blue where the ocean is unlit, and the starfield behind it dark enough
-- to contribute nothing. So this is the coolest and most single-minded of the
-- exoplanet palettes: one hue family, separated by depth rather than by
-- color, which is what an ocean world offers.
--
-- Roles follow area.
--
-- What is in the frame, and the roles it takes:
--
--   ocean         hue 187  16.91 contrast  49.1% of frame   functions, properties, modules
--   shelf         hue 184  10.34 contrast  35.4% of frame   strings
--   deep          hue 208   8.01 contrast   2.8% of frame   numbers
--   shadow        hue 200   4.73 contrast   5.6% of frame   types, macros, imports
--   abyss         hue 214   4.67 contrast   7.1% of frame   keywords, operators, escapes
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
-- and the closest pair of adjacent-capable roles sits at 17.6 Delta E.
--
-- The frame is faint: its colors average 17 chroma, where a palette
-- needs something nearer twenty-six to keep ten kinds of token apart.
-- So all of them were scaled by 1.6, uniformly. Every hue, every ratio
-- between the colors and every proportion of the frame is the picture's;
-- only the overall saturation is the display's, in the way that a print of
-- a photograph has its own.
--
-- 1 of the 6 colors sampled from the frame were folded into their
-- nearest neighbour rather than kept: at this subject's hue span there is
-- not enough lightness left to hold that many apart at the family's
-- separation floor, and two colors a reader cannot distinguish are one
-- color. The folded share went to the neighbour, so the proportions of
-- the frame are still what the roles follow.

return {
  name = "observatory-kepler292b",
  about = "a super-Earth as an ocean world, in teal and sea green",
  floor = 17.6,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#070f10",
  bg_float = "#0a1819",
  bg_sel = "#102b31",
  bg_hl = "#133b3c",
  border = "#1d474c",
  bg_search = "#245b67",
  nontext = "#1e3c3e",

  -- the text ladder
  text = "#ccd1d1",
  dim = "#9caeb1",
  punct = "#98a2a2",
  comment = "#5d7e83",
  lnr = "#486b6f",
  lnr_cur = "#8eabae",

  -- syntax roles
  str = "#78c2c7",
  num = "#6ba5d9",
  typ = "#387fa3",
  mod = "#a9f3fc",
  prop = "#a9f3fc",
  func = "#a9f3fc",
  kw = "#4478bd",
  op = "#4478bd",
  macro = "#387fa3",
  esc = "#4478bd",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#a9f3fc",
  hint = "#78c2c7",
  ok = "#29b16d",
  accent = "#a9f3fc",
  cursearch = "#4478bd",
  subst = "#78c2c7",
  match = "#edc24a",
  title = "#a9f3fc",
  dir = "#387fa3",
  label = "#4478bd",
  tag = "#4478bd",
  h1 = "#4478bd",
  h2 = "#a9f3fc",
  h3 = "#78c2c7",
  h4 = "#387fa3",
  h5 = "#a9f3fc",
  h6 = "#6ba5d9",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#061f21",
  diff_text = "#0a343a",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#051b1d",
  vt_hint = "#05181a",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "shelf", hue = 184, chroma = 23.8, cr = 10.34 },
    { key = "deep", hue = 208, chroma = 32.5, cr = 8.01 },
    { key = "shadow", hue = 200, chroma = 27.9, cr = 4.73 },
    { key = "ocean", hue = 187, chroma = 23.6, cr = 16.91 },
    { key = "abyss", hue = 214, chroma = 41.7, cr = 4.67 },
  },
}

-- observatory-kepler438b -- a superflare sterilising a habitable-zone planet
--
-- Source: the 2015 superflare artwork. Kepler-438 b was announced as one of
-- the most Earth-like planets known by radius and insolation, and then the same
-- year its star was found to erupt with superflares every few hundred days,
-- which would strip an unmagnetised atmosphere. The illustration is of that
-- second result rather than the first.
--
-- Image: Kepler-438 b -- artist impression, University of Warwick.
-- Mark A. Garlick / University of Warwick.
-- Sampled at 1023 x 1365; 39% of the frame carried light.
--
-- The frame is red from edge to edge: flare red over a third of it, oxblood
-- in the shadows, and a salmon where the planet's day side catches the blast.
-- It is the most saturated of the exoplanet frames and among the most saturated
-- anywhere in the collection, so the palette is a single hot hue at nine
-- strengths, which is what the picture is.
--
-- Roles follow area over the eight largest of nine sampled colors.
--
-- What is in the frame, and the roles it takes:
--
--   oxblood       hue  22  16.62 contrast   4.0% of frame   escapes
--   flare         hue   7  13.03 contrast  30.0% of frame   properties, numbers, modules
--   glow          hue  19  11.65 contrast  29.3% of frame   functions, operators, macros, imports
--   ember         hue 359   8.39 contrast  25.1% of frame   strings
--   blaze         hue 355   4.69 contrast  11.6% of frame   keywords, types
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
-- and the closest pair of adjacent-capable roles sits at 16.5 Delta E.
--
-- 3 of the 8 colors sampled from the frame were folded into their
-- nearest neighbour rather than kept: at this subject's hue span there is
-- not enough lightness left to hold that many apart at the family's
-- separation floor, and two colors a reader cannot distinguish are one
-- color. The folded share went to the neighbour, so the proportions of
-- the frame are still what the roles follow.
--
-- The frame also put two of its colors closer together than the family's
-- separation floor allows, so the ladder was spread to 7 points of
-- lightness between rungs rather than the three the picture asked for.
-- The order is still the picture's; the spacing is not.

return {
  name = "observatory-kepler438b",
  about = "a superflare sterilising a habitable-zone planet",
  floor = 16.5,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#180b0a",
  bg_float = "#23100d",
  bg_sel = "#401e15",
  bg_hl = "#5f211e",
  border = "#693029",
  bg_search = "#87402f",
  nontext = "#552c2a",

  -- the text ladder
  text = "#cac6c5",
  dim = "#b8a7a4",
  punct = "#a19898",
  comment = "#8f716c",
  lnr = "#7b5e5b",
  lnr_cur = "#b9a09e",

  -- syntax roles
  str = "#ea888a",
  num = "#fdbcb4",
  typ = "#b75b62",
  mod = "#fdbcb4",
  prop = "#fdbcb4",
  func = "#fcaf8c",
  kw = "#b75b62",
  op = "#fcaf8c",
  macro = "#fcaf8c",
  esc = "#fddfce",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#fdbcb4",
  hint = "#ea888a",
  ok = "#29b16d",
  accent = "#fcaf8c",
  cursearch = "#b75b62",
  subst = "#ea888a",
  match = "#edc24a",
  title = "#fcaf8c",
  dir = "#b75b62",
  label = "#b75b62",
  tag = "#b75b62",
  h1 = "#b75b62",
  h2 = "#fcaf8c",
  h3 = "#ea888a",
  h4 = "#b75b62",
  h5 = "#fdbcb4",
  h6 = "#fdbcb4",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#350e09",
  diff_text = "#5a1810",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#2f0d08",
  vt_hint = "#300809",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "ember", hue = 359, chroma = 40.5, cr = 8.39 },
    { key = "flare", hue = 7, chroma = 26.0, cr = 13.03 },
    { key = "blaze", hue = 355, chroma = 40.1, cr = 4.69 },
    { key = "glow", hue = 19, chroma = 37.9, cr = 11.65 },
    { key = "oxblood", hue = 22, chroma = 14.4, cr = 16.62 },
  },
}

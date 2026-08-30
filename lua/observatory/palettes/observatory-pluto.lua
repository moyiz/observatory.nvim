-- observatory-pluto -- the heart, in cream and tholin tan
--
-- Source: New Horizons' true-color portrait from 14 July 2015, assembled
-- from LORRI detail and Ralph color. It arrived after a nine-and-a-half-year
-- crossing and had six hours of close approach; this is the frame that turned
-- a smudge in a survey plate into a world with a nitrogen glacier on it.
--
-- Image: Pluto -- New Horizons, LORRI and Ralph/MVIC, July 2015.
-- NASA/JHUAPL/SwRI.
-- Sampled at 8000 x 8000; 56% of the frame carried light.
--
-- Pluto's colors span five degrees of hue, the narrowest of anything in the
-- collection: the whole disc is tholin, the reddish organic residue that
-- ultraviolet light makes out of methane, at different depths. Sputnik Planitia
-- -- the left lobe of the heart -- is nitrogen ice bright enough to lift the
-- top of the ladder, and the dark equatorial band called Cthulhu Macula sits
-- at the bottom of it. Everything between is one color at different strengths.
--
-- Roles follow area, which makes this a lightness palette with a single hue,
-- as the picture is.
--
-- What is in the frame, and the roles it takes:
--
--   heart         hue  35  16.87 contrast  69.0% of frame   strings, properties, macros, imports
--   plain         hue  36  12.11 contrast  27.1% of frame   functions, keywords, numbers
--   bright        hue  32   7.38 contrast   2.1% of frame   types
--   glare         hue  32   4.73 contrast   1.8% of frame   operators, modules, escapes
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
-- and the closest pair of adjacent-capable roles sits at 18.1 Delta E.
--
-- The frame is faint: its colors average 9 chroma, where a palette
-- needs something nearer twenty-six to keep ten kinds of token apart.
-- So all of them were scaled by 2.8, uniformly. Every hue, every ratio
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
  name = "observatory-pluto",
  about = "the heart, in cream and tholin tan",
  floor = 18.1,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#130d08",
  bg_float = "#1a140a",
  bg_sel = "#312610",
  bg_hl = "#483117",
  border = "#523d20",
  bg_search = "#695125",
  nontext = "#453522",

  -- the text ladder
  text = "#d2d0cc",
  dim = "#b2aa9d",
  punct = "#b0a292",
  comment = "#7c7770",
  lnr = "#706350",
  lnr_cur = "#b1a493",

  -- syntax roles
  str = "#fbe3c2",
  num = "#efbc72",
  typ = "#ba9263",
  mod = "#a76a26",
  prop = "#fbe3c2",
  func = "#efbc72",
  kw = "#efbc72",
  op = "#a76a26",
  macro = "#fbe3c2",
  esc = "#a76a26",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#a76a26",
  hint = "#fbe3c2",
  ok = "#29b16d",
  accent = "#efbc72",
  cursearch = "#efbc72",
  subst = "#fbe3c2",
  match = "#edc24a",
  title = "#efbc72",
  dir = "#ba9263",
  label = "#efbc72",
  tag = "#efbc72",
  h1 = "#efbc72",
  h2 = "#efbc72",
  h3 = "#fbe3c2",
  h4 = "#ba9263",
  h5 = "#a76a26",
  h6 = "#efbc72",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#281807",
  diff_text = "#44290c",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#231506",
  vt_hint = "#1e1405",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "heart", hue = 35, chroma = 19.4, cr = 16.87 },
    { key = "plain", hue = 36, chroma = 45.2, cr = 12.11 },
    { key = "bright", hue = 32, chroma = 31.9, cr = 7.38 },
    { key = "glare", hue = 32, chroma = 49.8, cr = 4.73 },
  },
}

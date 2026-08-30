-- observatory-kepler1275b -- a frozen super-Earth in russet, at the edge of the light
--
-- Source: ESO's impression of the super-Earth around Barnard's Star, standing
-- in for Kepler-1275 b. Kepler-1275 b is a validated planet from the 2016
-- catalogue, about twice Earth's radius on a ten-day orbit, with nothing
-- attached to it but the class placeholder; the Barnard's Star candidate is the
-- best-known drawing of a cold super-Earth, which is what this class looks like
-- once it is far enough out.
--
-- Image: Kepler-1275 b -- artist impression of Barnard's Star b, ESO (eso1837b).
-- ESO/M. Kornmesser.
-- Sampled at 1280 x 804; 5% of the frame carried light.
--
-- This is the darkest frame in the batch -- about a twentieth of it clears the
-- sampler's floor -- and all of it is one russet hue near 25 degrees, from a lit
-- crust down to a near-black night side. The dwarf star low in the frame
-- supplies the two bright colors. Separation is almost entirely by lightness,
-- as it is in the picture.
--
-- Roles follow area.
--
-- What is in the frame, and the roles it takes:
--
--   highland      hue  54  16.86 contrast   5.5% of frame   keywords, operators
--   lowland       hue  36  13.80 contrast   4.8% of frame   types, macros, imports
--   crust         hue  26   7.40 contrast  52.2% of frame   functions, properties, numbers, modules, escapes
--   night         hue  23   4.70 contrast  37.4% of frame   strings
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
-- and the closest pair of adjacent-capable roles sits at 9.8 Delta E.
--
-- The frame is faint: its colors average 21 chroma, where a palette
-- needs something nearer twenty-six to keep ten kinds of token apart.
-- So all of them were scaled by 1.2, uniformly. Every hue, every ratio
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
-- separation floor allows, so the ladder was spread to 12 points of
-- lightness between rungs rather than the three the picture asked for.
-- The order is still the picture's; the spacing is not.

return {
  name = "observatory-kepler1275b",
  about = "a frozen super-Earth in russet, at the edge of the light",
  floor = 9.8,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#140c08",
  bg_float = "#1d130b",
  bg_sel = "#362412",
  bg_hl = "#4f2d19",
  border = "#593a22",
  bg_search = "#724c28",
  nontext = "#4b3225",

  -- the text ladder
  text = "#cbc6c3",
  dim = "#b5a9a1",
  punct = "#a88f82",
  comment = "#8b7869",
  lnr = "#756153",
  lnr_cur = "#b5a398",

  -- syntax roles
  str = "#a56943",
  num = "#c18f6a",
  typ = "#e7cea9",
  mod = "#c18f6a",
  prop = "#c18f6a",
  func = "#c18f6a",
  kw = "#ede8bb",
  op = "#ede8bb",
  macro = "#e7cea9",
  esc = "#c18f6a",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#c18f6a",
  hint = "#a56943",
  ok = "#29b16d",
  accent = "#c18f6a",
  cursearch = "#ede8bb",
  subst = "#a56943",
  match = "#edc24a",
  title = "#c18f6a",
  dir = "#e7cea9",
  label = "#ede8bb",
  tag = "#ede8bb",
  h1 = "#ede8bb",
  h2 = "#c18f6a",
  h3 = "#a56943",
  h4 = "#e7cea9",
  h5 = "#c18f6a",
  h6 = "#c18f6a",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#2b1608",
  diff_text = "#4a270d",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#251407",
  vt_hint = "#231106",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "night", hue = 23, chroma = 37.0, cr = 4.70 },
    { key = "crust", hue = 26, chroma = 30.6, cr = 7.40 },
    { key = "lowland", hue = 36, chroma = 21.9, cr = 13.80 },
    { key = "highland", hue = 54, chroma = 23.2, cr = 16.86 },
  },
}

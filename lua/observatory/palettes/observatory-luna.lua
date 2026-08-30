-- observatory-luna -- the full moon: five grays and a warm cast
--
-- Source: a ground-based telescope photograph of the full moon, 2010. The
-- full phase is the one everybody knows and the worst one for relief: with the
-- sun directly behind the observer nothing casts a shadow, so the disc is read
-- entirely by albedo, bright highlands against the dark basalt of the maria.
--
-- Image: The Moon -- ground-based telescope, 2010.
-- Gregory H. Revera (CC BY-SA 3.0).
-- Sampled at 2580 x 2452; 57% of the frame carried light.
--
-- The Moon is gray. It is a warm gray rather than a neutral one, by about a
-- point of chroma, and that point is all the hue this scheme has. The pale
-- path lifts it until the warmth is visible and holds every color well under
-- the ceiling the colorful schemes use, so the result stays recognisably a
-- photograph of the Moon rather than a sepia print of one.
--
-- Roles follow area. Lightness does most of the separating here, as it does in
-- the frame.
--
-- What is in the frame, and the roles it takes:
--
--   bright        hue  14  16.85 contrast  15.5% of frame   properties, macros, imports
--   highland      hue  25  12.10 contrast  69.4% of frame   strings, functions
--   mare          hue  60   8.46 contrast   8.7% of frame   types, numbers, modules, escapes
--   shadow        hue   0   5.65 contrast   6.4% of frame   keywords, operators
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
-- and the closest pair of adjacent-capable roles sits at 11.1 Delta E.
--
-- The frame is faint: its colors average 1 chroma, where a palette
-- needs something nearer twenty-six to keep ten kinds of token apart.
-- So all of them were scaled by 6.0, uniformly. Every hue, every ratio
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
  name = "observatory-luna",
  about = "the full moon: five grays and a warm cast",
  floor = 11.1,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#140d08",
  bg_float = "#1c140b",
  bg_sel = "#342511",
  bg_hl = "#4c2e18",
  border = "#563b21",
  bg_search = "#6d4f26",
  nontext = "#483324",

  -- the text ladder
  text = "#cac7c3",
  dim = "#b4a99f",
  punct = "#a59081",
  comment = "#847665",
  lnr = "#736252",
  lnr_cur = "#b3a496",

  -- syntax roles
  str = "#d9c0ae",
  num = "#a5a59b",
  typ = "#a5a59b",
  mod = "#a5a59b",
  prop = "#f3e3de",
  func = "#d9c0ae",
  kw = "#8d8282",
  op = "#8d8282",
  macro = "#f3e3de",
  esc = "#a5a59b",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#a5a59b",
  hint = "#d9c0ae",
  ok = "#29b16d",
  accent = "#d9c0ae",
  cursearch = "#8d8282",
  subst = "#d9c0ae",
  match = "#edc24a",
  title = "#d9c0ae",
  dir = "#a5a59b",
  label = "#8d8282",
  tag = "#8d8282",
  h1 = "#8d8282",
  h2 = "#d9c0ae",
  h3 = "#d9c0ae",
  h4 = "#a5a59b",
  h5 = "#a5a59b",
  h6 = "#a5a59b",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#1c1c05",
  diff_text = "#323209",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#191904",
  vt_hint = "#231206",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "highland", hue = 25, chroma = 13.7, cr = 12.10 },
    { key = "mare", hue = 60, chroma = 5.5, cr = 8.46 },
    { key = "bright", hue = 14, chroma = 6.4, cr = 16.85 },
    { key = "shadow", hue = 0, chroma = 4.4, cr = 5.65 },
  },
}

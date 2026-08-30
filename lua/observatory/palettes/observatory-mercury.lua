-- observatory-mercury -- the enhanced-color globe: tan crust, blue minerals, gold plains
--
-- Source: MESSENGER's color base map, assembled from eight narrow-band
-- filters over four years in orbit. To the eye Mercury is a gray ball; the
-- color here is real reflectance stretched until mineralogy separates, which
-- is how the mission mapped a crust nobody could sort by brightness alone.
--
-- Image: Mercury -- MESSENGER, MDIS color base map.
-- NASA/Johns Hopkins University APL/Carnegie Institution of Washington.
-- Sampled at 1920 x 1080; 38% of the frame carried light.
--
-- Every published Mercury that anyone recognises is this one, so the palette
-- follows it rather than the gray a calibrated radiometer would report: warm
-- tans for the old cratered crust, a slate blue for the low-reflectance
-- material dug up by impacts, and gold for the smooth volcanic plains. The
-- frame is eleven sampled colors wide, more than any other world here, which
-- is the whole reason the enhanced version exists.
--
-- Roles follow area.
--
-- What is in the frame, and the roles it takes:
--
--   regolith      hue  49  16.90 contrast   9.8% of frame   macros, imports
--   basin         hue 175  15.61 contrast   3.2% of frame   strings, functions
--   highland      hue  35  10.87 contrast   7.3% of frame   modules
--   plains        hue  31  10.23 contrast  22.3% of frame   types, numbers
--   mineral       hue  30   8.70 contrast  18.9% of frame   properties
--   volcanic      hue 232   7.81 contrast  16.8% of frame   operators
--   lowland       hue 286   6.09 contrast  16.2% of frame   keywords
--   ray           hue 231   4.74 contrast   5.6% of frame   escapes
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
-- and the closest pair of adjacent-capable roles sits at 9.5 Delta E.
--
-- The frame is faint: its colors average 16 chroma, where a palette
-- needs something nearer twenty-six to keep ten kinds of token apart.
-- So all of them were scaled by 1.6, uniformly. Every hue, every ratio
-- between the colors and every proportion of the frame is the picture's;
-- only the overall saturation is the display's, in the way that a print of
-- a photograph has its own.

return {
  name = "observatory-mercury",
  about = "the enhanced-color globe: tan crust, blue minerals, gold plains",
  floor = 9.5,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#130d08",
  bg_float = "#1b130a",
  bg_sel = "#332511",
  bg_hl = "#4b2f18",
  border = "#543c21",
  bg_search = "#6b5026",
  nontext = "#473323",

  -- the text ladder
  text = "#cac7c2",
  dim = "#b3a99e",
  punct = "#a4907f",
  comment = "#887a67",
  lnr = "#726251",
  lnr_cur = "#b2a395",

  -- syntax roles
  str = "#aaeae5",
  num = "#ceb08f",
  typ = "#ceb08f",
  mod = "#edaf57",
  prop = "#cc9e71",
  func = "#aaeae5",
  kw = "#9c81a4",
  op = "#939bcd",
  macro = "#f7e7a1",
  esc = "#6271cb",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#edaf57",
  hint = "#aaeae5",
  ok = "#29b16d",
  accent = "#aaeae5",
  cursearch = "#9c81a4",
  subst = "#aaeae5",
  match = "#edc24a",
  title = "#aaeae5",
  dir = "#ceb08f",
  label = "#9c81a4",
  tag = "#9c81a4",
  h1 = "#9c81a4",
  h2 = "#aaeae5",
  h3 = "#aaeae5",
  h4 = "#ceb08f",
  h5 = "#edaf57",
  h6 = "#ceb08f",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#251907",
  diff_text = "#422b0c",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#211506",
  vt_hint = "#051a18",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "basin", hue = 175, chroma = 21.4, cr = 15.61 },
    { key = "plains", hue = 31, chroma = 21.8, cr = 10.23 },
    { key = "highland", hue = 35, chroma = 54.7, cr = 10.87 },
    { key = "mineral", hue = 30, chroma = 32.1, cr = 8.70 },
    { key = "lowland", hue = 286, chroma = 22.4, cr = 6.09 },
    { key = "volcanic", hue = 232, chroma = 27.9, cr = 7.81 },
    { key = "regolith", hue = 49, chroma = 36.4, cr = 16.90 },
    { key = "ray", hue = 231, chroma = 52.4, cr = 4.74 },
  },
}

-- observatory-earth -- ocean, vegetation, desert, ice
--
-- Source: Blue Marble Next Generation, the flat map -- a cloud-free composite
-- of MODIS observations from Terra over the month of December 2004, with ocean
-- color from bathymetry rather than from the sensor. It is the version that
-- ships as a wallpaper on half the devices sold, which makes it the picture of
-- Earth most people have actually looked at.
--
-- Image: Earth -- Terra MODIS, cloud-free composite with bathymetry.
-- NASA Earth Observatory / Reto Stockli.
-- Sampled at 5400 x 2700; 51% of the frame carried light.
--
-- The famous frame is Apollo 17's, and it was tried first and abandoned: three
-- quarters of that disc is cloud and atmospheric haze, Africa reads as dusty
-- rose under it, and the frame contains no green whatsoever. A palette derived
-- faithfully from it is a set of pale blues, which is honest about the
-- photograph and wrong about the planet. The cloud-free composite has the four
-- colors anyone naming a scheme after Earth is looking for: deep ocean blue,
-- vegetation green, desert tan and polar ice.
--
-- Ice takes the largest share of the weighted frame and is close enough to
-- neutral that it furnishes the chrome instead of a syntax role, which leaves
-- the ocean, the two land tones and the vegetation to dress the code.
--
-- What is in the frame, and the roles it takes:
--
--   ice           hue 199  16.87 contrast  70.3% of frame   strings, functions
--   desert        hue  34  10.43 contrast   6.9% of frame   keywords, operators, escapes
--   scrub         hue  40   7.94 contrast   5.7% of frame   numbers, macros, imports
--   ocean         hue 216   5.69 contrast  13.2% of frame   properties
--   forest        hue  73   5.62 contrast   3.2% of frame   types
--   shelf         hue 211   4.73 contrast   0.8% of frame   modules
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
-- and the closest pair of adjacent-capable roles sits at 9.6 Delta E.
--
-- The frame is faint: its colors average 9 chroma, where a palette
-- needs something nearer twenty-six to keep ten kinds of token apart.
-- So all of them were scaled by 2.2, uniformly. Every hue, every ratio
-- between the colors and every proportion of the frame is the picture's;
-- only the overall saturation is the display's, in the way that a print of
-- a photograph has its own.

return {
  name = "observatory-earth",
  about = "ocean, vegetation, desert, ice",
  floor = 9.6,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#081012",
  bg_float = "#0b171c",
  bg_sel = "#132b3a",
  bg_hl = "#163a46",
  border = "#214556",
  bg_search = "#2a5979",
  nontext = "#223b45",

  -- the text ladder
  text = "#c2c7ca",
  dim = "#9fadb3",
  punct = "#7999a5",
  comment = "#65808f",
  lnr = "#4d6977",
  lnr_cur = "#95a9b2",

  -- syntax roles
  str = "#c8ecfd",
  num = "#ba9b5e",
  typ = "#7b8b43",
  mod = "#2c79ce",
  prop = "#3182f9",
  func = "#c8ecfd",
  kw = "#eea950",
  op = "#eea950",
  macro = "#ba9b5e",
  esc = "#eea950",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#2c79ce",
  hint = "#c8ecfd",
  ok = "#29b16d",
  accent = "#c8ecfd",
  cursearch = "#eea950",
  subst = "#c8ecfd",
  match = "#edc24a",
  title = "#c8ecfd",
  dir = "#7b8b43",
  label = "#eea950",
  tag = "#eea950",
  h1 = "#eea950",
  h2 = "#c8ecfd",
  h3 = "#c8ecfd",
  h4 = "#7b8b43",
  h5 = "#2c79ce",
  h6 = "#ba9b5e",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#091c30",
  diff_text = "#0f3155",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#08182b",
  vt_hint = "#061821",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "ice", hue = 199, chroma = 14.6, cr = 16.87 },
    { key = "scrub", hue = 40, chroma = 36.3, cr = 7.94 },
    { key = "forest", hue = 73, chroma = 40.2, cr = 5.62 },
    { key = "shelf", hue = 211, chroma = 51.0, cr = 4.73 },
    { key = "ocean", hue = 216, chroma = 68.6, cr = 5.69 },
    { key = "desert", hue = 34, chroma = 57.2, cr = 10.43 },
  },
}

-- observatory-hd157172b -- a hot Jupiter being eaten, and the star doing it
--
-- Source: ESA/Hubble's impression of WASP-12 b, standing in for HD 157172 b.
-- HD 157172 b has no catalogue page and no artwork anywhere -- it is a giant
-- planet around a G-type star, found by radial velocity, and nobody has drawn
-- it. WASP-12 b is the hot Jupiter close enough to its star to be pulled into
-- an egg shape and stripped, and the frame is mostly the star.
--
-- Image: HD 157172 b -- artist impression of WASP-12b, ESA/Hubble (heic1714a).
-- NASA, ESA, and G. Bacon (STScI).
-- Sampled at 1280 x 1024; 52% of the frame carried light.
--
-- Which makes this the yellowest palette in the collection, and deliberately so:
-- four fifths of the lit frame is photosphere between 57 and 63 degrees of hue,
-- and the planet itself is drawn as the darkest known world, contributing almost
-- nothing. The ladder is therefore a single yellow separated by brightness, with
-- the sunspot umbra at the bottom of it.
--
-- Roles follow area over the eight largest of ten sampled colors.
--
-- What is in the frame, and the roles it takes:
--
--   star          hue  59  15.04 contrast  27.3% of frame   numbers, macros, imports
--   core          hue  59  13.98 contrast  21.7% of frame   strings, functions
--   photosphere   hue  57  12.86 contrast  25.5% of frame   properties, operators
--   rim           hue  63   6.97 contrast  14.3% of frame   types, modules
--   halo          hue  56   4.75 contrast   6.7% of frame   keywords
--   veil          hue  43   4.67 contrast   4.5% of frame   escapes
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
-- and the closest pair of adjacent-capable roles sits at 16.7 Delta E.
--
-- 2 of the 8 colors sampled from the frame were folded into their
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
  name = "observatory-hd157172b",
  about = "a hot Jupiter being eaten, and the star doing it",
  floor = 16.7,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#0f0f06",
  bg_float = "#161508",
  bg_sel = "#282a0e",
  bg_hl = "#3a3712",
  border = "#43421a",
  bg_search = "#55581f",
  nontext = "#3b381d",

  -- the text ladder
  text = "#cac9c4",
  dim = "#adac96",
  punct = "#a4a28e",
  comment = "#79786d",
  lnr = "#676651",
  lnr_cur = "#a8a691",

  -- syntax roles
  str = "#dad863",
  num = "#e3e112",
  typ = "#959a3e",
  mod = "#959a3e",
  prop = "#d2ce7d",
  func = "#dad863",
  kw = "#7e7a41",
  op = "#d2ce7d",
  macro = "#e3e112",
  esc = "#967114",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#959a3e",
  hint = "#dad863",
  ok = "#29b16d",
  accent = "#dad863",
  cursearch = "#7e7a41",
  subst = "#dad863",
  match = "#edc24a",
  title = "#dad863",
  dir = "#959a3e",
  label = "#7e7a41",
  tag = "#7e7a41",
  h1 = "#7e7a41",
  h2 = "#dad863",
  h3 = "#dad863",
  h4 = "#959a3e",
  h5 = "#959a3e",
  h6 = "#e3e112",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#1b1c05",
  diff_text = "#2f3209",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#181a05",
  vt_hint = "#171704",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "core", hue = 59, chroma = 58.7, cr = 13.98 },
    { key = "star", hue = 59, chroma = 86.6, cr = 15.04 },
    { key = "rim", hue = 63, chroma = 48.7, cr = 6.97 },
    { key = "photosphere", hue = 57, chroma = 42.0, cr = 12.86 },
    { key = "halo", hue = 56, chroma = 32.4, cr = 4.75 },
    { key = "veil", hue = 43, chroma = 52.2, cr = 4.67 },
  },
}

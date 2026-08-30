-- observatory-jupiter -- zones, belts and the Great Red Spot
--
-- Source: Hubble's 2024 OPAL portrait. OPAL photographs the outer planets
-- once a year to keep a record of weather that changes faster than missions
-- arrive, which is how the Great Red Spot's shrinking has been measured frame
-- by frame rather than inferred.
--
-- Image: Jupiter -- Hubble, WFC3, OPAL programme 2024.
-- NASA/ESA/STScI/A. Simon (NASA-GSFC).
-- Sampled at 1810 x 1639; 60% of the frame carried light.
--
-- Jupiter is banded rather than blotched, and the bands are not very colorful:
-- pale ammonia zones cover three fifths of the disc, and the browner belts
-- between them are tan rather than red. The Red Spot itself is under two per
-- cent of the lit frame, which is the honest measure of the most famous storm
-- in the solar system, so it takes the smallest role and reads as an accent
-- rather than as a theme.
--
-- Roles follow area, largest zone first.
--
-- What is in the frame, and the roles it takes:
--
--   cirrus        hue 215  14.76 contrast  22.6% of frame   properties, numbers
--   zone          hue  40  10.46 contrast  47.7% of frame   strings, modules
--   band          hue  30   8.20 contrast   6.5% of frame   keywords, macros, imports
--   barge         hue  29   4.76 contrast   1.8% of frame   types
--   belt          hue  37   4.71 contrast  21.5% of frame   functions, operators, escapes
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
-- and the closest pair of adjacent-capable roles sits at 17.3 Delta E.
--
-- The frame is faint: its colors average 11 chroma, where a palette
-- needs something nearer twenty-six to keep ten kinds of token apart.
-- So all of them were scaled by 2.0, uniformly. Every hue, every ratio
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
  name = "observatory-jupiter",
  about = "zones, belts and the Great Red Spot",
  floor = 17.3,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#120e08",
  bg_float = "#1a150a",
  bg_sel = "#302710",
  bg_hl = "#453216",
  border = "#4e3f1f",
  bg_search = "#645223",
  nontext = "#433521",

  -- the text ladder
  text = "#d2cfcb",
  dim = "#b2aa9c",
  punct = "#a3a09a",
  comment = "#807864",
  lnr = "#6e6450",
  lnr_cur = "#b0a591",

  -- syntax roles
  str = "#c8b58e",
  num = "#c5daf8",
  typ = "#be5d05",
  mod = "#c8b58e",
  prop = "#c5daf8",
  func = "#967136",
  kw = "#e18f3c",
  op = "#967136",
  macro = "#e18f3c",
  esc = "#967136",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#c8b58e",
  hint = "#c8b58e",
  ok = "#29b16d",
  accent = "#967136",
  cursearch = "#e18f3c",
  subst = "#c8b58e",
  match = "#edc24a",
  title = "#967136",
  dir = "#be5d05",
  label = "#e18f3c",
  tag = "#e18f3c",
  h1 = "#e18f3c",
  h2 = "#967136",
  h3 = "#c8b58e",
  h4 = "#be5d05",
  h5 = "#c8b58e",
  h6 = "#c5daf8",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#231906",
  diff_text = "#3d2d0b",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#1f1605",
  vt_hint = "#1c1505",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "zone", hue = 40, chroma = 22.4, cr = 10.46 },
    { key = "cirrus", hue = 215, chroma = 17.0, cr = 14.76 },
    { key = "barge", hue = 29, chroma = 67.7, cr = 4.76 },
    { key = "belt", hue = 37, chroma = 38.5, cr = 4.71 },
    { key = "band", hue = 30, chroma = 60.2, cr = 8.20 },
  },
}

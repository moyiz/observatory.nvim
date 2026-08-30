-- observatory-helix -- the Eye of God: a rust iris around a periwinkle pupil
--
-- Source: the 2003 composite of NGC 7293 from Hubble's ACS and the Mosaic II
-- camera at Kitt Peak, which is the image that earned the nebula its
-- nickname. It is one of the nearest planetary nebulae, six hundred and fifty
-- light years away, and we happen to be looking straight down the axis of it,
-- which is why a pair of expanding cones reads as a single enormous eye.
--
-- Image: Helix Nebula (NGC 7293) -- Hubble ACS with NOAO/KPNO Mosaic II.
-- NASA, NOAO, ESA, the Hubble Helix Nebula Team, M. Meixner (STScI), and T.A. Rector (NRAO).
-- Sampled at 8000 x 8000; 26% of the frame carried light.
--
-- The color is a ring problem. Almost the whole frame is the rust-and-gold
-- iris -- ionised hydrogen and nitrogen -- and the pupil at the center is the
-- one cool thing in it, doubly ionised oxygen mapped to periwinkle blue. That
-- is a 60/25 split by area, and the palette holds it: warm colors take the
-- roles that cover a buffer, and the blue is deliberately kept for a role big
-- enough to be seen but not big enough to take over, because a Helix that
-- reads mostly blue is not the Helix. The cometary knots -- thousands of
-- comet-shaped clumps, each larger than the solar system -- are the deep rust
-- at the small end.
--
-- Roles follow area across twelve sampled colors, of which the eight largest
-- are used; the ring alone is 17 per cent and takes strings.
--
-- What is in the frame, and the roles it takes:
--
--   glow          hue 210  16.89 contrast   7.2% of frame   modules
--   rim           hue  30  14.46 contrast   8.4% of frame   operators
--   cometary      hue  37  10.97 contrast   5.6% of frame   escapes
--   center        hue  25  10.27 contrast  15.3% of frame   strings, functions
--   ring          hue 227   7.93 contrast  22.6% of frame   numbers, macros, imports
--   knots         hue  23   7.63 contrast  11.1% of frame   keywords
--   haze          hue  15   5.77 contrast  20.5% of frame   properties
--   inner         hue  18   4.71 contrast   9.4% of frame   types
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
-- and the closest pair of adjacent-capable roles sits at 9.2 Delta E.
--
-- The frame also put two of its colors closer together than the family's
-- separation floor allows, so the ladder was spread to 7 points of
-- lightness between rungs rather than the three the picture asked for.
-- The order is still the picture's; the spacing is not.

return {
  name = "observatory-helix",
  about = "the Eye of God: a rust iris around a periwinkle pupil",
  floor = 9.2,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#0a0f18",
  bg_float = "#0f1427",
  bg_sel = "#1b2451",
  bg_hl = "#1f3463",
  border = "#2d3d74",
  bg_search = "#3b4da8",
  nontext = "#2a3756",

  -- the text ladder
  text = "#c5c6cc",
  dim = "#a6aab9",
  punct = "#8b93a9",
  comment = "#757b91",
  lnr = "#5e657a",
  lnr_cur = "#9fa6b9",

  -- syntax roles
  str = "#d4ae92",
  num = "#8d9dd6",
  typ = "#ae6445",
  mod = "#d4e9fe",
  prop = "#b07966",
  func = "#d4ae92",
  kw = "#de8650",
  op = "#f0d1b1",
  macro = "#8d9dd6",
  esc = "#e2b46b",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#d4e9fe",
  hint = "#d4ae92",
  ok = "#29b16d",
  accent = "#d4ae92",
  cursearch = "#de8650",
  subst = "#d4ae92",
  match = "#edc24a",
  title = "#d4ae92",
  dir = "#ae6445",
  label = "#de8650",
  tag = "#de8650",
  h1 = "#de8650",
  h2 = "#d4ae92",
  h3 = "#d4ae92",
  h4 = "#ae6445",
  h5 = "#d4e9fe",
  h6 = "#8d9dd6",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#091c30",
  diff_text = "#0f3052",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#07192a",
  vt_hint = "#231206",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "center", hue = 25, chroma = 21.9, cr = 10.27 },
    { key = "ring", hue = 227, chroma = 31.9, cr = 7.93 },
    { key = "inner", hue = 18, chroma = 40.5, cr = 4.71 },
    { key = "glow", hue = 210, chroma = 12.8, cr = 16.89 },
    { key = "haze", hue = 15, chroma = 27.0, cr = 5.77 },
    { key = "knots", hue = 23, chroma = 51.7, cr = 7.63 },
    { key = "rim", hue = 30, chroma = 20.8, cr = 14.46 },
    { key = "cometary", hue = 37, chroma = 44.0, cr = 10.97 },
  },
}

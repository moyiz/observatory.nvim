-- observatory-gliese3323b -- sage and slate, with one steel-blue sea
--
-- Source: an artist's impression of GJ 3323 b, a super-Earth twice Earth's
-- mass around an M dwarf seventeen light years away, tidally locked on a
-- five-day orbit. It is the one frame in this batch from outside an
-- institution, used because NASA has no illustration of this planet at all.
--
-- Image: GJ 3323 b -- illustration, Halcyon Maps.
-- Martin Vargic / Halcyon Maps (CC BY 3.0).
-- Sampled at 2306 x 988; 40% of the frame carried light.
--
-- The impression is unusually restrained: pale sage and slate over most of the
-- frame with a steel-blue sea taking about a tenth and a dusty rose at the
-- limb. That makes it the gentlest of the exoplanet palettes, closer to the
-- pale worlds than to the hot Jupiters, and the only one where the accent is
-- blue rather than a shade of fire.
--
-- Roles follow area.
--
-- What is in the frame, and the roles it takes:
--
--   slate         hue 114  15.61 contrast  36.1% of frame   numbers
--   deep          hue  20  15.25 contrast   3.3% of frame   strings
--   sage          hue  84  14.09 contrast  47.3% of frame   functions, properties, escapes
--   rose          hue   3   9.01 contrast   1.2% of frame   operators
--   sea           hue 204   5.80 contrast   5.6% of frame   types, modules
--   dust          hue 208   4.71 contrast   6.5% of frame   keywords, macros, imports
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
-- The frame is faint: its colors average 9 chroma, where a palette
-- needs something nearer twenty-six to keep ten kinds of token apart.
-- So all of them were scaled by 2.9, uniformly. Every hue, every ratio
-- between the colors and every proportion of the frame is the picture's;
-- only the overall saturation is the display's, in the way that a print of
-- a photograph has its own.

return {
  name = "observatory-gliese3323b",
  about = "sage and slate, with one steel-blue sea",
  floor = 16.7,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#0d1007",
  bg_float = "#111609",
  bg_sel = "#1e2c0f",
  bg_hl = "#2c3a12",
  border = "#35471b",
  bg_search = "#405c20",
  nontext = "#313c1d",

  -- the text ladder
  text = "#cbcec7",
  dim = "#a5ae99",
  punct = "#9da491",
  comment = "#74796e",
  lnr = "#606755",
  lnr_cur = "#a1a992",

  -- syntax roles
  str = "#fad4c1",
  num = "#b6ecb0",
  typ = "#278dcf",
  mod = "#278dcf",
  prop = "#cad9b3",
  func = "#cad9b3",
  kw = "#0878da",
  op = "#fb8984",
  macro = "#0878da",
  esc = "#cad9b3",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#278dcf",
  hint = "#fad4c1",
  ok = "#29b16d",
  accent = "#cad9b3",
  cursearch = "#0878da",
  subst = "#fad4c1",
  match = "#edc24a",
  title = "#cad9b3",
  dir = "#278dcf",
  label = "#0878da",
  tag = "#0878da",
  h1 = "#0878da",
  h2 = "#cad9b3",
  h3 = "#fad4c1",
  h4 = "#278dcf",
  h5 = "#278dcf",
  h6 = "#b6ecb0",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#081d2b",
  diff_text = "#0d324b",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#071926",
  vt_hint = "#251006",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "deep", hue = 20, chroma = 17.7, cr = 15.25 },
    { key = "slate", hue = 114, chroma = 37.0, cr = 15.61 },
    { key = "sea", hue = 204, chroma = 42.3, cr = 5.80 },
    { key = "sage", hue = 84, chroma = 20.7, cr = 14.09 },
    { key = "dust", hue = 208, chroma = 58.4, cr = 4.71 },
    { key = "rose", hue = 3, chroma = 48.1, cr = 9.01 },
  },
}

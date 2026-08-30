-- observatory-mars -- rust, dust and one bright polar cap
--
-- Source: Hubble's WFPC2 portrait from the August 2003 close approach, when
-- Mars came within 56 million kilometers, the nearest in almost sixty thousand
-- years. The south polar cap is at the bottom and a dust storm is lifting over
-- Hellas, which is why the southern hemisphere reads brighter than usual.
--
-- Image: Mars -- Hubble, WFPC2, 2003 close approach.
-- NASA/ESA/STScI (J. Bell, M. Wolff).
-- Sampled at 1600 x 1600; 59% of the frame carried light.
--
-- Mars is the one world whose popular color and whose real color agree, and
-- the frame is four fifths iron oxide: a dark rust, a bright wind-blown dust,
-- a gray-tan of coarser ground and an ochre between them. The only colors
-- that are not rust are the polar cap and a blue-gray haze at the limb, and
-- between them they cover five per cent of the disc, so they take the two
-- smallest roles.
--
-- Roles follow area, which is why the rusts carry the code and the cold
-- colors are reserved for what the picture reserves them for.
--
-- What is in the frame, and the roles it takes:
--
--   plain         hue  28  16.93 contrast  21.7% of frame   functions, macros, imports
--   dust          hue  31  12.30 contrast  27.4% of frame   properties, types
--   ochre         hue  28  11.53 contrast  15.7% of frame   keywords, numbers, operators, escapes
--   rust          hue  30   5.56 contrast  31.9% of frame   strings
--   syrtis        hue 214   4.70 contrast   3.3% of frame   modules
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
-- 1 of the 6 colors sampled from the frame were folded into their
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
  name = "observatory-mars",
  about = "rust, dust and one bright polar cap",
  floor = 16.5,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#140d08",
  bg_float = "#1d130b",
  bg_sel = "#342511",
  bg_hl = "#4d2f18",
  border = "#573b22",
  bg_search = "#6f4f27",
  nontext = "#483324",

  -- the text ladder
  text = "#c7c4c2",
  dim = "#b4a99f",
  punct = "#af9c8e",
  comment = "#7d7872",
  lnr = "#736252",
  lnr_cur = "#b3a396",

  -- syntax roles
  str = "#a87a4d",
  num = "#f8b174",
  typ = "#e4c099",
  mod = "#5e799d",
  prop = "#e4c099",
  func = "#f9e3d0",
  kw = "#f8b174",
  op = "#f8b174",
  macro = "#f9e3d0",
  esc = "#f8b174",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#5e799d",
  hint = "#a87a4d",
  ok = "#29b16d",
  accent = "#f9e3d0",
  cursearch = "#f8b174",
  subst = "#a87a4d",
  match = "#edc24a",
  title = "#f9e3d0",
  dir = "#e4c099",
  label = "#f8b174",
  tag = "#f8b174",
  h1 = "#f8b174",
  h2 = "#f9e3d0",
  h3 = "#a87a4d",
  h4 = "#e4c099",
  h5 = "#5e799d",
  h6 = "#f8b174",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#091b34",
  diff_text = "#102f5a",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#08182d",
  vt_hint = "#211306",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "rust", hue = 30, chroma = 34.0, cr = 5.56 },
    { key = "ochre", hue = 28, chroma = 45.6, cr = 11.53 },
    { key = "dust", hue = 31, chroma = 25.5, cr = 12.30 },
    { key = "syrtis", hue = 214, chroma = 22.5, cr = 4.70 },
    { key = "plain", hue = 28, chroma = 12.8, cr = 16.93 },
  },
}

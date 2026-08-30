-- observatory-dimidium -- the first planet found around a sun-like star, in tan and butterscotch
--
-- Source: ESO's 2015 impression of 51 Pegasi b, published when the IAU named
-- it. Michel Mayor and Didier Queloz found this planet in October 1995 by
-- watching its star wobble, and it broke the theory of planet formation on the
-- day it was announced: half a Jupiter mass in a four-day orbit, twenty times
-- closer to its star than Earth is to the Sun, where nothing that large was
-- supposed to be able to form or survive. It is the original hot Jupiter, the
-- discovery that turned exoplanets from a expectation into a field, and it won
-- the 2019 Nobel Prize in Physics.
-- The name means half, for its mass; the older nickname, Bellerophon, is for the
-- hero who rode Pegasus.
--
-- Image: 51 Pegasi b (IAU name Dimidium, long nicknamed Bellerophon) -- artist's impression, ESO (eso1517a, 2015).
-- ESO/M. Kornmesser/Nick Risinger (skysurvey.org).
-- Sampled at 5000 x 3144; 6% of the frame carried light.
--
-- Six and a half per cent of the frame is lit, which is the lowest of any
-- picture sampled for this collection: the planet is drawn half in shadow
-- against a starfield, so what the palette has to work with is one warm
-- crescent. Every color in it sits between hue 27 and hue 45 -- tan,
-- butterscotch, an olive-gray haze, two browns -- with the host star as a small
-- neutral point. So this is a warm monochrome, and honestly so: nobody knows
-- what color this planet is, and the illustration does not pretend to.
--
-- Roles follow area.
--
-- What is in the frame, and the roles it takes:
--
--   shade         hue   0  16.95 contrast   6.8% of frame   keywords, macros, imports, modules
--   band          hue  36   7.84 contrast  31.3% of frame   functions, types, numbers
--   cloud         hue  28   5.65 contrast  48.6% of frame   strings, operators, escapes
--   haze          hue  45   4.73 contrast  13.3% of frame   properties
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
-- So all of them were scaled by 1.3, uniformly. Every hue, every ratio
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

return {
  name = "observatory-dimidium",
  about = "the first planet found around a sun-like star, in tan and butterscotch",
  floor = 9.8,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#140d08",
  bg_float = "#1d130b",
  bg_sel = "#342511",
  bg_hl = "#4e2e18",
  border = "#573b22",
  bg_search = "#704e27",
  nontext = "#483324",

  -- the text ladder
  text = "#cbc6c3",
  dim = "#b4a99f",
  punct = "#a69080",
  comment = "#897968",
  lnr = "#746151",
  lnr_cur = "#b3a396",

  -- syntax roles
  str = "#af7949",
  num = "#b69a6f",
  typ = "#b69a6f",
  mod = "#fee0e0",
  prop = "#837752",
  func = "#b69a6f",
  kw = "#fee0e0",
  op = "#af7949",
  macro = "#fee0e0",
  esc = "#af7949",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#fee0e0",
  hint = "#af7949",
  ok = "#29b16d",
  accent = "#b69a6f",
  cursearch = "#fee0e0",
  subst = "#af7949",
  match = "#edc24a",
  title = "#b69a6f",
  dir = "#b69a6f",
  label = "#fee0e0",
  tag = "#fee0e0",
  h1 = "#fee0e0",
  h2 = "#b69a6f",
  h3 = "#af7949",
  h4 = "#b69a6f",
  h5 = "#fee0e0",
  h6 = "#b69a6f",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#390a0a",
  diff_text = "#601111",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#330909",
  vt_hint = "#211206",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "cloud", hue = 28, chroma = 38.0, cr = 5.65 },
    { key = "band", hue = 36, chroma = 26.8, cr = 7.84 },
    { key = "shade", hue = 0, chroma = 11.0, cr = 16.95 },
    { key = "haze", hue = 45, chroma = 22.1, cr = 4.73 },
  },
}

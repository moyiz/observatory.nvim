-- observatory-hoag -- a gold core inside a detached ring, and nothing in between
--
-- Source: Hubble's WFPC2 image of Hoag's Object, the ring galaxy Art Hoag
-- found in 1950 and first took for a gravitational lens. It is still not
-- settled how it formed. A second, smaller ring galaxy is visible through the
-- gap, which is the sort of thing that happens once in a catalogue.
--
-- Image: Hoag's Object -- Hubble Space Telescope, WFPC2.
-- NASA/ESA and The Hubble Heritage Team (STScI/AURA).
-- Sampled at 1521 x 1489; 18% of the frame carried light.
--
-- The structure is the color. An old yellow core, a ring of hot young blue
-- stars well outside it, and a genuine gap between the two: three things, and
-- the gap is the largest of them at a fifth of the lit frame. The palette
-- keeps the gold at 44 chroma against neutral slate, rather than letting the
-- whole thing drift warm, because what the picture is about is the emptiness
-- between two populations of stars.
--
-- Roles follow area, which here means the dim slate of the gap takes a large
-- role and the bright ring knots take a small one -- the inverse of what a
-- palette usually does, and what the photograph asks for.
--
-- What is in the frame, and the roles it takes:
--
--   gap           hue  58  16.93 contrast  32.9% of frame   keywords, types, numbers
--   ring          hue  45  10.30 contrast   8.4% of frame   operators
--   dust          hue  38   7.48 contrast   3.5% of frame   functions
--   void          hue 201   6.05 contrast  18.9% of frame   macros, imports
--   knots         hue 240   5.71 contrast  21.6% of frame   properties, modules
--   core          hue  30   5.64 contrast  12.3% of frame   strings
--   outer         hue 352   4.69 contrast   2.4% of frame   escapes
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
-- and the closest pair of adjacent-capable roles sits at 9.4 Delta E.
--
-- The frame is faint: its colors average 15 chroma, where a palette
-- needs something nearer twenty-six to keep ten kinds of token apart.
-- So all of them were scaled by 1.7, uniformly. Every hue, every ratio
-- between the colors and every proportion of the frame is the picture's;
-- only the overall saturation is the display's, in the way that a print of
-- a photograph has its own.
--
-- 1 of the 8 colors sampled from the frame were folded into their
-- nearest neighbour rather than kept: at this subject's hue span there is
-- not enough lightness left to hold that many apart at the family's
-- separation floor, and two colors a reader cannot distinguish are one
-- color. The folded share went to the neighbour, so the proportions of
-- the frame are still what the roles follow.

return {
  name = "observatory-hoag",
  about = "a gold core inside a detached ring, and nothing in between",
  floor = 9.4,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#0f0f07",
  bg_float = "#161608",
  bg_sel = "#282a0e",
  bg_hl = "#3a3612",
  border = "#44421a",
  bg_search = "#55581f",
  nontext = "#3b391d",

  -- the text ladder
  text = "#c3c9c0",
  dim = "#a0af9a",
  punct = "#8b9883",
  comment = "#72806d",
  lnr = "#5b6956",
  lnr_cur = "#9caa95",

  -- syntax roles
  str = "#9d7f60",
  num = "#efec77",
  typ = "#efec77",
  mod = "#8282a8",
  prop = "#8282a8",
  func = "#bc944e",
  kw = "#efec77",
  op = "#dcb030",
  macro = "#5d90ac",
  esc = "#9d6970",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#8282a8",
  hint = "#9d7f60",
  ok = "#29b16d",
  accent = "#bc944e",
  cursearch = "#efec77",
  subst = "#9d7f60",
  match = "#edc24a",
  title = "#bc944e",
  dir = "#efec77",
  label = "#efec77",
  tag = "#efec77",
  h1 = "#efec77",
  h2 = "#bc944e",
  h3 = "#9d7f60",
  h4 = "#efec77",
  h5 = "#8282a8",
  h6 = "#efec77",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#0f0f55",
  diff_text = "#191990",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#0d0d4c",
  vt_hint = "#211306",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "core", hue = 30, chroma = 22.4, cr = 5.64 },
    { key = "gap", hue = 58, chroma = 58.2, cr = 16.93 },
    { key = "knots", hue = 240, chroma = 21.8, cr = 5.71 },
    { key = "dust", hue = 38, chroma = 42.8, cr = 7.48 },
    { key = "ring", hue = 45, chroma = 66.8, cr = 10.30 },
    { key = "void", hue = 201, chroma = 22.1, cr = 6.05 },
    { key = "outer", hue = 352, chroma = 22.3, cr = 4.69 },
  },
}

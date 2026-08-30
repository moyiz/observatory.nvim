-- observatory-methuselah -- the oldest planet known, in teal and cobalt
--
-- Source: Gregory Bacon's 2003 concept for the release that announced PSR
-- B1620-26 b as the oldest planet known, looking out past the planet's limb into
-- the core of M4. This world is 12.7 billion years old -- formed when the
-- universe was about a billion, out of gas that had barely any heavy elements in
-- it -- and it has outlived both of its suns. It orbits a pulsar and a white
-- dwarf, in a globular cluster where stars are packed closely enough to swap
-- companions, so the likeliest history is that the planet and its original star
-- were captured by the pulsar and the star was then stripped to the dwarf that
-- is still there.
--
-- Image: PSR B1620-26 b (nicknamed Methuselah), in the globular cluster M4 -- artist's concept, NASA/STScI (2003 oldest-known-planet release).
-- NASA and G. Bacon (STScI).
-- Sampled at 4000 x 3000; 45% of the frame carried light.
--
-- The frame is mostly the planet, and the planet is blue: half the lit area is
-- one deep teal, with a cobalt band, a slate limb and a brighter blue in the
-- clouds, all of it within seven degrees of hue 203. The lower two thirds is
-- black sky packed with cream and rose cluster stars, which is the one warm
-- thing the palette gets. So this is a cool scheme with a single warm accent,
-- and the accent is a globular cluster.
--
-- Roles follow area. The blue is an illustrator's choice rather than a
-- measurement -- a gas giant of nearly primordial composition has no observed
-- color and never will, at 12,400 light years -- and it is the choice the
-- release was published with, which is the rule these schemes follow.
--
-- What is in the frame, and the roles it takes:
--
--   limb          hue 201  16.74 contrast  14.6% of frame   functions
--   band          hue 207  12.67 contrast  16.5% of frame   properties, escapes
--   bright        hue 208   8.91 contrast   3.1% of frame   numbers
--   field         hue  56   7.58 contrast  12.3% of frame   keywords, types, modules
--   cloud         hue 203   6.01 contrast  52.3% of frame   strings, macros, imports
--   dust          hue  17   4.72 contrast   1.2% of frame   operators
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
-- and the closest pair of adjacent-capable roles sits at 17.4 Delta E.
--
-- The frame is faint: its colors average 23 chroma, where a palette
-- needs something nearer twenty-six to keep ten kinds of token apart.
-- So all of them were scaled by 1.1, uniformly. Every hue, every ratio
-- between the colors and every proportion of the frame is the picture's;
-- only the overall saturation is the display's, in the way that a print of
-- a photograph has its own.

return {
  name = "observatory-methuselah",
  about = "the oldest planet known, in teal and cobalt",
  floor = 17.4,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#081013",
  bg_float = "#0b161d",
  bg_sel = "#14293b",
  bg_hl = "#173949",
  border = "#234459",
  bg_search = "#2c597d",
  nontext = "#223b46",

  -- the text ladder
  text = "#c4c7c9",
  dim = "#a0acb4",
  punct = "#88a4b0",
  comment = "#72797d",
  lnr = "#4f6978",
  lnr_cur = "#95a9b3",

  -- syntax roles
  str = "#4b90bb",
  num = "#5eaff4",
  typ = "#a09d76",
  mod = "#a09d76",
  prop = "#99cffb",
  func = "#c7ebfe",
  kw = "#a09d76",
  op = "#986e5d",
  macro = "#4b90bb",
  esc = "#99cffb",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#a09d76",
  hint = "#4b90bb",
  ok = "#29b16d",
  accent = "#c7ebfe",
  cursearch = "#a09d76",
  subst = "#4b90bb",
  match = "#edc24a",
  title = "#c7ebfe",
  dir = "#a09d76",
  label = "#a09d76",
  tag = "#a09d76",
  h1 = "#a09d76",
  h2 = "#c7ebfe",
  h3 = "#4b90bb",
  h4 = "#a09d76",
  h5 = "#a09d76",
  h6 = "#5eaff4",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#1d1c05",
  diff_text = "#343009",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#1a1905",
  vt_hint = "#061722",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "cloud", hue = 203, chroma = 30.3, cr = 6.01 },
    { key = "bright", hue = 208, chroma = 42.0, cr = 8.91 },
    { key = "field", hue = 56, chroma = 21.5, cr = 7.58 },
    { key = "band", hue = 207, chroma = 27.9, cr = 12.67 },
    { key = "limb", hue = 201, chroma = 15.1, cr = 16.74 },
    { key = "dust", hue = 17, chroma = 21.5, cr = 4.72 },
  },
}

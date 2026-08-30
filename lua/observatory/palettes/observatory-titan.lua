-- observatory-titan -- a hazy orange orb, which is all anyone sees from outside
--
-- Source: Cassini's 'Hazy Orange Orb', PIA14602. Titan's atmosphere is opaque
-- in visible light, so from outside there is nothing to see but haze: the
-- lakes and dunes underneath were mapped by radar and by infrared, never by a
-- camera looking at the globe.
--
-- Image: Titan -- Cassini, ISS (PIA14602, 'Hazy Orange Orb').
-- NASA/JPL-Caltech/Space Science Institute.
-- Sampled at 1024 x 1024; 18% of the frame carried light.
--
-- This is one of the two most saturated frames in the collection, and it has
-- one color in it. Photochemical smog -- nitrogen and methane broken up by
-- sunlight and recombined into tholins -- gives the whole disc a single gold,
-- so the palette is a gold ladder from the bright day side down to the
-- terminator, with only the deepest limb turning neutral.
--
-- Roles follow area, and with the hue fixed the ladder carries the palette.
--
-- What is in the frame, and the roles it takes:
--
--   haze          hue  45  16.87 contrast  53.9% of frame   strings, keywords, macros, imports
--   tholin        hue  41  12.90 contrast  37.6% of frame   functions, properties, escapes
--   limb          hue  38   7.00 contrast   7.7% of frame   types, numbers, modules
--   shade         hue 180   4.66 contrast   0.9% of frame   operators
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
-- and the closest pair of adjacent-capable roles sits at 16.9 Delta E.
--
-- 2 of the 6 colors sampled from the frame were folded into their
-- nearest neighbour rather than kept: at this subject's hue span there is
-- not enough lightness left to hold that many apart at the family's
-- separation floor, and two colors a reader cannot distinguish are one
-- color. The folded share went to the neighbour, so the proportions of
-- the frame are still what the roles follow.

return {
  name = "observatory-titan",
  about = "a hazy orange orb, which is all anyone sees from outside",
  floor = 16.9,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#120e08",
  bg_float = "#181509",
  bg_sel = "#2d270f",
  bg_hl = "#423315",
  border = "#4b401d",
  bg_search = "#605422",
  nontext = "#413720",

  -- the text ladder
  text = "#cccac6",
  dim = "#b0aa9a",
  punct = "#a9a18f",
  comment = "#7a786f",
  lnr = "#6b6551",
  lnr_cur = "#aea68f",

  -- syntax roles
  str = "#fce5a2",
  num = "#b58f4e",
  typ = "#b58f4e",
  mod = "#b58f4e",
  prop = "#dbc9a3",
  func = "#dbc9a3",
  kw = "#fce5a2",
  op = "#3e8181",
  macro = "#fce5a2",
  esc = "#dbc9a3",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#b58f4e",
  hint = "#fce5a2",
  ok = "#29b16d",
  accent = "#dbc9a3",
  cursearch = "#fce5a2",
  subst = "#fce5a2",
  match = "#edc24a",
  title = "#dbc9a3",
  dir = "#b58f4e",
  label = "#fce5a2",
  tag = "#fce5a2",
  h1 = "#fce5a2",
  h2 = "#dbc9a3",
  h3 = "#fce5a2",
  h4 = "#b58f4e",
  h5 = "#b58f4e",
  h6 = "#b58f4e",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#241906",
  diff_text = "#402c0b",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#201706",
  vt_hint = "#1b1605",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "haze", hue = 45, chroma = 35.6, cr = 16.87 },
    { key = "limb", hue = 38, chroma = 40.2, cr = 7.00 },
    { key = "tholin", hue = 41, chroma = 21.3, cr = 12.90 },
    { key = "shade", hue = 180, chroma = 22.1, cr = 4.66 },
  },
}

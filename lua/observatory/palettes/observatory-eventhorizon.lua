-- observatory-eventhorizon -- the first photograph of a black hole, and it is all one hue
--
-- Source: the Event Horizon Telescope image of M87*, released on 10 April
-- 2019: eight radio observatories from Hawaii to the South Pole synchronised
-- into one Earth-sized instrument, five petabytes of data flown on hard
-- drives, resolving a ring of hot plasma around a hole six and a half billion
-- times the mass of the Sun and fifty-five million light years away.
--
-- Image: M87* (Event Horizon Telescope) -- Event Horizon Telescope, 1.3 mm.
-- EHT Collaboration.
-- Sampled at 7416 x 4320; 10% of the frame carried light.
--
-- The color is a choice, and everyone knows it: 1.3-millimeter radio has no
-- visible color, and the collaboration mapped brightness temperature onto a
-- black-to-red-to-gold scale. That scale is now what a black hole looks like
-- to the public, so this palette takes it as given. Every color in the frame
-- falls between hue 12 and hue 48 -- thirty-six degrees, the narrowest band in
-- the collection -- and what separates them is brightness and purity, running
-- from the deep crimson of the far side of the ring to the gold crest where
-- orbiting plasma is Doppler-boosted toward us.
--
-- Roles follow area, across nine colors sampled from the six per cent of the
-- frame that is not empty sky.
--
-- What is in the frame, and the roles it takes:
--
--   deep          hue  45  16.99 contrast   8.4% of frame   operators, modules
--   flare         hue  39  14.18 contrast  12.0% of frame   keywords
--   far           hue  22  12.58 contrast  16.1% of frame   properties
--   boost         hue  33  11.03 contrast  21.8% of frame   strings, functions
--   ring          hue  14   7.87 contrast  22.3% of frame   numbers, macros, imports
--   warm          hue   7   4.78 contrast   8.3% of frame   escapes
--   glow          hue   5   4.72 contrast  11.1% of frame   types
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
-- and the closest pair of adjacent-capable roles sits at 16.3 Delta E.
--
-- 1 of the 8 colors sampled from the frame were folded into their
-- nearest neighbour rather than kept: at this subject's hue span there is
-- not enough lightness left to hold that many apart at the family's
-- separation floor, and two colors a reader cannot distinguish are one
-- color. The folded share went to the neighbour, so the proportions of
-- the frame are still what the roles follow.
--
-- The frame also put two of its colors closer together than the family's
-- separation floor allows, so the ladder was spread to 7 points of
-- lightness between rungs rather than the three the picture asked for.
-- The order is still the picture's; the spacing is not.

return {
  name = "observatory-eventhorizon",
  about = "the first photograph of a black hole, and it is all one hue",
  floor = 16.3,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#160b09",
  bg_float = "#21110c",
  bg_sel = "#3d2114",
  bg_hl = "#5a261c",
  border = "#633427",
  bg_search = "#80452d",
  nontext = "#512e28",

  -- the text ladder
  text = "#ccc6c5",
  dim = "#b7a7a3",
  punct = "#a19998",
  comment = "#8c7269",
  lnr = "#795f58",
  lnr_cur = "#b7a19c",

  -- syntax roles
  str = "#f9ac4c",
  num = "#fa7852",
  typ = "#bc5a51",
  mod = "#fbe6a9",
  prop = "#fcba93",
  func = "#f9ac4c",
  kw = "#face7b",
  op = "#fbe6a9",
  macro = "#fa7852",
  esc = "#d14b39",

  -- interface duties, following the syntax colors
  err = "#f67378",
  warn = "#edc24a",
  info = "#fbe6a9",
  hint = "#f9ac4c",
  ok = "#29b16d",
  accent = "#f9ac4c",
  cursearch = "#face7b",
  subst = "#f9ac4c",
  match = "#edc24a",
  title = "#f9ac4c",
  dir = "#bc5a51",
  label = "#face7b",
  tag = "#face7b",
  h1 = "#face7b",
  h2 = "#f9ac4c",
  h3 = "#f9ac4c",
  h4 = "#bc5a51",
  h5 = "#fbe6a9",
  h6 = "#fa7852",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#221b06",
  diff_text = "#3b2e0a",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#1e1805",
  vt_hint = "#1f1405",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "boost", hue = 33, chroma = 62.1, cr = 11.03 },
    { key = "ring", hue = 14, chroma = 64.3, cr = 7.87 },
    { key = "glow", hue = 5, chroma = 45.5, cr = 4.72 },
    { key = "deep", hue = 45, chroma = 32.4, cr = 16.99 },
    { key = "far", hue = 22, chroma = 34.8, cr = 12.58 },
    { key = "flare", hue = 39, chroma = 47.1, cr = 14.18 },
    { key = "warm", hue = 7, chroma = 64.8, cr = 4.78 },
  },
}

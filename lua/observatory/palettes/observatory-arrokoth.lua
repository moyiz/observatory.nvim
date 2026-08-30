-- observatory-arrokoth -- the reddest thing photographed up close
--
-- Source: New Horizons' color frame of Arrokoth from 1 January 2019, the
-- most distant object ever visited. It is a contact binary: two lobes that
-- settled together slowly enough not to shatter, which is direct evidence for
-- how planetesimals accumulated rather than collided.
--
-- Image: Arrokoth (2014 MU69) -- New Horizons, Ralph/MVIC, 1 January 2019.
-- NASA/Johns Hopkins University APL/Southwest Research Institute.
-- Sampled at 800 x 800; 42% of the frame carried light.
--
-- Arrokoth is redder than Mars and redder than Pluto, and it is that color
-- everywhere: the sampled colors span four degrees of hue, the narrowest
-- span in the collection. Four and a half billion years of cosmic rays on
-- methanol ice make tholins, and nothing has ever disturbed them. So the
-- palette is one red-brown at six strengths, from the sunlit lobe down to the
-- night side.
--
-- Roles follow area. With a single hue, the ladder does all of the separating.
--
-- What is in the frame, and the roles it takes:
--
--   sunlit        hue  23  16.85 contrast  24.0% of frame   functions, types, escapes
--   tholin        hue  25  10.17 contrast  57.8% of frame   strings, keywords, modules
--   shade         hue  26   6.12 contrast   8.3% of frame   numbers, operators, macros, imports
--   lobe          hue  24   4.69 contrast  10.0% of frame   properties
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
-- and the closest pair of adjacent-capable roles sits at 8.1 Delta E.
--
-- 2 of the 6 colors sampled from the frame were folded into their
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
  name = "observatory-arrokoth",
  about = "the reddest thing photographed up close",
  floor = 8.1,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#140d09",
  bg_float = "#1d130b",
  bg_sel = "#372312",
  bg_hl = "#502c19",
  border = "#5a3a23",
  bg_search = "#734c29",
  nontext = "#4b3225",

  -- the text ladder
  text = "#cbc6c3",
  dim = "#b5a9a0",
  punct = "#a78f83",
  comment = "#8c7868",
  lnr = "#756153",
  lnr_cur = "#b4a298",

  -- syntax roles
  str = "#ddaa86",
  num = "#a98365",
  typ = "#fde1cf",
  mod = "#ddaa86",
  prop = "#986e52",
  func = "#fde1cf",
  kw = "#ddaa86",
  op = "#a98365",
  macro = "#a98365",
  esc = "#fde1cf",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#ddaa86",
  hint = "#ddaa86",
  ok = "#29b16d",
  accent = "#fde1cf",
  cursearch = "#ddaa86",
  subst = "#ddaa86",
  match = "#edc24a",
  title = "#fde1cf",
  dir = "#fde1cf",
  label = "#ddaa86",
  tag = "#ddaa86",
  h1 = "#ddaa86",
  h2 = "#fde1cf",
  h3 = "#ddaa86",
  h4 = "#fde1cf",
  h5 = "#ddaa86",
  h6 = "#a98365",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#2b1608",
  diff_text = "#4a260d",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#261307",
  vt_hint = "#231206",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "tholin", hue = 25, chroma = 29.3, cr = 10.17 },
    { key = "shade", hue = 26, chroma = 24.2, cr = 6.12 },
    { key = "sunlit", hue = 23, chroma = 14.1, cr = 16.85 },
    { key = "lobe", hue = 24, chroma = 25.7, cr = 4.69 },
  },
}

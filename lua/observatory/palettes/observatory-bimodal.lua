-- observatory-bimodal -- galaxies come in two colors, and the gap is not green
--
-- Source: the color distribution of galaxies, as the Sloan survey found it.
-- Plot a few hundred thousand galaxies by color and the histogram has two
-- humps: a red sequence of old ellipticals with u-r around 2.5, a blue cloud
-- of star-forming spirals around 1.3, and a thinly occupied stretch between
-- them that acquired the name green valley. The red sequence is also tilted --
-- the more massive a galaxy on it, the redder -- so three points along each
-- hump, one in the valley, and their u-r and g-r colors become sRGB the way
-- survey images are made: u, g and r into the blue, green and red channels,
-- balanced so that a Sun-colored object comes out white.
--
-- Two clusters with a hole between them is a good shape for a palette,
-- because it means no accent sits near the middle of the hue circle where
-- everything else does. The blue cloud takes the roles that repeat -- function
-- names, types -- and the red sequence takes the ones that punctuate, and the
-- tilt within each hump supplies the second and third value that a two-family
-- palette needs.
--
-- The valley is the interesting part, and it is not green. Converted through
-- the same channel mapping as everything else, a galaxy at u-r 1.9 comes out a
-- pale pink of thirteen chroma units, sitting almost exactly on the neutral
-- axis: the sparse middle of the distribution turns out to be the achromatic
-- middle of the color space too. The name was never about the color -- it
-- came from where the region falls on a plot -- and the palette makes that
-- plain by putting the valley rung in the middle of the ladder, where it does
-- the quiet work that operators want anyway.
--
-- The compromise is the channel mapping itself. Integrated galaxy colors are
-- measurements in filters, not sRGB triples, and turning them into a picture
-- requires choosing which filter drives which channel and what counts as
-- white. This scheme makes the standard choice and states it, as
-- `observatory-hubble` does for narrowband astronomy; a different white point
-- would move every hue here by several degrees without changing the fact that
-- there are two humps.
--
-- `observatory-kuiper` is the collection's other two-population scheme, and
-- `observatory-hertzsprungrussell` its other color-magnitude diagram -- of stars, where the
-- distribution is a locus with branches rather than a pair of humps.
--
-- Galaxies, and the roles they take:
--
--   blue_1_00    hue 232   16.26 contrast   functions
--   red_2_50     hue  25   12.83 contrast   properties
--   blue_1_30    hue 236   11.38 contrast   types
--   red_2_70     hue  25    9.15 contrast   keywords, macros, imports
--   valley_1_90  hue 350    7.57 contrast   operators
--   blue_1_60    hue 262    5.31 contrast   modules, numbers
--   red_2_30     hue  22    4.90 contrast   strings, escapes
--
-- Hues here are fixed by the source, since they are the part that
-- represents the world. Saturation and contrast were then solved within a
-- band around their authored values, so that every pair of colors that can
-- appear together -- including every pair with the error, warning and git
-- colors, which sit beside code in the sign column -- clears the family's
-- separation limit.
--
-- Construction follows the rest of the family: every foreground is solved
-- by binary search for an exact contrast ratio against #000000, each accent
-- is the most chromatic form of its hue that still meets that ratio under a
-- per-role cap, and the closest pair of adjacent-capable roles sits at
-- 18.8 Delta E.

return {
  name = "observatory-bimodal",
  about = "galaxies come in two colors, and the gap is not green",
  floor = 18.8,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#0c0d1d",
  bg_float = "#11112e",
  bg_sel = "#231e5b",
  bg_hl = "#262c79",
  border = "#36368a",
  bg_search = "#4a42bd",
  nontext = "#303362",

  -- the text ladder
  text = "#b7b7be",
  dim = "#a9a9b9",
  punct = "#838497",
  comment = "#7473a9",
  lnr = "#5f5f9b",
  lnr_cur = "#a4a4ba",

  -- syntax roles
  str = "#ac6a45",
  num = "#916dd1",
  typ = "#b7bbf0",
  mod = "#916dd1",
  prop = "#e5c4ad",
  func = "#dde1fd",
  kw = "#db9e73",
  op = "#be8f97",
  macro = "#db9e73",
  esc = "#ac6a45",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#916dd1",
  hint = "#ac6a45",
  ok = "#29b16d",
  accent = "#dde1fd",
  cursearch = "#db9e73",
  subst = "#ac6a45",
  match = "#edc24a",
  title = "#dde1fd",
  dir = "#b7bbf0",
  label = "#db9e73",
  tag = "#db9e73",
  h1 = "#db9e73",
  h2 = "#dde1fd",
  h3 = "#ac6a45",
  h4 = "#b7bbf0",
  h5 = "#916dd1",
  h6 = "#916dd1",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#220d49",
  diff_text = "#3a167a",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#1f0b40",
  vt_hint = "#241106",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "red_2_30", hue = 22, chroma = 38.9, cr = 4.90 },
    { key = "blue_1_60", hue = 262, chroma = 58.6, cr = 5.31 },
    { key = "blue_1_30", hue = 236, chroma = 28.5, cr = 11.38 },
    { key = "red_2_50", hue = 25, chroma = 17.9, cr = 12.83 },
    { key = "blue_1_00", hue = 232, chroma = 14.6, cr = 16.26 },
    { key = "red_2_70", hue = 25, chroma = 36.0, cr = 9.15 },
    { key = "valley_1_90", hue = 350, chroma = 19.2, cr = 7.57 },
  },
}

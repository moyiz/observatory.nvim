-- observatory-kepler367b -- an atmosphere streaming off a small planet, in indigo and amber
--
-- Source: ESA/Hubble's illustration of GJ 3470 b losing its atmosphere,
-- standing in for Kepler-367 b, a validated planet on a five-day orbit at about
-- 1.7 Earth radii with no artwork of its own. The illustration shows a warm
-- Neptune in transit trailing a hydrogen cloud twice the size of its star --
-- the largest such escape measured when it was published.
--
-- Image: Kepler-367 b -- artist illustration of GJ 3470 b, ESA/Hubble (opo1852a).
-- NASA, ESA, and D. Player (STScI).
-- Sampled at 1280 x 720; 61% of the frame carried light.
--
-- Two halves, two hues: the escaping hydrogen is indigo and slate across the
-- left of the frame, the red dwarf is amber and orange across the right, and
-- there is nothing in between. That gives this scheme the widest hue span of the
-- exoplanets, with the cool colors carrying the bulk of the code and the
-- star's oranges taking the roles that need to stand out.
--
-- Roles follow area over the eight largest of twelve sampled colors.
--
-- What is in the frame, and the roles it takes:
--
--   ember         hue  44  16.90 contrast   9.3% of frame   keywords, types
--   star          hue  36  14.40 contrast   6.9% of frame   macros, imports
--   scorch        hue  28  11.01 contrast   6.4% of frame   escapes
--   shadow        hue 272   7.98 contrast  49.8% of frame   properties
--   twilight      hue  15   7.66 contrast  11.5% of frame   modules
--   rust          hue 353   5.82 contrast   9.6% of frame   numbers, operators
--   corona        hue  14   4.69 contrast   6.5% of frame   strings, functions
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
-- and the closest pair of adjacent-capable roles sits at 9.5 Delta E.
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
  name = "observatory-kepler367b",
  about = "an atmosphere streaming off a small planet, in indigo and amber",
  floor = 9.5,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#120b1b",
  bg_float = "#1c0f28",
  bg_sel = "#38194c",
  bg_hl = "#45236e",
  border = "#552f78",
  bg_search = "#75379e",
  nontext = "#432e5c",

  -- the text ladder
  text = "#c6c7cd",
  dim = "#a8a9bb",
  punct = "#8f93aa",
  comment = "#797a90",
  lnr = "#626378",
  lnr_cur = "#a2a5bb",

  -- syntax roles
  str = "#a26957",
  num = "#ad797f",
  typ = "#fce5a6",
  mod = "#e28363",
  prop = "#ac98bd",
  func = "#a26957",
  kw = "#fce5a6",
  op = "#ad797f",
  macro = "#fbcf8b",
  esc = "#faaa66",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#e28363",
  hint = "#a26957",
  ok = "#29b16d",
  accent = "#a26957",
  cursearch = "#fce5a6",
  subst = "#a26957",
  match = "#edc24a",
  title = "#a26957",
  dir = "#fce5a6",
  label = "#fce5a6",
  tag = "#fce5a6",
  h1 = "#fce5a6",
  h2 = "#a26957",
  h3 = "#a26957",
  h4 = "#fce5a6",
  h5 = "#e28363",
  h6 = "#ad797f",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#301309",
  diff_text = "#52200f",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#2b1008",
  vt_hint = "#280f07",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "corona", hue = 14, chroma = 28.5, cr = 4.69 },
    { key = "rust", hue = 353, chroma = 21.7, cr = 5.82 },
    { key = "ember", hue = 44, chroma = 33.6, cr = 16.90 },
    { key = "twilight", hue = 15, chroma = 47.0, cr = 7.66 },
    { key = "shadow", hue = 272, chroma = 21.9, cr = 7.98 },
    { key = "star", hue = 36, chroma = 40.1, cr = 14.40 },
    { key = "scorch", hue = 28, chroma = 51.7, cr = 11.01 },
  },
}

-- observatory-kepler90h -- the eight-planet system, in olive and gold
--
-- Source: the 2017 Kepler-90 release, the one announcing that a neural network
-- had found an eighth planet in data already searched by hand. Eight planets is
-- as many as the solar system has, and Kepler-90 h is the outermost, a gas
-- giant on a 331-day orbit; the whole system would fit inside Earth's.
--
-- Image: Kepler-90 h -- artist concept, NASA Ames (PIA22192).
-- NASA/Ames Research Center/Wendy Stenzel.
-- Sampled at 1280 x 386; 13% of the frame carried light.
--
-- The banner is a wide crop with the planets strung out from the star, and the
-- sampled colors are all olive, gold and ochre within a narrow wedge: the
-- artwork lights everything with the same star, so everything in it agrees in
-- hue. Thirteen per cent of the frame is lit, the least of any exoplanet here,
-- which makes this the darkest gold scheme in the collection.
--
-- Roles follow area.
--
-- What is in the frame, and the roles it takes:
--
--   unit_7        hue  45  16.87 contrast   5.8% of frame   escapes
--   olive         hue  56  13.86 contrast  15.7% of frame   numbers
--   amber         hue  53  10.84 contrast  13.4% of frame   strings, functions
--   ochre         hue  37  10.26 contrast   6.1% of frame   modules
--   band          hue  44   7.96 contrast  36.6% of frame   properties, keywords
--   dust          hue  31   5.77 contrast  14.1% of frame   types, operators
--   sand          hue  32   4.67 contrast   8.4% of frame   macros, imports
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
-- 1 of the 8 colors sampled from the frame were folded into their
-- nearest neighbour rather than kept: at this subject's hue span there is
-- not enough lightness left to hold that many apart at the family's
-- separation floor, and two colors a reader cannot distinguish are one
-- color. The folded share went to the neighbour, so the proportions of
-- the frame are still what the roles follow.
--
-- The frame also put two of its colors closer together than the family's
-- separation floor allows, so the ladder was spread to 5 points of
-- lightness between rungs rather than the three the picture asked for.
-- The order is still the picture's; the spacing is not.

return {
  name = "observatory-kepler90h",
  about = "the eight-planet system, in olive and gold",
  floor = 9.4,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#120e08",
  bg_float = "#181509",
  bg_sel = "#2d270f",
  bg_hl = "#423415",
  border = "#4c3f1d",
  bg_search = "#615522",
  nontext = "#413720",

  -- the text ladder
  text = "#c9c7c0",
  dim = "#b0aa9b",
  punct = "#9d927d",
  comment = "#827b66",
  lnr = "#6c6550",
  lnr_cur = "#aea590",

  -- syntax roles
  str = "#c8bc66",
  num = "#ded657",
  typ = "#9e8161",
  mod = "#eda83a",
  prop = "#b09e6d",
  func = "#c8bc66",
  kw = "#b09e6d",
  op = "#9e8161",
  macro = "#ae6510",
  esc = "#fce5a2",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#eda83a",
  hint = "#c8bc66",
  ok = "#29b16d",
  accent = "#c8bc66",
  cursearch = "#b09e6d",
  subst = "#c8bc66",
  match = "#edc24a",
  title = "#c8bc66",
  dir = "#9e8161",
  label = "#b09e6d",
  tag = "#b09e6d",
  h1 = "#b09e6d",
  h2 = "#c8bc66",
  h3 = "#c8bc66",
  h4 = "#9e8161",
  h5 = "#eda83a",
  h6 = "#ded657",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#241906",
  diff_text = "#402b0b",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#211606",
  vt_hint = "#191604",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "amber", hue = 53, chroma = 45.3, cr = 10.84 },
    { key = "olive", hue = 56, chroma = 63.2, cr = 13.86 },
    { key = "dust", hue = 31, chroma = 22.5, cr = 5.77 },
    { key = "ochre", hue = 37, chroma = 65.5, cr = 10.26 },
    { key = "band", hue = 44, chroma = 28.0, cr = 7.96 },
    { key = "sand", hue = 32, chroma = 59.2, cr = 4.67 },
    { key = "unit_7", hue = 45, chroma = 35.6, cr = 16.87 },
  },
}

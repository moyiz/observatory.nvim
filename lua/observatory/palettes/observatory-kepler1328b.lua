-- observatory-kepler1328b -- a terrestrial placeholder in tan and umber
--
-- Source: NASA's generic terrestrial illustration, served for Kepler-1328 b, a
-- planet a little larger than Earth on a nineteen-day orbit. No other planet in
-- this batch lands on the same file, so the palette is at least its own.
--
-- Image: Kepler-1328 b -- artist concept, NASA Exoplanet Catalog.
-- NASA/JPL-Caltech.
-- Sampled at 1280 x 720; 43% of the frame carried light.
--
-- The artwork is a dry rocky world lit from one side: tan crust, warmer dune,
-- and a fall to umber and near-black across the night side. Every sampled
-- color is within a narrow band of orange-brown, so this is a single-hue
-- scheme separated by light, and it sits between Arrokoth's red-brown and
-- Pluto's cream in the collection.
--
-- Roles follow area.
--
-- What is in the frame, and the roles it takes:
--
--   sand          hue  33  16.90 contrast  12.0% of frame   properties
--   dune          hue  34  11.51 contrast  16.4% of frame   functions, macros, imports, escapes
--   crust         hue  35   8.76 contrast  70.2% of frame   strings, keywords, types, numbers
--   shade         hue  11   4.67 contrast   1.4% of frame   operators, modules
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
-- and the closest pair of adjacent-capable roles sits at 17.6 Delta E.
--
-- 2 of the 6 colors sampled from the frame were folded into their
-- nearest neighbour rather than kept: at this subject's hue span there is
-- not enough lightness left to hold that many apart at the family's
-- separation floor, and two colors a reader cannot distinguish are one
-- color. The folded share went to the neighbour, so the proportions of
-- the frame are still what the roles follow.

return {
  name = "observatory-kepler1328b",
  about = "a terrestrial placeholder in tan and umber",
  floor = 17.6,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#130e08",
  bg_float = "#1a140a",
  bg_sel = "#312610",
  bg_hl = "#483117",
  border = "#523e20",
  bg_search = "#695125",
  nontext = "#453522",

  -- the text ladder
  text = "#d1d0cd",
  dim = "#b2a99d",
  punct = "#a39f9a",
  comment = "#837764",
  lnr = "#706350",
  lnr_cur = "#b1a493",

  -- syntax roles
  str = "#c0a37a",
  num = "#c0a37a",
  typ = "#c0a37a",
  mod = "#a4675a",
  prop = "#fbe3c5",
  func = "#fbb151",
  kw = "#c0a37a",
  op = "#a4675a",
  macro = "#fbb151",
  esc = "#fbb151",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#e5c979",
  info = "#a4675a",
  hint = "#c0a37a",
  ok = "#29b16d",
  accent = "#fbb151",
  cursearch = "#c0a37a",
  subst = "#c0a37a",
  match = "#e5c979",
  title = "#fbb151",
  dir = "#c0a37a",
  label = "#c0a37a",
  tag = "#c0a37a",
  h1 = "#c0a37a",
  h2 = "#fbb151",
  h3 = "#c0a37a",
  h4 = "#c0a37a",
  h5 = "#a4675a",
  h6 = "#c0a37a",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#331109",
  diff_text = "#581c0f",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#2d0f08",
  vt_hint = "#1e1405",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "crust", hue = 35, chroma = 25.7, cr = 8.76 },
    { key = "shade", hue = 11, chroma = 28.9, cr = 4.67 },
    { key = "sand", hue = 33, chroma = 18.0, cr = 16.90 },
    { key = "dune", hue = 34, chroma = 61.0, cr = 11.51 },
  },
}

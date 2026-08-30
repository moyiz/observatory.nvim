-- observatory-osiris -- a planet boiling away, gold against an ice-blue tail
--
-- Source: the ESA/NASA/STScI illustration from the 2003 release that announced
-- HD 209458 b was evaporating. This planet is the workhorse of exoplanet
-- science: the first one seen to transit its star, in 1999, which is how the
-- transit method got started; the first with a detected atmosphere, sodium, in
-- 2001; then hydrogen streaming away from it at 35,000 kilometers an hour,
-- losing perhaps ten thousand tonnes a second in a tail long enough to be seen
-- in silhouette. Hence the nickname: Osiris, dismembered by his brother.
--
-- Image: HD 209458 b (nicknamed Osiris), the evaporating planet -- artist's illustration, ESA/NASA/STScI (2003 evaporating-planet release).
-- ESA, Alfred Vidal-Madjar (Institut d'Astrophysique de Paris, CNRS, France) and NASA.
-- Sampled at 1305 x 1865; 68% of the frame carried light.
--
-- Two thirds of this frame is lit, more than any other picture in the
-- collection, and it is split between two things. A gold and amber stellar limb
-- boils up one side -- three of the eight colors are the star -- and a broad
-- pale ice-blue tail streams across the other, which is where the largest single
-- share of the frame sits. The planet itself is a small bronze disc between
-- them. So the palette is a hot gold scheme built around one cool value that
-- covers more ground than any of the golds do, and that inversion is the
-- illustration's point: the interesting object is the gas that has left.
--
-- Roles follow area over the eight largest of twelve sampled colors.
--
-- What is in the frame, and the roles it takes:
--
--   flare         hue  50  16.90 contrast  13.2% of frame   strings
--   star          hue  39  15.68 contrast  15.7% of frame   numbers, macros, imports
--   tail          hue 202  12.42 contrast  43.8% of frame   properties, modules
--   gold          hue  41  10.93 contrast   2.9% of frame   functions
--   planet        hue  34   7.65 contrast   4.7% of frame   operators
--   limb          hue  31   7.49 contrast  13.2% of frame   keywords
--   haze          hue  34   7.43 contrast   4.3% of frame   types
--   umbra         hue  21   4.72 contrast   2.1% of frame   escapes
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
-- and the closest pair of adjacent-capable roles sits at 16.8 Delta E.

return {
  name = "observatory-osiris",
  about = "a planet boiling away, gold against an ice-blue tail",
  floor = 16.8,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#080f13",
  bg_float = "#0b161d",
  bg_sel = "#132a3a",
  bg_hl = "#173a48",
  border = "#224558",
  bg_search = "#2b597b",
  nontext = "#223b45",

  -- the text ladder
  text = "#c2c6c8",
  dim = "#a0adb4",
  punct = "#88a3ae",
  comment = "#72797d",
  lnr = "#4f6977",
  lnr_cur = "#95a9b2",

  -- syntax roles
  str = "#fce783",
  num = "#f8dba7",
  typ = "#a99780",
  mod = "#9bceeb",
  prop = "#9bceeb",
  func = "#e7b346",
  kw = "#d68934",
  op = "#c19459",
  macro = "#f8dba7",
  esc = "#9e6c51",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#f8b806",
  info = "#9bceeb",
  hint = "#fce783",
  ok = "#29b16d",
  accent = "#e7b346",
  cursearch = "#d68934",
  subst = "#fce783",
  match = "#f8b806",
  title = "#e7b346",
  dir = "#a99780",
  label = "#d68934",
  tag = "#d68934",
  h1 = "#d68934",
  h2 = "#e7b346",
  h3 = "#fce783",
  h4 = "#a99780",
  h5 = "#9bceeb",
  h6 = "#f8dba7",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#071d2a",
  diff_text = "#0d3248",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#061a24",
  vt_hint = "#1a1605",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "flare", hue = 50, chroma = 51.3, cr = 16.90 },
    { key = "star", hue = 39, chroma = 29.4, cr = 15.68 },
    { key = "haze", hue = 34, chroma = 14.8, cr = 7.43 },
    { key = "tail", hue = 202, chroma = 21.9, cr = 12.42 },
    { key = "gold", hue = 41, chroma = 61.1, cr = 10.93 },
    { key = "limb", hue = 31, chroma = 59.7, cr = 7.49 },
    { key = "planet", hue = 34, chroma = 38.8, cr = 7.65 },
    { key = "umbra", hue = 21, chroma = 28.5, cr = 4.72 },
  },
}

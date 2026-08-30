-- observatory-syzygy -- separation spent where tokens actually touch
--
-- Source: 130,136 adjacent token pairs measured with treesitter across the
-- 72 Lua files of this configuration. A syzygy is an alignment of bodies;
-- here it is an alignment of captures.
--
-- Maximising the worst pair, as observatory-lagrange does, treats every pair as
-- equally important. Real code does not. In this configuration a property
-- touches plain text 23,664 times and a keyword touches a property four
-- times, so those two pairs deserve very different budgets. This palette
-- demands separation in proportion to log frequency and lets the rare pairs
-- crowd together, on the grounds that you will hardly ever see them meet.
--
-- Solved like observatory-lagrange, against the same obstacles and the same hue
-- rule, but each pair was given a requirement of 7 + ln(count) Delta E and
-- the solver
-- maximised the worst ratio of achieved to required, reaching 1.66. Against
-- observatory-lagrange, which solved the identical ladder with a flat objective,
-- the weighting moved separation onto the common pairs in 1 of the 6 most
-- frequent, by -22.1 Delta E on average:
--
--   prop/text       23664 adjacent   flat 21.8   weighted 32.2
--   punct/text      22999 adjacent   flat 48.1   weighted 28.3
--   punct/typ       19386 adjacent   flat 65.2   weighted 45.4
--   op/text         13961 adjacent   flat 106.8   weighted 59.8
--   op/prop         11209 adjacent   flat 120.7   weighted 68.1
--   prop/punct      10698 adjacent   flat 38.5   weighted 34.6
--
-- The pairs that lost separation are the ones that had the most to give:
-- every one of them started above 38 Delta E, far past anything you could
-- mistake, so trading it for the pairs below was free in practice.
--
-- The measurement is of Lua, so delimiters, properties and plain text
-- dominate and keywords barely register. A palette tuned this way is tuned
-- to a language, which is either the point or the flaw depending on how much
-- Lua you read.
--
-- Construction follows the rest of the family: every foreground is solved
-- by binary search for an exact contrast ratio against #000000, each accent
-- is the most chromatic form of its hue that still meets that ratio under a
-- per-role cap, and the closest pair of adjacent-capable roles sits at
-- 15.5 Delta E.

return {
  name = "observatory-syzygy",
  about = "separation spent where tokens actually touch",
  floor = 15.5,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#0a0f17",
  bg_float = "#0d1623",
  bg_sel = "#172746",
  bg_hl = "#1f3463",
  border = "#2a406d",
  bg_search = "#31558b",
  nontext = "#293754",

  -- the text ladder
  text = "#dbdddf",
  dim = "#a9afbc",
  punct = "#a99a83",
  comment = "#638685",
  lnr = "#5d6a8b",
  lnr_cur = "#a3abbc",

  -- syntax roles
  str = "#9b9cea",
  num = "#d85a8f",
  typ = "#72b5e3",
  mod = "#9abbd1",
  prop = "#82cdb1",
  func = "#45e536",
  kw = "#fa42e8",
  op = "#b56c39",
  macro = "#d37fdb",
  esc = "#90915a",

  -- interface duties, following the syntax colors
  err = "#f44c52",
  warn = "#edc24a",
  info = "#9abbd1",
  hint = "#9b9cea",
  ok = "#29b16d",
  accent = "#45e536",
  cursearch = "#fa42e8",
  subst = "#9b9cea",
  match = "#edc24a",
  title = "#45e536",
  dir = "#72b5e3",
  label = "#fa42e8",
  tag = "#fa42e8",
  h1 = "#fa42e8",
  h2 = "#45e536",
  h3 = "#9b9cea",
  h4 = "#72b5e3",
  h5 = "#9abbd1",
  h6 = "#d85a8f",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#081c2b",
  diff_text = "#0d334b",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#071a26",
  vt_hint = "#0c0d45",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "indigo", hue = 239, chroma = 43.1, cr = 8.34 },
    { key = "rose", hue = 335, chroma = 54.7, cr = 5.78 },
    { key = "azure", hue = 204, chroma = 30.9, cr = 9.43 },
    { key = "sky", hue = 204, chroma = 15.9, cr = 10.40 },
    { key = "teal", hue = 158, chroma = 30.3, cr = 11.32 },
    { key = "green2", hue = 115, chroma = 98.5, cr = 12.51 },
    { key = "magenta2", hue = 306, chroma = 95.8, cr = 7.01 },
    { key = "vermilion", hue = 25, chroma = 47.1, cr = 5.17 },
    { key = "magenta", hue = 295, chroma = 57.5, cr = 7.83 },
    { key = "citron", hue = 61, chroma = 30.5, cr = 6.38 },
  },
}

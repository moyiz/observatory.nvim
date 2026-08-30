-- observatory-cooling -- a white dwarf, from 100,000 K down to nothing
--
-- Source: the white dwarf cooling sequence, which is the last thing 97 per cent
-- of stars do. A dwarf is born as the exposed core of a dead star at 100,000 K
-- or more, has no fusion left to hold itself up with, and simply radiates its
-- stored heat away at fixed size for the rest of time. The rungs are that
-- track: 30,000 K after about ten million years, 20,000 after a hundred
-- million, 10,000 after a billion, 6,000 after five, 4,500 after ten -- roughly
-- the age of the galaxy -- and the coolest dwarfs found so far, near 3,300 K,
-- which are effectively as old as the disc. Each temperature becomes sRGB
-- through the Planck curve.
--
-- So the ladder is a clock. Cooling is slow, predictable and dominated by
-- simple physics, which is why counting dwarfs by temperature dates a star
-- cluster or the galactic disc: the faintest, reddest one in a population tells
-- you when that population started. This palette is that measurement read as a
-- color -- blue-white at the top for an object minutes old in stellar terms,
-- deep amber at the bottom for one that has been cooling since before the Sun
-- formed.
--
-- It is also the family's cleanest traverse of the Planckian locus, and it
-- shows what that locus costs. Seven rungs spanning a factor of thirty in
-- temperature yield exactly two hue families, blue-white and amber, with a
-- near-neutral crossing at the fifth rung where 6,000 K passes through white.
-- There is no green, no violet and nothing in between, because a blackbody
-- cannot produce them: `observatory-cepheid`, `observatory-sirius` and
-- `observatory-carbon` all hit the same wall from inside one of the two
-- families, and this one hits it by crossing.
--
-- Two things the ladder leaves out. Cooling is not smooth: as the interior
-- crystallises it releases latent heat and the star pauses on its way down,
-- which Gaia sees as a pile-up of dwarfs at one color, and the coolest dwarfs
-- cool faster again once conduction takes over. And there is a floor in
-- practice rather than in principle -- nothing colder than about 3,000 K has
-- been identified, because by then the object is far too faint to find, not
-- because the track stops. Where it does end is `observatory-blackdwarf`.
--
-- Ages, and the roles they take:
--
--   newborn      hue 219   16.88 contrast   properties
--   myr_10       hue 221   12.90 contrast   functions
--   myr_100      hue 220    9.49 contrast   modules
--   gyr_5        hue  31    8.20 contrast   strings, escapes
--   gyr_1        hue 222    7.54 contrast   types
--   gyr_10       hue  27    6.44 contrast   keywords, macros, imports
--   coolest      hue  28    4.79 contrast   numbers, operators
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
-- 17.8 Delta E.

return {
  name = "observatory-cooling",
  about = "a white dwarf, from 100,000 K down to nothing",
  floor = 17.8,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#0a0e16",
  bg_float = "#0e1524",
  bg_sel = "#19254b",
  bg_hl = "#1d355d",
  border = "#2a3f6d",
  bg_search = "#37509d",
  nontext = "#293852",

  -- the text ladder
  text = "#b9bcc0",
  dim = "#a5aab6",
  punct = "#5379b5",
  comment = "#7b7f88",
  lnr = "#54658a",
  lnr_cur = "#9ea7b6",

  -- syntax roles
  str = "#b59e86",
  num = "#bf5d0a",
  typ = "#8b9bbf",
  mod = "#8aaef8",
  prop = "#dce7fc",
  func = "#b5cbfb",
  kw = "#c57e42",
  op = "#bf5d0a",
  macro = "#c57e42",
  esc = "#b59e86",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#8aaef8",
  hint = "#b59e86",
  ok = "#29b16d",
  accent = "#b5cbfb",
  cursearch = "#c57e42",
  subst = "#b59e86",
  match = "#edc24a",
  title = "#b5cbfb",
  dir = "#8b9bbf",
  label = "#c57e42",
  tag = "#c57e42",
  h1 = "#c57e42",
  h2 = "#b5cbfb",
  h3 = "#b59e86",
  h4 = "#8b9bbf",
  h5 = "#8aaef8",
  h6 = "#bf5d0a",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#0a1a3a",
  diff_text = "#122c64",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#091632",
  vt_hint = "#211306",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "gyr_5", hue = 31, chroma = 16.3, cr = 8.20 },
    { key = "coolest", hue = 28, chroma = 67.2, cr = 4.79 },
    { key = "gyr_1", hue = 222, chroma = 20.6, cr = 7.54 },
    { key = "myr_100", hue = 220, chroma = 41.2, cr = 9.49 },
    { key = "newborn", hue = 219, chroma = 11.4, cr = 16.88 },
    { key = "myr_10", hue = 221, chroma = 26.2, cr = 12.90 },
    { key = "gyr_10", hue = 27, chroma = 48.5, cr = 6.44 },
  },
}

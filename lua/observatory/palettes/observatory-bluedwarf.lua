-- observatory-bluedwarf -- a red dwarf's whole future, in six steps
--
-- Source: Laughlin, Bodenheimer and Adams' calculations of the end of the main
-- sequence, run on a star of about 0.16 solar masses -- which is Barnard's
-- Star, the second nearest system to the Sun, at 3,134 K today. A red dwarf
-- that small is fully convective, so it circulates its own ash and gets to burn
-- very nearly all of its hydrogen rather than the tenth the Sun will manage.
-- That takes about two and a half trillion years, and as the helium fraction
-- rises the star contracts, brightens and heats: it spends roughly five billion
-- years between 6,500 K and 8,500 K, a blue-white A-type star a third as
-- luminous as the Sun, before running out and settling as a helium white dwarf.
-- Each rung is that track through the Planck curve.
--
-- No blue dwarf exists. The universe is 13.8 billion years old and the first
-- one is trillions of years away, so this is a palette of a predicted color --
-- the only scheme in the collection whose subject is entirely in the future,
-- and the only one where reading down the ladder means reading forward in time
-- rather than outward in space. The bottom rung is the exception: a starspot on
-- the star as it is now, several hundred degrees below its already cool
-- surface.
--
-- The track crosses the white point, and the palette shows it. At 6,500 K a
-- blackbody has a computed chroma of about 2 -- it is white, not warm and not
-- cool -- so the fourth rung down is very nearly a neutral, sitting between the
-- ambers above it and the blues below. That is where the Planckian locus
-- actually passes, and a scheme built on stellar temperatures either crosses it
-- or stays on one side. Most of this family stays on one side.
--
-- It is worth saying what does not happen. Stars under about 0.20 solar masses
-- never become red giants at all -- they grow neither red nor giant -- so this
-- is the whole of the star's remaining life, not a stage in it. Nor does the
-- name promise very much: the bluest model run, at 0.14 solar masses, tops out
-- near 8,600 K, which is an A star rather than a blue one. The palette is
-- honest about that -- the last thermal rung is a pale blue-white, not a
-- sapphire -- and `observatory-rigel` is what an actually blue star looks like.
--
-- Compare `observatory-cooling`, which walks the same locus in the other
-- direction over a comparable stretch of time, and is a measured sequence
-- rather than a predicted one.
--
-- Stages, and the roles they take:
--
--   today        hue  28   16.25 contrast   properties
--   gyr_500      hue  28   11.52 contrast   functions
--   tyr_1        hue  27    9.07 contrast   modules
--   tyr_2        hue  48    8.35 contrast   types
--   tyr_25       hue 228    7.98 contrast   strings, escapes
--   peak         hue 224    6.84 contrast   keywords, macros, imports
--   starspot     hue  28    4.82 contrast   numbers, operators
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
-- 19.0 Delta E.

return {
  name = "observatory-bluedwarf",
  about = "a red dwarf's whole future, in six steps",
  floor = 19.0,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#140d08",
  bg_float = "#1d130b",
  bg_sel = "#362512",
  bg_hl = "#4f2d19",
  border = "#583b22",
  bg_search = "#714d28",
  nontext = "#4a3324",

  -- the text ladder
  text = "#cccac7",
  dim = "#b3a9a1",
  punct = "#7f7873",
  comment = "#947251",
  lnr = "#7a604a",
  lnr_cur = "#b2a397",

  -- syntax roles
  str = "#949ec8",
  num = "#bf5e08",
  typ = "#b5a35a",
  mod = "#c2a58e",
  prop = "#fcddc1",
  func = "#ecb586",
  kw = "#7691db",
  op = "#bf5e08",
  macro = "#7691db",
  esc = "#949ec8",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#c2a58e",
  hint = "#949ec8",
  ok = "#29b16d",
  accent = "#ecb586",
  cursearch = "#7691db",
  subst = "#949ec8",
  match = "#edc24a",
  title = "#ecb586",
  dir = "#b5a35a",
  label = "#7691db",
  tag = "#7691db",
  h1 = "#7691db",
  h2 = "#ecb586",
  h3 = "#949ec8",
  h4 = "#b5a35a",
  h5 = "#c2a58e",
  h6 = "#bf5e08",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#2a1607",
  diff_text = "#49280d",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#241406",
  vt_hint = "#0a1237",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "tyr_25", hue = 228, chroma = 23.5, cr = 7.98 },
    { key = "starspot", hue = 28, chroma = 67.4, cr = 4.82 },
    { key = "tyr_2", hue = 48, chroma = 40.2, cr = 8.35 },
    { key = "tyr_1", hue = 27, chroma = 17.4, cr = 9.07 },
    { key = "today", hue = 28, chroma = 18.8, cr = 16.25 },
    { key = "gyr_500", hue = 28, chroma = 34.6, cr = 11.52 },
    { key = "peak", hue = 224, chroma = 42.0, cr = 6.84 },
  },
}

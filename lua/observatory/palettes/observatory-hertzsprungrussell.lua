-- observatory-hertzsprungrussell -- a color-magnitude diagram, both axes used
--
-- Source: the Hertzsprung-Russell diagram, which plots color against
-- brightness and is therefore already most of a palette. Hue comes from each
-- population's color index, turned into a temperature by Ballesteros' fit
-- and then into sRGB through the Planck curve. Contrast comes from its
-- absolute magnitude, linearly in magnitudes.
--
-- Seven populations: the upper main sequence, the red giant branch, classes
-- A, F-G, K and M on the main sequence, and the white dwarf cooling
-- sequence. Bright and blue at one end, faint and red at the other, with the
-- giants breaking the pattern by being red and bright at once, which is the
-- whole reason the diagram is interesting.
--
-- `observatory-nightsky` takes the main sequence alone and chooses its
-- brightnesses; this takes the diagram and derives them, so the ladder here
-- carries information. Saturation is derived as well, from the computed
-- chroma of each population's blackbody color: the extremes are vivid and
-- the near-solar classes are nearly white, which is true of the sky and also
-- the only thing keeping class F-G apart from class K, since below six
-- thousand kelvin two stars differ in purity rather than in hue. Only the
-- spacing of the ladder was solved. Its order never moves, so reading top to
-- bottom really is reading down the magnitude axis.
--
-- The diagram has more populations than sRGB can hold. Blackbody hue stops
-- changing above about eight thousand kelvin, so the horizontal branch, the
-- blue stragglers and class A are one blue between them and only class A is
-- here; the asymptotic giant branch tip sits beside the red giant branch in
-- both color and magnitude and was dropped for the same reason. Seven
-- populations is what the display can distinguish, not what the sky has.
--
-- Which population gets which role follows abundance, as far as a luminosity
-- ladder allows. Class K takes strings, and with them the largest share of a
-- buffer. Class M ought to have it -- three quarters of all stars are red
-- dwarfs -- but class M is also the faintest rung here, and a color at 4.8
-- contrast cannot carry a fifth of the characters on a screen and stay
-- readable. So the most numerous class the ladder can afford takes the role,
-- and the white dwarfs, which are perhaps a twentieth of nearby stars, drop
-- from strings to keywords.
--
-- Populations, and the roles they take:
--
--   red_giant    hue  29   16.94 contrast   functions
--   class_ob     hue 219   16.88 contrast   properties
--   class_a      hue 221   12.10 contrast   modules
--   class_k      hue  27   11.51 contrast   strings, escapes
--   class_fg     hue  32    9.87 contrast   types
--   white_dwarf  hue 225    5.54 contrast   keywords, macros, imports
--   class_m      hue  27    4.79 contrast   numbers, operators
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
-- 17.5 Delta E.

return {
  name = "observatory-hertzsprungrussell",
  about = "a color-magnitude diagram, both axes used",
  floor = 17.5,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#090f16",
  bg_float = "#0d1524",
  bg_sel = "#19264a",
  bg_hl = "#1d365b",
  border = "#2a406d",
  bg_search = "#36509a",
  nontext = "#283951",

  -- the text ladder
  text = "#b5b9c2",
  dim = "#a5aab6",
  punct = "#747880",
  comment = "#8897b9",
  lnr = "#53658a",
  lnr_cur = "#9da6b7",

  -- syntax roles
  str = "#e8b68d",
  num = "#b96118",
  typ = "#c1af9b",
  mod = "#b0c5f1",
  prop = "#dce7fc",
  func = "#f0e5db",
  kw = "#6d81bf",
  op = "#b96118",
  macro = "#6d81bf",
  esc = "#e8b68d",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#b0c5f1",
  hint = "#e8b68d",
  ok = "#29b16d",
  accent = "#f0e5db",
  cursearch = "#6d81bf",
  subst = "#e8b68d",
  match = "#edc24a",
  title = "#f0e5db",
  dir = "#c1af9b",
  label = "#6d81bf",
  tag = "#6d81bf",
  h1 = "#6d81bf",
  h2 = "#f0e5db",
  h3 = "#e8b68d",
  h4 = "#c1af9b",
  h5 = "#b0c5f1",
  h6 = "#b96118",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#0a193a",
  diff_text = "#122c65",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#091633",
  vt_hint = "#221306",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "class_k", hue = 27, chroma = 30.6, cr = 11.51 },
    { key = "class_m", hue = 27, chroma = 61.3, cr = 4.79 },
    { key = "class_fg", hue = 32, chroma = 13.0, cr = 9.87 },
    { key = "class_a", hue = 221, chroma = 24.2, cr = 12.10 },
    { key = "class_ob", hue = 219, chroma = 11.4, cr = 16.88 },
    { key = "red_giant", hue = 29, chroma = 6.5, cr = 16.94 },
    { key = "white_dwarf", hue = 225, chroma = 35.9, cr = 5.54 },
  },
}

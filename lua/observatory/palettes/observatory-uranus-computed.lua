-- observatory-uranus-computed -- the most featureless palette here, and honestly so
--
-- Source: Uranus, which is aquamarine because methane in its upper
-- atmosphere absorbs red light, and which is otherwise almost blank. Voyager
-- 2 flew past in 1986 and returned a disc with essentially no features on
-- it; the faint polar brightening and the 2007-equinox clouds are the whole
-- inventory.
--
-- A world with one color and no contrast makes a poor color scheme, so
-- this one does not pretend otherwise. Seven colors cover thirteen roles,
-- all inside fourteen degrees of hue, and nearly all of the separation is
-- lightness. By mean chroma it is the least colorful scheme in the whole
-- family, narrowly below `observatory-nightsky`.
--
-- Fitting 10 colors into fourteen degrees of hue should not work, since
-- brightness is normally all that is left to separate them, and there is not
-- room for that many distinguishable steps between the contrast floor and
-- white. What makes it work is alternating chroma between the rungs: a pale
-- value, then a saturated one, then a pale one, so consecutive rungs differ
-- in colorfulness as well as lightness. Read the contrasts below against
-- the palette and the zig-zag is visible.
--
-- Types still share with modules, macros with keywords and escapes with
-- strings, because the hue has no room for genuinely separate colors there.
-- Compare `observatory-neptune`, a deeper blue from the other ice giant, and
-- `observatory-titan`, the same idea in orange.
--
-- Units, and the roles they take:
--
--   cap          hue 180   16.85 contrast   properties
--   aquamarine   hue 184   14.71 contrast   functions
--   methane      hue 178   11.63 contrast   types, modules
--   cloud        hue 189   10.68 contrast   strings, escapes
--   ring         hue 182    7.68 contrast   numbers
--   limb         hue 192    6.61 contrast   keywords, macros, imports
--   dark         hue 190    4.57 contrast   operators
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
-- 13.2 Delta E.

return {
  name = "observatory-uranus-computed",
  about = "the most featureless palette here, and honestly so",
  floor = 13.2,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#071010",
  bg_float = "#0a1719",
  bg_sel = "#102c31",
  bg_hl = "#133b3c",
  border = "#1d474b",
  bg_search = "#245c67",
  nontext = "#1e3c3e",

  -- the text ladder
  text = "#c2c7c7",
  dim = "#9bafb1",
  punct = "#99a2a2",
  comment = "#727c7e",
  lnr = "#426b70",
  lnr_cur = "#8eabae",

  -- syntax roles
  str = "#91c1c9",
  num = "#57a9ac",
  typ = "#58d3cf",
  mod = "#58d3cf",
  prop = "#d3ebeb",
  func = "#97e5ea",
  kw = "#259dba",
  op = "#497d88",
  macro = "#259dba",
  esc = "#91c1c9",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#58d3cf",
  hint = "#91c1c9",
  ok = "#29b16d",
  accent = "#97e5ea",
  cursearch = "#259dba",
  subst = "#91c1c9",
  match = "#edc24a",
  title = "#97e5ea",
  dir = "#58d3cf",
  label = "#259dba",
  tag = "#259dba",
  h1 = "#259dba",
  h2 = "#97e5ea",
  h3 = "#91c1c9",
  h4 = "#58d3cf",
  h5 = "#58d3cf",
  h6 = "#57a9ac",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#051e1e",
  diff_text = "#093534",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#051c1b",
  vt_hint = "#05191c",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "cloud", hue = 189, chroma = 16.6, cr = 10.68 },
    { key = "ring", hue = 182, chroma = 25.8, cr = 7.68 },
    { key = "methane", hue = 178, chroma = 35.8, cr = 11.63 },
    { key = "cap", hue = 180, chroma = 8.3, cr = 16.85 },
    { key = "aquamarine", hue = 184, chroma = 24.8, cr = 14.71 },
    { key = "limb", hue = 192, chroma = 32.5, cr = 6.61 },
    { key = "dark", hue = 190, chroma = 18.3, cr = 4.57 },
  },
}

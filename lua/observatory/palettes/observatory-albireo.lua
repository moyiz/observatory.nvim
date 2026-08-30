-- observatory-albireo -- the color-contrast doubles, and the green that isn't
--
-- Source: the double stars observers point telescopes at for their colors
-- rather than their separations. Albireo is the famous one -- a K3 II giant
-- at about 4400 K beside a B8 V dwarf at 13200, reported for two centuries as
-- topaz and sapphire. Antares pairs a 3660 K supergiant with an 18500 K
-- companion, 95 Herculis an 8000 K giant with one at 5000, and eta Cassiopeiae
-- adds a 4000 K dwarf. Temperatures become sRGB through the Planck curve, and
-- saturation is the computed chroma of the same color.
--
-- A color-contrast double is a warm star and a cool star at one lightness,
-- which is exactly what a palette wants, so this scheme alternates the two
-- families strictly down the ladder: no two neighbouring rungs come from the
-- same side of the spectrum. Four warm values, three cool, alternating from an
-- amber top rung, and every one of them is a star somebody has looked at
-- through glass. The order is held rather than solved, since the alternation is
-- the whole idea and the solver would happily trade it away.
--
-- The thing this palette cannot supply is the color these doubles are most
-- often described as having. 95 Herculis is reported as apple green and
-- cherry red; Antares' companion is called green by nearly everyone who sees
-- it. No star is green. A blackbody peaking at 550 nm still emits copiously at
-- both ends of the visible band and comes out white, which is why the stellar
-- locus runs from blue-white through white to orange and never passes through
-- green at all. The reported greens are simultaneous contrast -- the eye's
-- response to a saturated red or orange beside a neutral -- so they exist in
-- the observer rather than in the sky, and a color scheme has no honest way
-- to include them.
--
-- Components, and the roles they take:
--
--   albireo_a    hue  28   14.23 contrast   properties
--   albireo_b    hue 221   13.55 contrast   functions
--   antares_a    hue  27   10.84 contrast   modules
--   her95_a      hue 224    8.76 contrast   keywords, macros, imports
--   her95_b      hue  27    8.12 contrast   types
--   antares_b    hue 220    6.26 contrast   strings, escapes
--   etacas_b     hue  27    4.77 contrast   numbers, operators
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
  name = "observatory-albireo",
  about = "the color-contrast doubles, and the green that isn't",
  floor = 18.8,

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
  text = "#babcc1",
  dim = "#a5aab6",
  punct = "#8496af",
  comment = "#5c76b4",
  lnr = "#53658a",
  lnr_cur = "#9da6b7",

  -- syntax roles
  str = "#5689f2",
  num = "#b36425",
  typ = "#bf9a7b",
  mod = "#edad77",
  prop = "#ead0ba",
  func = "#bed0f7",
  kw = "#91a6e2",
  op = "#b36425",
  macro = "#91a6e2",
  esc = "#5689f2",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#edad77",
  hint = "#5689f2",
  ok = "#29b16d",
  accent = "#bed0f7",
  cursearch = "#91a6e2",
  subst = "#5689f2",
  match = "#edc24a",
  title = "#bed0f7",
  dir = "#bf9a7b",
  label = "#91a6e2",
  tag = "#91a6e2",
  h1 = "#91a6e2",
  h2 = "#bed0f7",
  h3 = "#5689f2",
  h4 = "#bf9a7b",
  h5 = "#edad77",
  h6 = "#b36425",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#2a1707",
  diff_text = "#48280d",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#241406",
  vt_hint = "#081530",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "antares_b", hue = 220, chroma = 59.9, cr = 6.26 },
    { key = "etacas_b", hue = 27, chroma = 54.6, cr = 4.77 },
    { key = "her95_b", hue = 27, chroma = 23.5, cr = 8.12 },
    { key = "antares_a", hue = 27, chroma = 40.7, cr = 10.84 },
    { key = "albireo_a", hue = 28, chroma = 15.3, cr = 14.23 },
    { key = "albireo_b", hue = 221, chroma = 21.3, cr = 13.55 },
    { key = "her95_a", hue = 224, chroma = 33.4, cr = 8.76 },
  },
}

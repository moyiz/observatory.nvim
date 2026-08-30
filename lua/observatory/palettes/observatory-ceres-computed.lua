-- observatory-ceres-computed -- bright salt on a very dark world
--
-- Source: Dawn at Ceres. The body is dark -- around nine per cent of light
-- reflected, carbon-rich, unremarkable -- except in Occator crater, where
-- Cerealia and Vinalia Faculae are brilliant white deposits of sodium
-- carbonate: salt left behind by brine that reached the surface and boiled
-- away. Dawn also separated fresh material, which is slightly blue, from
-- older material, which is redder -- Haulani, one of the youngest large
-- craters on the body, is the clearest instance of the blue.
--
-- The scheme is built around that one jump. Properties take the facula at the
-- ceiling of the usable contrast range, 16.9 against black, while the
-- ground sits just above the accessibility floor -- a spotlight on a dark
-- surface, which is what Occator is, and a palette that uses the whole range
-- it is allowed rather than the comfortable middle of it.
--
-- The blue-fresh against red-old distinction supplies the only hue variety,
-- and it is a measurement rather than a decoration: it is how the mission
-- dated surfaces. Strings take Haulani, the bluest large unit on the body,
-- types the fresh blue elsewhere, and keywords the older red.
--
-- Units, and the roles they take:
--
--   cerealia     hue  51   16.91 contrast   properties
--   vinalia      hue  46   11.66 contrast   functions
--   fresh        hue 211   11.25 contrast   types
--   ahuna        hue  41   10.71 contrast   modules
--   older        hue  28    8.44 contrast   keywords, macros, imports
--   haulani      hue 216    7.47 contrast   strings, escapes
--   shadow       hue 220    4.77 contrast   operators
--   crater       hue  24    4.71 contrast   numbers
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
-- 18.0 Delta E.

return {
  name = "observatory-ceres-computed",
  about = "bright salt on a very dark world",
  floor = 18.0,

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
  text = "#bec1c8",
  dim = "#a5aab6",
  punct = "#8c9097",
  comment = "#69789b",
  lnr = "#53658a",
  lnr_cur = "#9da6b7",

  -- syntax roles
  str = "#759cd5",
  num = "#a8683e",
  typ = "#a0c1e5",
  mod = "#c5b89c",
  prop = "#eae7d7",
  func = "#d5c07c",
  kw = "#d09968",
  op = "#5177c2",
  macro = "#d09968",
  esc = "#759cd5",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#c5b89c",
  hint = "#759cd5",
  ok = "#29b16d",
  accent = "#d5c07c",
  cursearch = "#d09968",
  subst = "#759cd5",
  match = "#edc24a",
  title = "#d5c07c",
  dir = "#a0c1e5",
  label = "#d09968",
  tag = "#d09968",
  h1 = "#d09968",
  h2 = "#d5c07c",
  h3 = "#759cd5",
  h4 = "#a0c1e5",
  h5 = "#c5b89c",
  h6 = "#a8683e",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#231906",
  diff_text = "#3d2d0b",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#1e1705",
  vt_hint = "#08162b",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "haulani", hue = 216, chroma = 33.3, cr = 7.47 },
    { key = "crater", hue = 24, chroma = 40.3, cr = 4.71 },
    { key = "fresh", hue = 211, chroma = 21.7, cr = 11.25 },
    { key = "ahuna", hue = 41, chroma = 15.9, cr = 10.71 },
    { key = "cerealia", hue = 51, chroma = 8.3, cr = 16.91 },
    { key = "vinalia", hue = 46, chroma = 37.0, cr = 11.66 },
    { key = "older", hue = 28, chroma = 36.8, cr = 8.44 },
    { key = "shadow", hue = 220, chroma = 44.3, cr = 4.77 },
  },
}

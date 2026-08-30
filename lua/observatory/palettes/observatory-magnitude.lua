-- observatory-magnitude -- the eight brightest stars, with Vega at zero
--
-- Source: the eight brightest stars in the sky, in order -- Sirius at
-- magnitude -1.46, Canopus at -0.74, Alpha Centauri at -0.27, Arcturus at
-- -0.05, Vega at 0.03, Capella at 0.08, Rigel at 0.13, Betelgeuse at 0.50 --
-- with each color computed from that star's effective temperature through the
-- Planck curve, and its saturation from the chroma of the same color.
--
-- Vega is the reason the list is arranged this way. The magnitude scale was
-- zeroed on it, and for most of the twentieth century so was color: Vega's
-- color index is 0.00 by definition, and every other star's color is a
-- measurement of how it differs. So this palette is a ruler with its zero
-- mark five rungs down, and `observatory-hertzsprungrussell`, `observatory-extinction`, `observatory-cepheid`
-- and `observatory-carbon` are all built on quantities that only mean anything
-- because this star was measured first.
--
-- The ladder is brightness rank, evenly spaced, not magnitude -- the top eight
-- stars span barely two magnitudes and would otherwise pile into the top of
-- the contrast range. `observatory-albedo` makes the same compromise for the
-- planets. What survives the ranking is the ordering, which is the part worth
-- having: the palette is the night sky sorted by how much of it reaches you.
--
-- The distribution is visibly bimodal, and that is real rather than a
-- selection effect. There are two ways for a star to be bright enough to make
-- this list -- be hot, or be enormous -- so the brightest stars are either
-- blue-white B and A types or orange and red giants and supergiants, with the
-- near-solar middle represented only by Alpha Centauri, which qualifies by
-- being four light years away rather than by being remarkable.
--
-- Stars, and the roles they take:
--
--   sirius       hue 220   16.94 contrast   strings, escapes
--   canopus      hue 230   13.23 contrast   properties
--   alpha_cen    hue  31   12.73 contrast   functions
--   arcturus     hue  27   10.80 contrast   keywords
--   vega         hue 221    9.03 contrast   types
--   capella      hue  26    7.07 contrast   numbers
--   rigel        hue 222    5.97 contrast   operators, modules
--   betelgeuse   hue  27    4.80 contrast   macros, imports
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
-- 15.8 Delta E.

return {
  name = "observatory-magnitude",
  about = "the eight brightest stars, with Vega at zero",
  floor = 15.8,

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
  text = "#b5b8bf",
  dim = "#a5aab6",
  punct = "#838b96",
  comment = "#6477a6",
  lnr = "#53658a",
  lnr_cur = "#9da6b7",

  -- syntax roles
  str = "#e3e7ef",
  num = "#cb8651",
  typ = "#95aad9",
  mod = "#6587d4",
  prop = "#c5cced",
  func = "#d7c7b6",
  kw = "#dfb18b",
  op = "#6587d4",
  macro = "#bb6016",
  esc = "#e3e7ef",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#6587d4",
  hint = "#e3e7ef",
  ok = "#29b16d",
  accent = "#d7c7b6",
  cursearch = "#dfb18b",
  subst = "#e3e7ef",
  match = "#edc24a",
  title = "#d7c7b6",
  dir = "#95aad9",
  label = "#dfb18b",
  tag = "#dfb18b",
  h1 = "#dfb18b",
  h2 = "#d7c7b6",
  h3 = "#e3e7ef",
  h4 = "#95aad9",
  h5 = "#6587d4",
  h6 = "#cb8651",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#0a1a3b",
  diff_text = "#122c67",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#091634",
  vt_hint = "#081530",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "sirius", hue = 220, chroma = 4.4, cr = 16.94 },
    { key = "capella", hue = 26, chroma = 44.4, cr = 7.07 },
    { key = "vega", hue = 221, chroma = 26.4, cr = 9.03 },
    { key = "rigel", hue = 222, chroma = 44.4, cr = 5.97 },
    { key = "canopus", hue = 230, chroma = 17.6, cr = 13.23 },
    { key = "alpha_cen", hue = 31, chroma = 10.9, cr = 12.73 },
    { key = "arcturus", hue = 27, chroma = 28.3, cr = 10.80 },
    { key = "betelgeuse", hue = 27, chroma = 62.7, cr = 4.80 },
  },
}

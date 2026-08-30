-- observatory-neptune-computed -- the iconic blue, which is not quite the real one
--
-- Source: Voyager 2's Neptune, with a caveat. The 2024 reprocessing of that
-- data showed the famous deep blue was over-saturated: Neptune and Uranus
-- are far more alike than the pictures suggest, and true color is a paler
-- greenish blue only slightly bluer than its neighbour.
--
-- This scheme is built on the iconic version rather than the corrected one,
-- for the same reason `observatory-hubble` is built on a false-color mapping: the
-- processed image is the cultural object, and it makes the better palette.
-- The honest version would be nearly indistinguishable from `observatory-uranus`.
--
-- Being allowed the deeper blue buys real range: azure functions, indigo
-- keywords from the Great Dark Spot, a teal-leaning storm color for
-- strings, and near-white methane cirrus for properties. It holds 11
-- colors, much the same count as `observatory-uranus`, so the difference between
-- the two schemes is not variety but chroma -- which is exactly the
-- difference the reprocessing was about. Desaturate this one and the pair
-- would be hard to tell apart.
--
-- Units, and the roles they take:
--
--   cirrus       hue 205   16.89 contrast   properties
--   azure        hue 213   12.58 contrast   functions
--   methane      hue 200   10.28 contrast   modules
--   scooter      hue 209    8.53 contrast   types
--   gds          hue 232    7.31 contrast   keywords, macros, imports
--   storm        hue 186    6.18 contrast   strings, escapes
--   deep         hue 240    5.26 contrast   numbers
--   limb         hue 219    4.59 contrast   operators
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
-- 11.4 Delta E.

return {
  name = "observatory-neptune-computed",
  about = "the iconic blue, which is not quite the real one",
  floor = 11.4,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#090f14",
  bg_float = "#0d1621",
  bg_sel = "#172744",
  bg_hl = "#1b3754",
  border = "#274264",
  bg_search = "#32548e",
  nontext = "#26394d",

  -- the text ladder
  text = "#c6c8cb",
  dim = "#a2acb6",
  punct = "#a2a7ab",
  comment = "#687d96",
  lnr = "#4d6782",
  lnr_cur = "#98a7b5",

  -- syntax roles
  str = "#3698a3",
  num = "#7676cf",
  typ = "#90a8be",
  mod = "#70bfe6",
  prop = "#dee8ef",
  func = "#aecbee",
  kw = "#8793e3",
  op = "#5b76a7",
  macro = "#8793e3",
  esc = "#3698a3",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#70bfe6",
  hint = "#3698a3",
  ok = "#29b16d",
  accent = "#aecbee",
  cursearch = "#8793e3",
  subst = "#3698a3",
  match = "#edc24a",
  title = "#aecbee",
  dir = "#90a8be",
  label = "#8793e3",
  tag = "#8793e3",
  h1 = "#8793e3",
  h2 = "#aecbee",
  h3 = "#3698a3",
  h4 = "#90a8be",
  h5 = "#70bfe6",
  h6 = "#7676cf",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#071e29",
  diff_text = "#0c3346",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#061a23",
  vt_hint = "#05191b",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "storm", hue = 186, chroma = 28.2, cr = 6.18 },
    { key = "deep", hue = 240, chroma = 51.4, cr = 5.26 },
    { key = "scooter", hue = 209, chroma = 14.4, cr = 8.53 },
    { key = "methane", hue = 200, chroma = 30.2, cr = 10.28 },
    { key = "cirrus", hue = 205, chroma = 5.0, cr = 16.89 },
    { key = "azure", hue = 213, chroma = 20.6, cr = 12.58 },
    { key = "gds", hue = 232, chroma = 44.8, cr = 7.31 },
    { key = "limb", hue = 219, chroma = 29.5, cr = 4.59 },
  },
}

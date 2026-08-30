-- observatory-phi -- hues at the golden angle, so any subset stays spread
--
-- Source: phyllotaxis. Successive hues step by the golden angle,
-- 360 / phi^2 = 137.508 degrees, the same increment that spaces seeds in a
-- sunflower head and leaves around a stem.
--
-- Even spacing is optimal only if you know how many colors you need. The
-- golden angle is the increment whose every prefix is well spread: the first
-- three hues are far apart, and so are the first seven, and the first twelve.
-- A palette built this way degrades gracefully, because dropping the roles
-- you do not use never leaves two survivors sitting on top of each other.
--
-- Twelve hues step by 137.508 degrees, assigned brightest role first, so the
-- highest-contrast roles take the earliest and therefore best-separated
-- angles. Saturation is per-role; the angle fixes hue and nothing else.
--
-- The sequence has exactly one free parameter, its starting angle, and that
-- was searched in half-degree steps to keep the whole run clear of the fixed
-- diagnostic hues -- otherwise some role lands on error red and operators
-- start looking like mistakes. It settled at 282.0 degrees.
--
-- Judged the way observatory-lagrange is judged, this does well and not perfectly.
-- The Delta E floor is 20.4, the highest in the family, but the worst-case
-- margin across all of the requirements is only 3%, against 17% for the
-- solved palette: a fixed increment cannot shuffle a crowded hue out of the
-- way, and the closest chromatic pair here sits at 17.7 in the a-b plane
-- where the search reaches 18.8.
-- One parameter gets most of the way there, which is the point of showing it
-- next to a search over twelve.
--
-- Construction follows the rest of the family: every foreground is solved
-- by binary search for an exact contrast ratio against #000000, each accent
-- is the most chromatic form of its hue that still meets that ratio under a
-- per-role cap, and the closest pair of adjacent-capable roles sits at
-- 20.4 Delta E.

return {
  name = "observatory-phi",
  about = "hues at the golden angle, so any subset stays spread",
  floor = 20.4,

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
  punct = "#b4967e",
  comment = "#6e819e",
  lnr = "#5d6a8b",
  lnr_cur = "#a3abbc",

  -- syntax roles
  str = "#3fbc2c",
  num = "#6a9318",
  typ = "#dd9ab7",
  mod = "#7cbfda",
  prop = "#c4c36f",
  func = "#e1bcf1",
  kw = "#17a983",
  op = "#d4535e",
  macro = "#a092ec",
  esc = "#df54da",

  -- interface duties, following the syntax colors
  err = "#f44c52",
  warn = "#edc24a",
  info = "#7cbfda",
  hint = "#3fbc2c",
  ok = "#29b16d",
  accent = "#e1bcf1",
  cursearch = "#17a983",
  subst = "#3fbc2c",
  match = "#edc24a",
  title = "#e1bcf1",
  dir = "#dd9ab7",
  label = "#17a983",
  tag = "#17a983",
  h1 = "#17a983",
  h2 = "#e1bcf1",
  h3 = "#3fbc2c",
  h4 = "#dd9ab7",
  h5 = "#7cbfda",
  h6 = "#6a9318",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#071e27",
  diff_text = "#0c3343",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#061b23",
  vt_hint = "#081a05",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "green2", hue = 112, chroma = 83.6, cr = 8.44 },
    { key = "lime", hue = 80, chroma = 63.0, cr = 5.80 },
    { key = "rose", hue = 334, chroma = 29.7, cr = 9.38 },
    { key = "sky", hue = 197, chroma = 24.7, cr = 10.32 },
    { key = "citron", hue = 59, chroma = 43.8, cr = 11.38 },
    { key = "purple", hue = 282, chroma = 31.0, cr = 12.66 },
    { key = "teal", hue = 164, chroma = 46.0, cr = 7.04 },
    { key = "red", hue = 355, chroma = 55.6, cr = 5.20 },
    { key = "indigo", hue = 249, chroma = 50.3, cr = 7.82 },
    { key = "magenta", hue = 302, chroma = 81.7, cr = 6.42 },
  },
}

-- observatory-cosmicbackground-computed -- a diverging scale, cold to hot, like the anisotropy maps
--
-- The cosmic microwave background has no visible color. It is a 2.725 K
-- blackbody, peaking deep in the microwave, and every image you have seen of it
-- is false color: the familiar mottling is temperature deviation, plus or minus
-- roughly 200 microkelvin, painted onto a diverging blue-to-red scale by
-- convention. This scheme is that convention rather than a measurement.
--
-- Structurally it is unlike everything else in the family, because a diverging
-- scale has a middle. Plain text is the mean temperature, and every syntax role
-- is a departure from it: four cooling steps one way, four warming steps the
-- other, with a role's distance from the center standing for how far it is from
-- ordinary code. Structure goes cold -- properties, functions, types, modules --
-- and values go warm, with keywords near the hot extreme and errors at it.
--
-- Diverging maps of this kind contain no green at all, which is the one thing
-- they are criticised for and the reason git's green here comes from outside the
-- scale, along with the warning amber. Errors do not need to be invented: the hot
-- extreme already is red, so they simply take it. Nothing shares the center with
-- plain text, which was the first version's mistake -- functions sat on the mean
-- and were 4.8 Delta E from ordinary variables, which is to say invisible.
--
-- Construction follows the rest of the family: every foreground is solved
-- by binary search for an exact contrast ratio against #000000, each accent
-- is the most chromatic form of its hue that still meets that ratio under a
-- per-role cap, and the closest pair of adjacent-capable roles sits at
-- 11.0 Delta E.

return {
  name = "observatory-cosmicbackground-computed",
  about = "a diverging scale, cold to hot, like the anisotropy maps",
  floor = 11.0,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#0e0e19",
  bg_float = "#131326",
  bg_sel = "#212351",
  bg_hl = "#2a2f6c",
  border = "#39397a",
  bg_search = "#414d9f",
  nontext = "#33335c",

  -- the text ladder
  text = "#dcdcdf",
  dim = "#afafbd",
  punct = "#999ab5",
  comment = "#7e7e95",
  lnr = "#666698",
  lnr_cur = "#a8a8be",

  -- syntax roles
  str = "#dbcbb3",
  num = "#e6a986",
  typ = "#7599ef",
  mod = "#6a77f4",
  prop = "#b3d1db",
  func = "#8bb7e4",
  kw = "#f07c6a",
  op = "#8585b7",
  macro = "#f07c6a",
  esc = "#e6a986",

  -- interface duties, following the syntax colors
  err = "#f5444f",
  warn = "#e8bb28",
  info = "#8bb7e4",
  hint = "#b3d1db",
  ok = "#29af6c",
  accent = "#8bb7e4",
  cursearch = "#f07c6a",
  subst = "#e6a986",
  match = "#e8bb28",
  title = "#dbcbb3",
  dir = "#7599ef",
  label = "#f07c6a",
  tag = "#f07c6a",
  h1 = "#f07c6a",
  h2 = "#dbcbb3",
  h3 = "#b3d1db",
  h4 = "#8bb7e4",
  h5 = "#7599ef",
  h6 = "#6a77f4",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0f",
  diff_change = "#091c30",
  diff_text = "#0f3153",
  vt_error = "#390a0d",
  vt_warn = "#1f1906",
  vt_info = "#07182a",
  vt_hint = "#05191f",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "hot1", hue = 36, chroma = 14.1, cr = 13.21 },
    { key = "hot2", hue = 22, chroma = 32.4, cr = 10.38 },
    { key = "cold3", hue = 222, chroma = 48.4, cr = 7.56 },
    { key = "cold4", hue = 234, chroma = 71.4, cr = 5.56 },
    { key = "cold1", hue = 195, chroma = 11.4, cr = 13.06 },
    { key = "cold2", hue = 210, chroma = 27.4, cr = 9.99 },
    { key = "hot3", hue = 8, chroma = 52.5, cr = 7.80 },
    { key = "steel", hue = 240, chroma = 28.5, cr = 6.04 },
  },
}

-- observatory-crab-computed -- synchrotron continuum against line filaments
--
-- Source: the Crab, which glows by two unrelated mechanisms at once. The
-- interior is synchrotron radiation -- electrons spiralling in the pulsar's
-- magnetic field, emitting a smooth polarised continuum across the whole
-- spectrum, which arrives as blue-white. The filaments draped over it are
-- ordinary line emission from the shredded star: hydrogen-alpha, [O III] at
-- 500.7 nm, [S II] at 671.6.
--
-- That difference sets the palette's rule, and it is physical rather than a
-- matter of taste: broadband light is pale because it contains everything,
-- and line emission is saturated because it contains one wavelength. Chroma
-- here means mechanism. The pale blues are the pulsar's field and the vivid
-- green and reds are the dead star's gas, with a real gap between them: no
-- color here has a chroma between 25 and 54.
--
-- The continuum therefore carries the roles you read continuously --
-- properties, functions, modules, types, operators -- since low chroma is
-- what you want under a cursor for hours. Strings are the exception, and take
-- hydrogen-alpha: the filaments are what a photograph of the Crab is mostly
-- made of, and a fifth of the characters on a screen is as near as a palette
-- gets to saying so. A buffer ends up looking like the object: a pale blue
-- field with bright filaments through it.
--
-- As in `observatory-eclipse`, the two red lines are used at their photographed
-- hues rather than their computed ones. Hydrogen-alpha at 656.3 nm and
-- [S II] at 671.6 convert to the same sRGB red, so they are separated here
-- the way narrowband images separate them.
--
-- Components, and the roles they take:
--
--   continuum    hue 204   16.91 contrast   properties
--   jet          hue 198   14.54 contrast   functions
--   polarised    hue 211   10.36 contrast   modules
--   wisp         hue 204    8.70 contrast   types
--   o_iii        hue 153    8.59 contrast   keywords, macros, imports
--   h_alpha      hue 350    7.19 contrast   strings
--   s_ii         hue   8    6.03 contrast   numbers, escapes
--   torus        hue 216    4.92 contrast   operators
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
-- 12.5 Delta E.

return {
  name = "observatory-crab-computed",
  about = "synchrotron continuum against line filaments",
  floor = 12.5,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#080f14",
  bg_float = "#0c161f",
  bg_sel = "#15293e",
  bg_hl = "#18384b",
  border = "#24445c",
  bg_search = "#2e5882",
  nontext = "#233b48",

  -- the text ladder
  text = "#c2c5c7",
  dim = "#a1adb5",
  punct = "#6a96af",
  comment = "#6a7a89",
  lnr = "#4b697f",
  lnr_cur = "#97a8b4",

  -- syntax roles
  str = "#ef6d83",
  num = "#e45f4a",
  typ = "#9aa9b3",
  mod = "#9cb9d9",
  prop = "#dfe8ee",
  func = "#b5ddee",
  kw = "#1fbd75",
  op = "#607ca5",
  macro = "#1fbd75",
  esc = "#e45f4a",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#9cb9d9",
  hint = "#ef6d83",
  ok = "#27a164",
  accent = "#b5ddee",
  cursearch = "#1fbd75",
  subst = "#ef6d83",
  match = "#edc24a",
  title = "#b5ddee",
  dir = "#9aa9b3",
  label = "#1fbd75",
  tag = "#1fbd75",
  h1 = "#1fbd75",
  h2 = "#b5ddee",
  h3 = "#ef6d83",
  h4 = "#9aa9b3",
  h5 = "#9cb9d9",
  h6 = "#e45f4a",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#091b30",
  diff_text = "#0f3055",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#08182b",
  vt_hint = "#2e080f",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "h_alpha", hue = 350, chroma = 53.6, cr = 7.19 },
    { key = "s_ii", hue = 8, chroma = 63.1, cr = 6.03 },
    { key = "wisp", hue = 204, chroma = 7.6, cr = 8.70 },
    { key = "polarised", hue = 211, chroma = 19.5, cr = 10.36 },
    { key = "continuum", hue = 204, chroma = 4.4, cr = 16.91 },
    { key = "jet", hue = 198, chroma = 15.7, cr = 14.54 },
    { key = "o_iii", hue = 153, chroma = 60.9, cr = 8.59 },
    { key = "torus", hue = 216, chroma = 25.1, cr = 4.92 },
  },
}

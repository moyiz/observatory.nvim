-- observatory-nightsky -- star colors by spectral class, on a deep blue sky
--
-- The palette is the main sequence. Each accent is a star's color computed
-- from its class's effective temperature through the Planck curve: O at 40000 K,
-- B at 20000, A at 8750, G at 5750, K at 4500 and M at 3200. The hues fall out of
-- the physics, and so does the striking part -- real starlight is very close to
-- white. Computed saturation tops out at 0.52 for class M and is only 0.17 for
-- class A, and the hues collapse into two families, 220 for everything hot and 28
-- for everything cool.
--
-- That constraint is the scheme. With almost no chroma and only two hue
-- families available, roles are separated by brightness, exactly as stars are
-- separated by magnitude: white A-class functions at 15.4 contrast, blue-white
-- B-class keywords at 11.2, yellow G-class properties at 12.6, orange K-class
-- strings at 9.8, and deep red M-class numbers at 6.8. Note that plain text sits
-- at 10.6 rather than at the maximum the family normally uses. That is the point:
-- the brightest thing on screen should be a first-magnitude star, which here
-- means a function name. Every hue in it is a measurement, and it is among the
-- palest schemes here: leaving aside the two grayscales, which have no chroma at
-- all, only `observatory-enceladus` averages less.
--
-- Class F is deliberately missing: at 6750 K it computes to within a few Delta
-- E of class A -- 4.5, against the 10.4 floor this family holds to -- so it would
-- have been a duplicate. Saturations are raised modestly above the computed
-- figures, since raw starlight is too near white to separate ten roles; the hues
-- are untouched. Operators are the exception to the star scheme and take the
-- color of interstellar dust, which reddens what it dims. And no star is green
-- -- a blackbody cannot peak in a way the eye reads as green -- so git's green is
-- invented, along with the error red and warning amber, which are the only
-- saturated values here and stand out accordingly.
--
-- Construction follows the rest of the family: every foreground is solved
-- by binary search for an exact contrast ratio against #000000, each accent
-- is the most chromatic form of its hue that still meets that ratio under a
-- per-role cap, and the closest pair of adjacent-capable roles sits at
-- 10.7 Delta E.

return {
  name = "observatory-nightsky",
  about = "star colors by spectral class, on a deep blue sky",
  floor = 10.7,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#0a0d1b",
  bg_float = "#0e1429",
  bg_sel = "#182454",
  bg_hl = "#212f72",
  border = "#2c3c7d",
  bg_search = "#34509d",
  nontext = "#2a355e",

  -- the text ladder
  text = "#b5b8c0",
  dim = "#aaafbf",
  punct = "#929bb6",
  comment = "#73788c",
  lnr = "#5e6893",
  lnr_cur = "#a3abbf",

  -- syntax roles
  str = "#c9ac92",
  num = "#cd8141",
  typ = "#8ca4d5",
  mod = "#8ca4d5",
  prop = "#d2c6bc",
  func = "#d9dce6",
  kw = "#b1bdd8",
  op = "#a1876d",
  macro = "#b1bdd8",
  esc = "#d2c6bc",

  -- interface duties, following the syntax colors
  err = "#f04248",
  warn = "#eabf3e",
  info = "#b1bdd8",
  hint = "#c9ac92",
  ok = "#2cae6d",
  accent = "#d9dce6",
  cursearch = "#b1bdd8",
  subst = "#c9ac92",
  match = "#eabf3e",
  title = "#d9dce6",
  dir = "#8ca4d5",
  label = "#b1bdd8",
  tag = "#b1bdd8",
  h1 = "#b1bdd8",
  h2 = "#d9dce6",
  h3 = "#d2c6bc",
  h4 = "#c9ac92",
  h5 = "#cd8141",
  h6 = "#8ca4d5",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#0a193b",
  diff_text = "#122c67",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#091734",
  vt_hint = "#211306",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "class_k", hue = 28, chroma = 18.5, cr = 9.80 },
    { key = "class_m", hue = 27, chroma = 51.7, cr = 6.81 },
    { key = "class_o", hue = 220, chroma = 27.8, cr = 8.39 },
    { key = "class_g", hue = 27, chroma = 7.0, cr = 12.54 },
    { key = "class_a", hue = 226, chroma = 5.3, cr = 15.33 },
    { key = "class_b", hue = 222, chroma = 15.0, cr = 11.14 },
    { key = "dust", hue = 30, chroma = 18.6, cr = 6.20 },
  },
}

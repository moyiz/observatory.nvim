-- observatory-carbon -- the reddest stars there are, in purity not hue
--
-- Source: carbon stars, the reddest objects in the sky. Late in life a giant
-- can dredge more carbon than oxygen to its surface, and the C2 Swan bands and
-- CN then absorb the blue end so heavily that the star turns a color nothing
-- else reaches. Y Canum Venaticorum -- La Superba -- sits at color index
-- 2.54; R Leporis, Hind's Crimson Star, has been measured beyond 5. This
-- palette walks the index from 1.6, an ordinary M giant, to 5.7, converting
-- each through Ballesteros' fit and the Planck curve.
--
-- What comes out is the family's clearest demonstration of a rule it kept
-- running into. Four magnitudes of color index -- a temperature drop from
-- 3650 K to 1450 K, a factor of two and a half -- move the hue by five
-- degrees -- the whole range falls between hue 25 and hue 30. They move the
-- computed chroma from 35 to 90. So the reddest star in the sky is not a
-- different color from a red giant; it is the same color, more so. This
-- scheme is accordingly built on purity: under six degrees of hue across the
-- accents, and the highest mean chroma of the stellar schemes bar
-- `observatory-przybylski`, whose colors are emission peaks rather than
-- starlight.
--
-- Two honest limits. The coolest rungs are extrapolations of a fit intended
-- for stellar temperatures, and at 1450 K a body radiates most of its light
-- outside the visible band entirely -- what the palette shows is the visible
-- tail of something that is mostly infrared, which is also true of what your
-- eye would see. And these stars are variable, several of them by magnitudes,
-- so a single color index is a snapshot of a moving quantity.
--
-- Color indices, and the roles they take:
--
--   bv_16        hue  28   16.52 contrast   properties
--   bv_20        hue  28   13.63 contrast   functions
--   bv_25        hue  29   10.62 contrast   modules, types
--   bv_32        hue  30    9.75 contrast   keywords, macros, imports
--   bv_42        hue  30    8.08 contrast   strings, escapes
--   bv_57        hue  25    4.82 contrast   numbers, operators
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
-- 16.5 Delta E.

return {
  name = "observatory-carbon",
  about = "the reddest stars there are, in purity not hue",
  floor = 16.5,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#140c08",
  bg_float = "#1d130b",
  bg_sel = "#362412",
  bg_hl = "#4f2c19",
  border = "#593a22",
  bg_search = "#724d28",
  nontext = "#4a3325",

  -- the text ladder
  text = "#c6c2be",
  dim = "#b4a8a0",
  punct = "#ac8e7c",
  comment = "#7d7772",
  lnr = "#7c5f49",
  lnr_cur = "#b4a297",

  -- syntax roles
  str = "#f88006",
  num = "#c85708",
  typ = "#f4a862",
  mod = "#f4a862",
  prop = "#f8e0cb",
  func = "#fbc698",
  kw = "#fa9a3c",
  op = "#c85708",
  macro = "#fa9a3c",
  esc = "#f88006",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#f4a862",
  hint = "#f88006",
  ok = "#29b16d",
  accent = "#fbc698",
  cursearch = "#fa9a3c",
  subst = "#f88006",
  match = "#edc24a",
  title = "#fbc698",
  dir = "#f4a862",
  label = "#fa9a3c",
  tag = "#fa9a3c",
  h1 = "#fa9a3c",
  h2 = "#fbc698",
  h3 = "#f88006",
  h4 = "#f4a862",
  h5 = "#f4a862",
  h6 = "#c85708",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#291707",
  diff_text = "#47290d",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#241406",
  vt_hint = "#211306",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "bv_42", hue = 30, chroma = 82.5, cr = 8.08 },
    { key = "bv_57", hue = 25, chroma = 71.9, cr = 4.82 },
    { key = "bv_25", hue = 29, chroma = 51.4, cr = 10.62 },
    { key = "bv_16", hue = 28, chroma = 14.2, cr = 16.52 },
    { key = "bv_20", hue = 28, chroma = 32.9, cr = 13.63 },
    { key = "bv_32", hue = 30, chroma = 68.0, cr = 9.75 },
  },
}

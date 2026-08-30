-- observatory-cepheid -- a light curve, and no color to speak of
--
-- Source: delta Cephei itself, the star the whole distance ladder is
-- calibrated on. It pulsates with a period of 5.366 days, brightening from
-- magnitude 4.37 to 3.48 and back, and its color index moves from 0.79 at
-- minimum to 0.53 at maximum -- bluest when brightest, as Cepheids are.
-- Color index becomes temperature by Ballesteros' fit, about 5310 K to
-- 6254 K, and temperature becomes sRGB through the Planck curve.
--
-- The ladder is the light curve. Each rung is a phase of the cycle, ordered
-- by brightness, and the order is held rather than solved, so reading down the
-- palette is watching the star fade.
--
-- And that is all this scheme has, because the arithmetic gives a blunt
-- answer: across the whole pulsation the computed chroma runs from 3.5 to
-- 12.1. Twenty-six hundredths of a magnitude in color index, on a star this
-- close to solar, is a change the display very nearly cannot show. So this is
-- effectively a single-axis palette -- lightness, with five degrees of hue
-- across the whole cycle and purity doing what little else there is. Five
-- values cover ten syntax roles, which is a deliberate ceiling: the more rungs
-- a mostly-achromatic ladder carries, the closer together they have to sit.
-- Eight distinct colors across the whole syntax map, the fewest of any scheme
-- with hues in it, tied with `observatory-alphacentauri`, `observatory-boyajian`
-- and `observatory-tres2`; `observatory-plate` and `observatory-shadow` go
-- lower by having no hues at all.
--
-- Something else had to be abandoned. A Cepheid does not retrace its path: it
-- rises in about a fifth of the period and declines over the rest, and at
-- equal brightness it is measurably bluer on the way up than on the way down.
-- That loop is the interesting part of the physics and it is four chroma units
-- wide, well under this family's separation floor, so the palette samples the
-- decline only. The rising branch exists and cannot be drawn.
--
-- Phases, and the roles they take:
--
--   phase_00     hue  30   16.92 contrast   properties
--   phase_20     hue  31   13.43 contrast   functions, modules
--   phase_45     hue  29    8.70 contrast   types, strings, escapes
--   phase_70     hue  27    5.80 contrast   keywords, macros, imports
--   phase_90     hue  28    4.73 contrast   numbers, operators
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
-- 15.4 Delta E.

return {
  name = "observatory-cepheid",
  about = "a light curve, and no color to speak of",
  floor = 15.4,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#130e08",
  bg_float = "#1b140a",
  bg_sel = "#322511",
  bg_hl = "#4a3017",
  border = "#533d20",
  bg_search = "#6a5125",
  nontext = "#463423",

  -- the text ladder
  text = "#bdbab7",
  dim = "#b1a9a0",
  punct = "#948e88",
  comment = "#87755c",
  lnr = "#766248",
  lnr_cur = "#b0a496",

  -- syntax roles
  str = "#c1a184",
  num = "#a86932",
  typ = "#c1a184",
  mod = "#e2cbb3",
  prop = "#eae6e2",
  func = "#e2cbb3",
  kw = "#ab7d57",
  op = "#a86932",
  macro = "#ab7d57",
  esc = "#c1a184",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#e2cbb3",
  hint = "#c1a184",
  ok = "#29b16d",
  accent = "#e2cbb3",
  cursearch = "#ab7d57",
  subst = "#c1a184",
  match = "#edc24a",
  title = "#e2cbb3",
  dir = "#c1a184",
  label = "#ab7d57",
  tag = "#ab7d57",
  h1 = "#ab7d57",
  h2 = "#e2cbb3",
  h3 = "#c1a184",
  h4 = "#c1a184",
  h5 = "#e2cbb3",
  h6 = "#a86932",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#281807",
  diff_text = "#45290c",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#231506",
  vt_hint = "#211206",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "phase_45", hue = 29, chroma = 20.9, cr = 8.70 },
    { key = "phase_90", hue = 28, chroma = 45.3, cr = 4.73 },
    { key = "phase_20", hue = 31, chroma = 15.5, cr = 13.43 },
    { key = "phase_00", hue = 30, chroma = 2.5, cr = 16.92 },
    { key = "phase_70", hue = 27, chroma = 30.6, cr = 5.80 },
  },
}

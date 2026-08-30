-- observatory-eclipse -- the corona, almost colorless, with one ruby line
--
-- Totality is nearly colorless. The corona has two components and they are
-- both close to white: the K-corona is photospheric light scattered by electrons,
-- which is neutral to faintly blue, and the F-corona is the same light scattered
-- by dust, which is faintly warm. Those two supply almost every value here. The
-- exceptions are the chromosphere and the prominences, both hydrogen-alpha at
-- 656.3 nm, and the green coronal line of Fe XIV at 530.3 nm, which is what git
-- green is taken from.
--
-- The result is a scheme that is essentially monochrome twice over -- a cool
-- pearl family and a warm dust family, neither exceeding 0.46 saturation -- with
-- one saturated color in it. Keywords get that color, the ruby of the
-- chromosphere, so the only vivid thing on screen is the language's own
-- vocabulary. Everything else is separated mostly by brightness, with enough
-- cool blue left on functions to hold them clear of the delimiters, and plain
-- text sits at
-- 10.6 rather than the maximum, because nothing during totality is bright.
--
-- Both red lines clip in sRGB: H-alpha at 656.3 nm and the 530.3 nm coronal
-- line convert to hues 0 and 98, neither resembling what an eclipse looks like,
-- so they are used at their photographed hues of 352 and 150. The warning
-- yellow is a flare, and the error red is pushed deeper and more chromatic than
-- the chromosphere so the two cannot be confused.
--
-- Construction follows the rest of the family: every foreground is solved
-- by binary search for an exact contrast ratio against #000000, each accent
-- is the most chromatic form of its hue that still meets that ratio under a
-- per-role cap, and the closest pair of adjacent-capable roles sits at
-- 11.4 Delta E.

return {
  name = "observatory-eclipse",
  about = "the corona, almost colorless, with one ruby line",
  floor = 11.4,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#0b0e15",
  bg_float = "#10151f",
  bg_sel = "#1b2740",
  bg_hl = "#25355a",
  border = "#2f4164",
  bg_search = "#385682",
  nontext = "#2c374e",

  -- the text ladder
  text = "#b5b8be",
  dim = "#a9afbb",
  punct = "#8b9bb2",
  comment = "#6d7b95",
  lnr = "#55617f",
  lnr_cur = "#a2abbc",

  -- syntax roles
  str = "#c3ac8b",
  num = "#be8758",
  typ = "#ed99b5",
  mod = "#cfc8b7",
  prop = "#d7dce3",
  func = "#88b0d3",
  kw = "#f47284",
  op = "#6a83bf",
  macro = "#f47284",
  esc = "#ed99b5",

  -- interface duties, following the syntax colors
  err = "#f4282f",
  warn = "#eec931",
  info = "#88b0d3",
  hint = "#c3ac8b",
  ok = "#29af6c",
  accent = "#d7dce3",
  cursearch = "#f47284",
  subst = "#ed99b5",
  match = "#eec931",
  title = "#f47284",
  dir = "#cfc8b7",
  label = "#f47284",
  tag = "#f47284",
  h1 = "#f47284",
  h2 = "#d7dce3",
  h3 = "#ed99b5",
  h4 = "#cfc8b7",
  h5 = "#c3ac8b",
  h6 = "#be8758",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#081d2e",
  diff_text = "#0e3150",
  vt_error = "#390a0c",
  vt_warn = "#1e1a05",
  vt_info = "#071929",
  vt_hint = "#1e1405",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "dust", hue = 35, chroma = 20.3, cr = 9.59 },
    { key = "ember", hue = 28, chroma = 37.0, cr = 6.80 },
    { key = "prominence", hue = 340, chroma = 35.2, cr = 9.82 },
    { key = "fcorona", hue = 42, chroma = 9.4, cr = 12.60 },
    { key = "pearl", hue = 215, chroma = 4.0, cr = 15.24 },
    { key = "silver", hue = 208, chroma = 22.6, cr = 9.20 },
    { key = "halpha", hue = 352, chroma = 53.5, cr = 7.59 },
    { key = "steel", hue = 222, chroma = 34.9, cr = 5.61 },
  },
}

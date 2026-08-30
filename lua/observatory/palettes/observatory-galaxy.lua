-- observatory-galaxy -- color as age, across a spiral galaxy
--
-- Source: stellar populations. A spiral galaxy's color is an age map --
-- blue in the arms where O and B stars live a few million years, yellow and
-- red toward the bulge where nothing is left but old K and M stars, pink at
-- the HII regions where hydrogen-alpha marks gas being lit by stars younger
-- still, bluer again in the outer disc, and dark along the dust lanes.
-- Population colors come through the same color-index-to-Planck route as
-- `observatory-hertzsprungrussell`.
--
-- Brightness here is surface brightness rather than age, so the two axes are
-- independent: the nucleus is the brightest thing in the frame and among the
-- oldest, the arms are bluer but fainter, the dust lanes are dark and not a
-- population at all. Hue tells you when, lightness tells you how much.
--
-- The HII pink is the one color not from a population, being gas rather
-- than stars -- hydrogen-alpha plus continuum, which photographs pink and is
-- used at that hue. Functions take it, so the most-scanned role gets the
-- color that marks where the galaxy is currently building something.
--
-- What the palette cannot show is that old populations all look alike. The
-- bulge, the halo and the globular clusters differ by tenths of a magnitude
-- in color index and land within a few degrees of hue, so one warm value
-- stands for all three. That is not a limitation of sRGB but of the sky:
-- after ten billion years there is only one color left to be.
--
-- Components, and the roles they take:
--
--   nucleus      hue  30   17.01 contrast   properties
--   young_disc   hue 231   14.90 contrast   modules
--   hii          hue 343   11.01 contrast   functions
--   ob_arm       hue 220    9.42 contrast   keywords, macros, imports
--   bulge        hue  27    7.57 contrast   types
--   dust_lane    hue  20    4.79 contrast   numbers, operators
--   outer_disc   hue 219    4.75 contrast   strings, escapes
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
-- 17.0 Delta E.

return {
  name = "observatory-galaxy",
  about = "color as age, across a spiral galaxy",
  floor = 17.0,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#120d08",
  bg_float = "#1a140a",
  bg_sel = "#312610",
  bg_hl = "#473117",
  border = "#513d20",
  bg_search = "#685225",
  nontext = "#453422",

  -- the text ladder
  text = "#bbb8b4",
  dim = "#b2aa9d",
  punct = "#a89076",
  comment = "#7c7770",
  lnr = "#766245",
  lnr_cur = "#b0a493",

  -- syntax roles
  str = "#5678b5",
  num = "#b96034",
  typ = "#c98f5e",
  mod = "#d3d8f4",
  prop = "#eee6de",
  func = "#ebaabc",
  kw = "#96aedf",
  op = "#b96034",
  macro = "#96aedf",
  esc = "#5678b5",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#d3d8f4",
  hint = "#5678b5",
  ok = "#29b16d",
  accent = "#ebaabc",
  cursearch = "#96aedf",
  subst = "#5678b5",
  match = "#edc24a",
  title = "#ebaabc",
  dir = "#c98f5e",
  label = "#96aedf",
  tag = "#96aedf",
  h1 = "#96aedf",
  h2 = "#ebaabc",
  h3 = "#5678b5",
  h4 = "#c98f5e",
  h5 = "#d3d8f4",
  h6 = "#b96034",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#0d1647",
  diff_text = "#16257a",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#0b1340",
  vt_hint = "#08162e",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "outer_disc", hue = 219, chroma = 36.4, cr = 4.75 },
    { key = "dust_lane", hue = 20, chroma = 51.9, cr = 4.79 },
    { key = "bulge", hue = 27, chroma = 38.4, cr = 7.57 },
    { key = "young_disc", hue = 231, chroma = 14.7, cr = 14.90 },
    { key = "nucleus", hue = 30, chroma = 5.0, cr = 17.01 },
    { key = "hii", hue = 343, chroma = 26.4, cr = 11.01 },
    { key = "ob_arm", hue = 220, chroma = 27.5, cr = 9.42 },
  },
}

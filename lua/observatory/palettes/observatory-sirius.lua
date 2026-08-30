-- observatory-sirius -- brighter is cooler, for once
--
-- Source: Sirius A and B. A is an A1 V at 9940 K and the brightest star in
-- the sky at magnitude -1.46. B is a white dwarf at 25200 K -- two and a half
-- times hotter, Earth-sized, and magnitude 8.44, which is about ten thousand
-- times fainter. It took until 1862 to see it and Hubble to get a clean
-- spectrum, because it sits ten arcseconds from the glare.
--
-- The palette interpolates between them in ten steps of a magnitude, so the
-- ladder is the brightness gap and each rung is a temperature between the two
-- stars. That produces something no other scheme here has: brightness and
-- temperature run in opposite directions. Almost every other palette in the
-- family gets warmer or deeper as it dims, because that is what dimming looks
-- like -- `observatory-boyajian` is the one other exception, and it inverts for
-- a related reason.
-- This one gets hotter and bluer as it dims, because the faint star is the hot
-- one.
--
-- A near-neutral blue scheme, and it separates by purity: three degrees of hue
-- across the accents, with computed chroma running from 20 at A to 34 at B, so
-- the dim end is the vivid end. Compare `observatory-enceladus`, the
-- collection's other cool pale scheme, where the chroma sits low throughout
-- and the ladder does the work.
--
-- The intermediate rungs are interpolations rather than observations -- there
-- is nothing physically between the two stars -- so this is the one stellar
-- scheme whose middle is constructed. The endpoints are measured.
--
-- Steps, and the roles they take:
--
--   sirius_a     hue 222   16.79 contrast   properties
--   mag_2        hue 219   12.34 contrast   functions
--   mag_4        hue 222   11.39 contrast   modules, types
--   mag_6        hue 220    8.79 contrast   keywords, macros, imports
--   mag_8        hue 220    6.60 contrast   strings, escapes
--   sirius_b     hue 220    4.80 contrast   numbers, operators
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
-- 11.2 Delta E.

return {
  name = "observatory-sirius",
  about = "brighter is cooler, for once",
  floor = 11.2,

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
  text = "#c9cbce",
  dim = "#a5abb5",
  punct = "#889ab3",
  comment = "#707c97",
  lnr = "#546589",
  lnr_cur = "#9ea6b6",

  -- syntax roles
  str = "#658fe4",
  num = "#3e74e2",
  typ = "#acbfea",
  mod = "#acbfea",
  prop = "#e0e6f4",
  func = "#bbc7de",
  kw = "#88a8e6",
  op = "#3e74e2",
  macro = "#88a8e6",
  esc = "#658fe4",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#acbfea",
  hint = "#658fe4",
  ok = "#29b16d",
  accent = "#bbc7de",
  cursearch = "#88a8e6",
  subst = "#658fe4",
  match = "#edc24a",
  title = "#bbc7de",
  dir = "#acbfea",
  label = "#88a8e6",
  tag = "#88a8e6",
  h1 = "#88a8e6",
  h2 = "#bbc7de",
  h3 = "#658fe4",
  h4 = "#acbfea",
  h5 = "#acbfea",
  h6 = "#3e74e2",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#0a193b",
  diff_text = "#122c67",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#091734",
  vt_hint = "#081530",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "mag_8", hue = 220, chroma = 48.6, cr = 6.60 },
    { key = "sirius_b", hue = 220, chroma = 64.2, cr = 4.80 },
    { key = "mag_4", hue = 222, chroma = 23.7, cr = 11.39 },
    { key = "sirius_a", hue = 222, chroma = 7.5, cr = 16.79 },
    { key = "mag_2", hue = 219, chroma = 12.8, cr = 12.34 },
    { key = "mag_6", hue = 220, chroma = 35.0, cr = 8.79 },
  },
}

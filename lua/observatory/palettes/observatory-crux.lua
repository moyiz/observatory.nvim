-- observatory-crux -- the Southern Cross, which is three quarters one color
--
-- Source: Crux, the smallest of the eighty-eight constellations and the one on
-- five national flags. Five stars make the shape: Acrux, Mimosa and Delta
-- Crucis are hot B-type stars, Gacrux is a red giant, Epsilon is a fainter
-- orange one. Inside the constellation are two more things worth a color, the
-- Jewel Box cluster and the Coalsack, which is a dark nebula close enough to
-- block a visible bite out of the Milky Way. Colors come from each star's
-- observed color index through Ballesteros' fit, and shares of the light from
-- apparent magnitude.
--
-- Asked individually, the blue stars turn out not to be individuals. Acrux is
-- 14,600 K, Mimosa 14,400, Delta 13,300, and above about 10,000 K the Planckian
-- locus barely moves: all three compute to hue 220 within one degree and to
-- chroma within two units. The honest thing is to say so, so they share a
-- color, and since they are also three of the four brightest things in the
-- constellation that color carries 76 per cent of its light. It therefore
-- takes strings, properties and functions -- 44 per cent of the characters on
-- screen -- and this is the most single-colored scheme in the collection that
-- is not a grayscale.
--
-- Against that blue there are three warm values and they are all small.
-- Gacrux is a fifth of the light and takes keywords and types; the Jewel Box,
-- which is a blue cluster with one red supergiant in it, and Epsilon are about
-- two per cent each. The Coalsack is at the floor and is the only color here
-- that is not a star: background starlight through dust at optical depth 2.8,
-- which is an amber, and it is on operators because in the sky it is the thing
-- between the stars.
--
-- The blue itself is paler on screen than it computes -- 17 chroma units
-- against 27 -- for the reason `observatory-noctilucent` sets out at length: it
-- is the brightest color in the palette, and sRGB has no bright saturated blue.
-- The three warm values all arrive at the chroma they were asked for.
--
-- `observatory-alphacentauri` is the near neighbour and the mirror image -- next
-- door in the sky, a few degrees away, and orange-dominant where this is
-- blue-dominant. `observatory-albireo` also pairs a blue with an orange, but
-- alternates them down the ladder deliberately; here the proportions do the
-- work and nothing alternates.
--
-- Kappa Crucis, the red supergiant that makes the Jewel Box famous, is left
-- out: it computes to hue 27 at chroma 31, between Gacrux and Epsilon, and a
-- third value there would sit under the separation floor.
--
-- Stars, and the roles they take:
--
--   cross        hue 220   15.50 contrast   strings, escapes, properties, functions
--   gacrux       hue  27   11.83 contrast   keywords, types, macros, imports
--   jewelbox     hue 220    8.89 contrast   modules
--   epsilon      hue  27    7.32 contrast   numbers
--   coalsack     hue  34    4.94 contrast   operators
--
-- Hues here are fixed by the source, since they are the part that
-- represents the world, and so is purity: every accent's saturation was
-- solved for the chroma its derivation computes, at the brightness its rung
-- asks for, rather than scaled from it. The solver was then left the contrast
-- ratios and three hundredths of latitude in saturation, and moved them until
-- every pair of colors that can appear together -- including every pair with
-- the error, warning and git colors, which sit beside code in the sign
-- column -- clears the family's separation limit.
--
-- Construction follows the rest of the family: every foreground is solved
-- by binary search for an exact contrast ratio against #000000, each accent
-- is the most chromatic form of its hue that still meets that ratio under a
-- per-role cap, and the closest pair of adjacent-capable roles sits at
-- 20.5 Delta E.

return {
  name = "observatory-crux",
  about = "the Southern Cross, which is three quarters one color",
  floor = 20.5,

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
  text = "#b4b7bb",
  dim = "#a5abb5",
  punct = "#7a8492",
  comment = "#5d77b3",
  lnr = "#546589",
  lnr_cur = "#9ea6b6",

  -- syntax roles
  str = "#cedefe",
  num = "#b49277",
  typ = "#f0b788",
  mod = "#93a9d6",
  prop = "#cedefe",
  func = "#cedefe",
  kw = "#f0b788",
  op = "#b16a10",
  macro = "#f0b788",
  esc = "#cedefe",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#93a9d6",
  hint = "#cedefe",
  ok = "#29b16d",
  accent = "#cedefe",
  cursearch = "#f0b788",
  subst = "#cedefe",
  match = "#edc24a",
  title = "#cedefe",
  dir = "#f0b788",
  label = "#f0b788",
  tag = "#f0b788",
  h1 = "#f0b788",
  h2 = "#cedefe",
  h3 = "#cedefe",
  h4 = "#f0b788",
  h5 = "#93a9d6",
  h6 = "#b49277",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#0a1a3a",
  diff_text = "#122d64",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#091732",
  vt_hint = "#081530",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "cross", hue = 220, chroma = 17.4, cr = 15.50 },
    { key = "epsilon", hue = 27, chroma = 21.1, cr = 7.32 },
    { key = "gacrux", hue = 27, chroma = 35.1, cr = 11.83 },
    { key = "jewelbox", hue = 220, chroma = 25.5, cr = 8.89 },
    { key = "coalsack", hue = 34, chroma = 59.9, cr = 4.94 },
  },
}

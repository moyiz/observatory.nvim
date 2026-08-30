-- observatory-kuiper -- two populations, and the gap between them
--
-- Source: the colors of Kuiper belt objects, which are not spread evenly.
-- Surveys report them as spectral slopes -- how much redder than the Sun a
-- body's reflected light is, in per cent per hundred nanometers -- and the
-- distribution is bimodal. One population is nearly neutral at a few per
-- cent; the other, the ultra-red matter of the cold classical belt, sits
-- around thirty-five, and comparatively few objects fall between. The split
-- tracks where they formed.
--
-- `neutral` there is the astronomers' word and not the printer's: a slope of
-- zero means reflecting sunlight unchanged, not reflecting every wavelength
-- equally, so a neutral object is the color the Sun is. That is why the
-- unreddened end of this palette is a warm straw rather than a gray. What is
-- on screen is reflected sunlight, which is what a telescope receives; a
-- reflectance -- the surface divided by its illumination -- would put a
-- flat body at gray and rotate this whole palette by about a hundred degrees.
--
-- Every color here is computed rather than sampled: a 5778 K solar spectrum
-- multiplied by a linear reflectance slope, integrated from 400 to 700 nm and
-- converted to sRGB. Four slopes from the neutral population and four from
-- the ultra-red, with the observed gap between them left empty.
--
-- Doing the arithmetic produces a surprise worth keeping. A reflectance slope
-- on sunlight turns the color hardly at all -- the whole belt, from the least
-- reddened object to the reddest, spans about fifteen degrees of hue, from a
-- pale straw to an amber -- and what it really changes is purity: computed
-- chroma runs from 49.5 to 66.1 across the same range. So the famous
-- bimodality is a bimodality in saturation, not in color, and this is the
-- one scheme in the family whose organising axis is purity. Saturations are
-- the computed chromas mapped onto the palette's range, which preserves the
-- gap in proportion: about two fifths of the span, empty, exactly where the
-- surveys find few objects.
--
-- Structurally this is `observatory-iapetus` rotated. That scheme's two clusters
-- are separated in lightness, these two in saturation, and both gaps are
-- measurements rather than choices. The populations alternate up the ladder
-- so that no two neighbouring rungs come from the same family, which is what
-- makes a narrow hue range readable.
--
-- Referencing the integral to a flat spectrum instead was tried and rejected.
-- It turns the neutral four gray, at 7 to 16 chroma units, which is truer to
-- the English word and unusable as a palette: nine of these eleven colors
-- would then be near-neutrals competing for one lightness range, and the
-- closest pair falls to 11.4 Delta E, under the floor every scheme in the
-- collection clears. The schemes here that redden starlight with dust keep the
-- same convention for the same reason -- the reference is the light that
-- arrived, not a flat spectrum.
--
-- Be warned that the honest version of this palette is nearly a monochrome,
-- and that is the finding rather than a shortcut: `observatory-io` and
-- `observatory-titan` are warm schemes because their worlds are one color, and
-- this is a warm scheme because a celebrated color result turns out to be
-- fifteen degrees wide.
--
-- Slopes, and the roles they take:
--
--   neutral_02   hue  57   16.97 contrast   properties
--   ultrared_40  hue  42   12.65 contrast   functions
--   neutral_06   hue  54   11.94 contrast   modules
--   ultrared_34  hue  43   10.14 contrast   types
--   neutral_13   hue  50    8.10 contrast   numbers
--   neutral_10   hue  52    7.34 contrast   strings, escapes
--   ultrared_30  hue  44    6.49 contrast   keywords, macros, imports
--   ultrared_28  hue  45    4.82 contrast   operators
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
-- 16.8 Delta E.

return {
  name = "observatory-kuiper",
  about = "two populations, and the gap between them",
  floor = 16.8,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#120e08",
  bg_float = "#191409",
  bg_sel = "#2e280f",
  bg_hl = "#423315",
  border = "#4c401e",
  bg_search = "#615422",
  nontext = "#413620",

  -- the text ladder
  text = "#bfbdb9",
  dim = "#b0aa9b",
  punct = "#a79572",
  comment = "#7a786f",
  lnr = "#716442",
  lnr_cur = "#aea590",

  -- syntax roles
  str = "#a49a57",
  num = "#b4a13c",
  typ = "#e4ab19",
  mod = "#cac597",
  prop = "#e9e8d5",
  func = "#efc360",
  kw = "#b5880d",
  op = "#917627",
  macro = "#b5880d",
  esc = "#a49a57",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#f2d78f",
  info = "#cac597",
  hint = "#a49a57",
  ok = "#29b16d",
  accent = "#efc360",
  cursearch = "#b5880d",
  subst = "#a49a57",
  match = "#f2d78f",
  title = "#efc360",
  dir = "#e4ab19",
  label = "#b5880d",
  tag = "#b5880d",
  h1 = "#b5880d",
  h2 = "#efc360",
  h3 = "#a49a57",
  h4 = "#e4ab19",
  h5 = "#cac597",
  h6 = "#b4a13c",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#1e1b05",
  diff_text = "#353109",
  vt_error = "#390a0c",
  vt_warn = "#201906",
  vt_info = "#1b1805",
  vt_hint = "#191604",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "neutral_10", hue = 52, chroma = 36.8, cr = 7.34 },
    { key = "neutral_13", hue = 50, chroma = 53.4, cr = 8.10 },
    { key = "ultrared_34", hue = 43, chroma = 73.5, cr = 10.14 },
    { key = "neutral_06", hue = 54, chroma = 24.4, cr = 11.94 },
    { key = "neutral_02", hue = 57, chroma = 9.8, cr = 16.97 },
    { key = "ultrared_40", hue = 42, chroma = 54.9, cr = 12.65 },
    { key = "ultrared_30", hue = 44, chroma = 62.8, cr = 6.49 },
    { key = "ultrared_28", hue = 45, chroma = 45.4, cr = 4.82 },
  },
}

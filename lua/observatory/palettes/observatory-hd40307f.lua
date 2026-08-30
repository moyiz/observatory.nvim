-- observatory-hd40307f -- gray super-Earths under an orange dwarf
--
-- Source: the HD 40307 artwork, which shows the inner super-Earths seen from
-- close orbit around their K dwarf rather than f itself. The system holds at
-- least six planets; f is the fifth, and g, beyond it, was the one reported in
-- 2012 as sitting in the habitable zone.
--
-- Image: HD 40307 f -- artist impression, ESO (eso0819a).
-- ESO.
-- Sampled at 1280 x 932; 38% of the frame carried light.
--
-- The frame is split between gray rock and the orange of the star, which is
-- most of the light in it: the two together are four fifths of what is lit. So
-- the palette is gray with a strong orange, and the tans between them come from
-- the star's light falling on stone -- a warm scheme built around a cool
-- subject, which is what the illustration does.
--
-- Roles follow area.
--
-- What is in the frame, and the roles it takes:
--
--   dune          hue  34  16.40 contrast   0.0% of frame   modules
--   flare         hue  31  13.99 contrast   3.3% of frame   numbers, macros, imports
--   crust         hue 220  13.11 contrast  87.8% of frame   strings, functions, properties
--   star          hue  26  10.33 contrast   7.1% of frame   keywords, types
--   sand          hue  30   7.38 contrast   0.0% of frame   escapes
--   night         hue  33   4.71 contrast   1.7% of frame   operators
--
-- Hues here are the picture's, taken from it unaltered, since they are what
-- makes a palette recognisable as its subject. Each color's purity was then
-- solved for rather than chosen -- the saturation is whatever puts the frame's
-- own chroma on screen at that rung -- and saturation and contrast were both
-- allowed to move within a narrow band until every pair of colors that can
-- appear together, including every pair with the error, warning and git
-- colors that sit beside code in the sign column, cleared the family's
-- separation limit.
--
-- Construction follows the rest of the family: every foreground is solved by
-- binary search for an exact contrast ratio against #000000. What differs is
-- purity, which is solved rather than maximised -- each accent carries the
-- chroma its own patch of the frame carries, as far as the display allows --
-- and the closest pair of adjacent-capable roles sits at 17.3 Delta E.
--
-- The frame also put two of its colors closer together than the family's
-- separation floor allows, so the ladder was spread to 7 points of
-- lightness between rungs rather than the three the picture asked for.
-- The order is still the picture's; the spacing is not.

return {
  name = "observatory-hd40307f",
  about = "gray super-Earths under an orange dwarf",
  floor = 17.3,

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
  text = "#c8cbcf",
  dim = "#a5abb8",
  punct = "#97a3b6",
  comment = "#757881",
  lnr = "#5c6579",
  lnr_cur = "#9da7b8",

  -- syntax roles
  str = "#bacdf3",
  num = "#fbca96",
  typ = "#faa15f",
  mod = "#f7e0c2",
  prop = "#bacdf3",
  func = "#bacdf3",
  kw = "#faa15f",
  op = "#8d7353",
  macro = "#fbca96",
  esc = "#c58e57",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#f7e0c2",
  hint = "#bacdf3",
  ok = "#29b16d",
  accent = "#bacdf3",
  cursearch = "#faa15f",
  subst = "#bacdf3",
  match = "#edc24a",
  title = "#bacdf3",
  dir = "#faa15f",
  label = "#faa15f",
  tag = "#faa15f",
  h1 = "#faa15f",
  h2 = "#bacdf3",
  h3 = "#bacdf3",
  h4 = "#faa15f",
  h5 = "#f7e0c2",
  h6 = "#fbca96",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#261907",
  diff_text = "#422b0c",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#211606",
  vt_hint = "#081530",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "crust", hue = 220, chroma = 20.9, cr = 13.11 },
    { key = "flare", hue = 31, chroma = 34.2, cr = 13.99 },
    { key = "star", hue = 26, chroma = 54.6, cr = 10.33 },
    { key = "dune", hue = 34, chroma = 17.9, cr = 16.40 },
    { key = "night", hue = 33, chroma = 22.2, cr = 4.71 },
    { key = "sand", hue = 30, chroma = 40.1, cr = 7.38 },
  },
}

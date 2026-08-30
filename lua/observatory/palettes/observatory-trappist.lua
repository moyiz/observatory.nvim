-- observatory-trappist -- bone-dry rock in the habitable zone of a red dwarf
--
-- Source: the Exoplanet Catalog's own render of TRAPPIST-1 e, one of seven
-- Earth-sized planets around an ultracool dwarf forty light years away. Three
-- of the seven sit in the habitable zone and e is the most Earth-like of them
-- by density; Webb has since found no thick atmosphere on the inner two.
--
-- Image: TRAPPIST-1 e -- Exoplanet Catalog artist rendering.
-- NASA/JPL-Caltech.
-- Sampled at 600 x 600; 53% of the frame carried light.
--
-- The render is deliberately unhopeful: bone-gray rock over half the frame, a
-- warmer dust over a third, and the night side falling to steel blue. That is
-- the whole palette, and it makes the coolest and driest of the exoplanet
-- schemes -- a habitable-zone world drawn without oceans, because nobody knows
-- whether there are any.
--
-- Roles follow area.
--
-- What is in the frame, and the roles it takes:
--
--   crust         hue  39  16.92 contrast  84.1% of frame   strings, functions, types, operators
--   dust          hue 180  13.24 contrast   9.6% of frame   properties
--   terminator    hue 202   5.98 contrast   4.0% of frame   keywords, modules
--   shadow        hue 211   4.74 contrast   1.4% of frame   numbers
--   sky           hue 213   4.73 contrast   0.9% of frame   macros, imports, escapes
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
-- and the closest pair of adjacent-capable roles sits at 17.6 Delta E.
--
-- The frame is faint: its colors average 5 chroma, where a palette
-- needs something nearer twenty-six to keep ten kinds of token apart.
-- So all of them were scaled by 4.0, uniformly. Every hue, every ratio
-- between the colors and every proportion of the frame is the picture's;
-- only the overall saturation is the display's, in the way that a print of
-- a photograph has its own.
--
-- 1 of the 6 colors sampled from the frame were folded into their
-- nearest neighbour rather than kept: at this subject's hue span there is
-- not enough lightness left to hold that many apart at the family's
-- separation floor, and two colors a reader cannot distinguish are one
-- color. The folded share went to the neighbour, so the proportions of
-- the frame are still what the roles follow.

return {
  name = "observatory-trappist",
  about = "bone-dry rock in the habitable zone of a red dwarf",
  floor = 17.6,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#120d08",
  bg_float = "#1a140a",
  bg_sel = "#302610",
  bg_hl = "#453216",
  border = "#503e1f",
  bg_search = "#655224",
  nontext = "#443621",

  -- the text ladder
  text = "#cdccc8",
  dim = "#b2aa9c",
  punct = "#ada08f",
  comment = "#7b7770",
  lnr = "#6e6450",
  lnr_cur = "#b0a592",

  -- syntax roles
  str = "#fce4b7",
  num = "#2579d2",
  typ = "#fce4b7",
  mod = "#5d8fab",
  prop = "#91dada",
  func = "#fce4b7",
  kw = "#5d8fab",
  op = "#fce4b7",
  macro = "#4d7ab0",
  esc = "#4d7ab0",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#5d8fab",
  hint = "#fce4b7",
  ok = "#29b16d",
  accent = "#fce4b7",
  cursearch = "#5d8fab",
  subst = "#fce4b7",
  match = "#edc24a",
  title = "#fce4b7",
  dir = "#fce4b7",
  label = "#5d8fab",
  tag = "#5d8fab",
  h1 = "#5d8fab",
  h2 = "#fce4b7",
  h3 = "#fce4b7",
  h4 = "#fce4b7",
  h5 = "#5d8fab",
  h6 = "#2579d2",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#071d2a",
  diff_text = "#0d3348",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#061924",
  vt_hint = "#1d1505",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "crust", hue = 39, chroma = 25.0, cr = 16.92 },
    { key = "shadow", hue = 211, chroma = 53.3, cr = 4.74 },
    { key = "terminator", hue = 202, chroma = 21.9, cr = 5.98 },
    { key = "dust", hue = 180, chroma = 23.7, cr = 13.24 },
    { key = "sky", hue = 213, chroma = 33.3, cr = 4.73 },
  },
}

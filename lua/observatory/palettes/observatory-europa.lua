-- observatory-europa -- ice, and the rust-brown cracks across it
--
-- Source: the 2014 remastered Galileo mosaic, PIA19048, reprocessed to
-- approximate what the eye would see rather than the earlier stretched
-- version. The lineae are fractures in an ice shell that floats on liquid
-- water, stained by salts brought up from it.
--
-- Image: Europa -- Galileo, SSI (2014 remastered mosaic, PIA19048).
-- NASA/JPL-Caltech/SETI Institute.
-- Sampled at 2300 x 1700; 48% of the frame carried light.
--
-- The frame is ice in two casts, a neutral white and a blue-gray, over a
-- third of the disc each, with the famous rust-brown lineae covering about a
-- tenth. So the palette is mostly pale and mostly cool, and the browns arrive
-- as the smaller accents, which is the proportion the picture has rather than
-- the proportion the popular crop suggests.
--
-- Roles follow area, and the chrome takes the ice's own cool cast.
--
-- What is in the frame, and the roles it takes:
--
--   lineae        hue  28  16.89 contrast   4.9% of frame   keywords, modules
--   plain         hue  23  12.83 contrast  10.1% of frame   properties
--   blue_ice      hue  27  11.56 contrast  18.9% of frame   functions, operators, escapes
--   ice           hue  60  11.12 contrast  65.0% of frame   strings, types, numbers
--   salt          hue  16   4.67 contrast   1.1% of frame   macros, imports
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
-- and the closest pair of adjacent-capable roles sits at 17.2 Delta E.
--
-- The frame is faint: its colors average 6 chroma, where a palette
-- needs something nearer twenty-six to keep ten kinds of token apart.
-- So all of them were scaled by 3.8, uniformly. Every hue, every ratio
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
--
-- The frame also put two of its colors closer together than the family's
-- separation floor allows, so the ladder was spread to 7 points of
-- lightness between rungs rather than the three the picture asked for.
-- The order is still the picture's; the spacing is not.

return {
  name = "observatory-europa",
  about = "ice, and the rust-brown cracks across it",
  floor = 17.2,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#081013",
  bg_float = "#0b171e",
  bg_sel = "#142a3c",
  bg_hl = "#17394a",
  border = "#23445b",
  bg_search = "#2c587d",
  nontext = "#233b46",

  -- the text ladder
  text = "#c5c9cd",
  dim = "#a0adb5",
  punct = "#8aa4b1",
  comment = "#72797e",
  lnr = "#516877",
  lnr_cur = "#96a9b3",

  -- syntax roles
  str = "#bfbf98",
  num = "#bfbf98",
  typ = "#bfbf98",
  mod = "#f8e3d0",
  prop = "#f2c0a1",
  func = "#f6b279",
  kw = "#f8e3d0",
  op = "#f6b279",
  macro = "#b16145",
  esc = "#f6b279",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#f8e3d0",
  hint = "#bfbf98",
  ok = "#29b16d",
  accent = "#f6b279",
  cursearch = "#f8e3d0",
  subst = "#bfbf98",
  match = "#edc24a",
  title = "#f6b279",
  dir = "#bfbf98",
  label = "#f8e3d0",
  tag = "#f8e3d0",
  h1 = "#f8e3d0",
  h2 = "#f6b279",
  h3 = "#bfbf98",
  h4 = "#bfbf98",
  h5 = "#f8e3d0",
  h6 = "#bfbf98",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#291807",
  diff_text = "#47280d",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#241406",
  vt_hint = "#161604",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "ice", hue = 60, chroma = 20.8, cr = 11.12 },
    { key = "lineae", hue = 28, chroma = 12.6, cr = 16.89 },
    { key = "plain", hue = 23, chroma = 26.3, cr = 12.83 },
    { key = "blue_ice", hue = 27, chroma = 42.9, cr = 11.56 },
    { key = "salt", hue = 16, chroma = 42.3, cr = 4.67 },
  },
}

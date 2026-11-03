-- observatory-crab -- a supernova's wreckage: teal synchrotron under gold filaments
--
-- Source: the Hubble mosaic of M1 released in 2005, twenty-four exposures
-- assembled into the largest image Hubble had made of a single object. The
-- Crab is what a Chinese and Japanese record of a daylight-visible star in
-- 1054 left behind, and this frame is the one every textbook reuses.
--
-- Image: Crab Nebula (M1) -- Hubble Space Telescope, WFPC2 mosaic.
-- NASA, ESA and Allison Loll/Jeff Hester (Arizona State University). Acknowledgement: Davide De Martin (ESA/Hubble).
-- Sampled at 3864 x 3864; 54% of the frame carried light.
--
-- Two things are in it, and they are different colors. The cage of filaments
-- is ejected gas glowing in its own lines -- oxygen mapped to olive-green,
-- sulfur and hydrogen to gold and tan -- and inside it sits a pale blue haze
-- that is not gas emission at all but synchrotron light, electrons from the
-- pulsar spiralling at nearly light speed in its magnetic field. The palette
-- keeps the split: the gold sulfur is the single largest thing in the frame,
-- the blue-white interior and the synchrotron haze around it are the cool
-- half, and the two families never meet in between, which is exactly how the
-- picture is built.
--
-- Roles follow area, and the frame is unusually even -- no color takes much
-- more than a fifth of it -- so the palette spreads across eight units rather
-- than leaning on two.
--
-- What is in the frame, and the roles it takes:
--
--   interior      hue 171  16.91 contrast  16.5% of frame   keywords, types
--   synchrotron   hue 205  13.89 contrast  12.3% of frame   escapes
--   haze          hue 198  10.29 contrast   9.9% of frame   macros, imports
--   sulfur        hue  51   7.65 contrast  22.7% of frame   operators
--   edge          hue 177   7.54 contrast   7.4% of frame   modules
--   oxygen        hue 105   6.18 contrast  18.7% of frame   numbers
--   hydrogen      hue  31   6.10 contrast  10.8% of frame   properties
--   dust          hue  63   6.05 contrast   1.7% of frame   strings, functions
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
-- and the closest pair of adjacent-capable roles sits at 9.5 Delta E.
--
-- The frame is faint: its colors average 17 chroma, where a palette
-- needs something nearer twenty-six to keep ten kinds of token apart.
-- So all of them were scaled by 1.5, uniformly. Every hue, every ratio
-- between the colors and every proportion of the frame is the picture's;
-- only the overall saturation is the display's, in the way that a print of
-- a photograph has its own.
--
-- After the solve, a last pass moved saturation and contrast, never hue.
-- Strings are the most common token on a screen and sat close to the comment
-- rung, so dust was lifted from 4.71 to 6.05 contrast, with hydrogen and oxygen
-- moved up beside it to keep the ladder in order.

return {
  name = "observatory-crab",
  about = "a supernova's wreckage: teal synchrotron under gold filaments",
  floor = 9.5,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#110f07",
  bg_float = "#181509",
  bg_sel = "#2b280e",
  bg_hl = "#3d3513",
  border = "#48421c",
  bg_search = "#5b5720",
  nontext = "#3e371f",

  -- the text ladder
  text = "#c9c7c0",
  dim = "#aeab99",
  punct = "#99947e",
  comment = "#7f7c66",
  lnr = "#696551",
  lnr_cur = "#aba690",

  -- syntax roles
  str = "#8a8f2f",
  num = "#749469",
  typ = "#b3f3e9",
  mod = "#5fa7a3",
  prop = "#b87e42",
  func = "#8a8f2f",
  kw = "#b3f3e9",
  op = "#a89d5e",
  macro = "#6cc0e3",
  esc = "#aad8f8",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#5fa7a3",
  hint = "#8a8f2f",
  ok = "#29b16d",
  accent = "#8a8f2f",
  cursearch = "#b3f3e9",
  subst = "#8a8f2f",
  match = "#edc24a",
  title = "#8a8f2f",
  dir = "#b3f3e9",
  label = "#b3f3e9",
  tag = "#b3f3e9",
  h1 = "#b3f3e9",
  h2 = "#8a8f2f",
  h3 = "#8a8f2f",
  h4 = "#b3f3e9",
  h5 = "#5fa7a3",
  h6 = "#749469",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#051e1d",
  diff_text = "#093533",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#051c1a",
  vt_hint = "#171704",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "dust", hue = 63, chroma = 50.6, cr = 6.05 },
    { key = "oxygen", hue = 105, chroma = 27.5, cr = 6.18 },
    { key = "interior", hue = 171, chroma = 22.1, cr = 16.91 },
    { key = "edge", hue = 177, chroma = 24.1, cr = 7.54 },
    { key = "hydrogen", hue = 31, chroma = 44.2, cr = 6.10 },
    { key = "sulfur", hue = 51, chroma = 34.7, cr = 7.65 },
    { key = "haze", hue = 198, chroma = 29.9, cr = 10.29 },
    { key = "synchrotron", hue = 205, chroma = 21.8, cr = 13.89 },
  },
}

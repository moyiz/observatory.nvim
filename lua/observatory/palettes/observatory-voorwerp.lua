-- observatory-voorwerp -- a green ghost lit by a quasar that has already gone out
--
-- Source: Hubble's WFC3 image of Hanny's Voorwerp, found in 2007 by Hanny van
-- Arkel, a Dutch schoolteacher, while classifying galaxies for Galaxy Zoo.
-- The green cloud beside IC 2497 is being lit by a quasar that switched off
-- some tens of thousands of years ago; the light that ionised it is still on
-- its way out. It is a light echo of an object that no longer exists.
--
-- Image: Hanny's Voorwerp, beside IC 2497 -- Hubble Space Telescope, WFC3.
-- NASA, ESA, William Keel (University of Alabama, Tuscaloosa), and the Galaxy Zoo team.
-- Sampled at 1194 x 1674; 14% of the frame carried light.
--
-- The green is doubly ionised oxygen and it is the only reason anyone knows
-- the name, but it is not most of the frame -- the galaxy's dust and its rose
-- core between them take three quarters, and the blob takes seven per cent.
-- The palette is built to that: a muted violet-gray and rose scheme in which
-- a single olive-green appears in the small roles, which is what the picture
-- looks like and not what the press release implies.
--
-- Roles follow area. The dust at 47 per cent takes strings; the green, at
-- seven per cent across two sampled colors, takes numbers and modules --
-- rare on screen, unmistakable when it appears.
--
-- What is in the frame, and the roles it takes:
--
--   galaxy        hue  29  16.90 contrast  10.3% of frame   properties
--   core          hue 343  11.02 contrast   9.6% of frame   functions
--   blob          hue 331   7.76 contrast   8.0% of frame   keywords, operators, escapes
--   dust          hue 322   6.13 contrast  66.2% of frame   strings, types, modules
--   oxygen        hue 107   4.70 contrast   6.0% of frame   numbers, macros, imports
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
-- and the closest pair of adjacent-capable roles sits at 17.7 Delta E.
--
-- The frame is faint: its colors average 7 chroma, where a palette
-- needs something nearer twenty-six to keep ten kinds of token apart.
-- So all of them were scaled by 3.4, uniformly. Every hue, every ratio
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
  name = "observatory-voorwerp",
  about = "a green ghost lit by a quasar that has already gone out",
  floor = 17.7,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#180a14",
  bg_float = "#240d1c",
  bg_sel = "#451731",
  bg_hl = "#5b1d4a",
  border = "#692953",
  bg_search = "#8d3267",
  nontext = "#542947",

  -- the text ladder
  text = "#d1cfd3",
  dim = "#b0a7ba",
  punct = "#aaa2b5",
  comment = "#7c7682",
  lnr = "#6b6175",
  lnr_cur = "#aca2b8",

  -- syntax roles
  str = "#b6779f",
  num = "#627f5a",
  typ = "#b6779f",
  mod = "#b6779f",
  prop = "#fde2c9",
  func = "#fca2bb",
  kw = "#f76daf",
  op = "#f76daf",
  macro = "#627f5a",
  esc = "#f76daf",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#b6779f",
  hint = "#b6779f",
  ok = "#29b16d",
  accent = "#fca2bb",
  cursearch = "#f76daf",
  subst = "#b6779f",
  match = "#edc24a",
  title = "#fca2bb",
  dir = "#b6779f",
  label = "#f76daf",
  tag = "#f76daf",
  h1 = "#f76daf",
  h2 = "#fca2bb",
  h3 = "#b6779f",
  h4 = "#b6779f",
  h5 = "#b6779f",
  h6 = "#627f5a",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#350925",
  diff_text = "#5a103f",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#300821",
  vt_hint = "#2b081e",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "dust", hue = 322, chroma = 32.7, cr = 6.13 },
    { key = "oxygen", hue = 107, chroma = 24.6, cr = 4.70 },
    { key = "galaxy", hue = 29, chroma = 16.5, cr = 16.90 },
    { key = "core", hue = 343, chroma = 36.6, cr = 11.02 },
    { key = "blob", hue = 331, chroma = 60.1, cr = 7.76 },
  },
}

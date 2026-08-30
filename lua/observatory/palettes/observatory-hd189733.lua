-- observatory-hd189733 -- the one exoplanet whose color was measured, and it is blue
--
-- Source: NASA's artist concept of HD 189733 b, the hot Jupiter sixty-three
-- light years away in Vulpecula, and the only planet in this collection whose
-- color is a measurement rather than an impression. Hubble's imaging
-- spectrograph watched it pass behind its star in 2013 and found a geometric
-- albedo of 0.40 between 290 and 450 nm and under 0.12 between 450 and 570 --
-- reflective in the blue, black in the green and beyond, because sodium in the
-- atmosphere absorbs everything past the middle of the spectrum. The artwork
-- is drawn from that result, so for once the picture and the physics agree.
--
-- Image: HD 189733 b -- see credit.
-- NASA/JPL-Caltech.
-- Sampled at 1280 x 914; 14% of the frame carried light.
--
-- Which makes this a blue monochrome, and an unusually pure one: every color
-- in the frame falls between hue 202 and hue 217, fifteen degrees, and what
-- separates them is purity and how brightly they are lit. The palette keeps
-- that. The pale glare where the star catches the limb is the brightest thing
-- in the picture and takes the brightest role; the deep saturated blues of the
-- terminator are the dimmest and take the smallest.
--
-- Roles were assigned so that each color covers about as much of a buffer as
-- it covers of the frame, and the frame is dominated by two mid-blues at 39
-- and 30 per cent, which is why strings and functions carry them.
--
-- What is in the frame, and the roles it takes:
--
--   azure         hue 194  17.00 contrast  11.0% of frame   keywords, operators
--   crescent      hue 207  13.82 contrast  21.5% of frame   properties, macros, imports
--   terminator    hue 204  10.20 contrast   6.5% of frame   types
--   glare         hue 210   9.27 contrast  12.2% of frame   functions
--   disc          hue 216   7.71 contrast  40.8% of frame   strings, modules
--   limb          hue 211   5.70 contrast   5.5% of frame   numbers
--   unit_7        hue 217   4.71 contrast   2.7% of frame   escapes
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
-- and the closest pair of adjacent-capable roles sits at 15.6 Delta E.

return {
  name = "observatory-hd189733",
  about = "the one exoplanet whose color was measured, and it is blue",
  floor = 15.6,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#090f15",
  bg_float = "#0d1522",
  bg_sel = "#172746",
  bg_hl = "#1b3656",
  border = "#284267",
  bg_search = "#335393",
  nontext = "#26394e",

  -- the text ladder
  text = "#b8bdc5",
  dim = "#a4acb7",
  punct = "#777d83",
  comment = "#5e79a6",
  lnr = "#506688",
  lnr_cur = "#9ba7b6",

  -- syntax roles
  str = "#8a9ebd",
  num = "#4288d4",
  typ = "#7abce9",
  mod = "#8a9ebd",
  prop = "#b3d6f2",
  func = "#69b1fa",
  kw = "#dfe9ec",
  op = "#dfe9ec",
  macro = "#b3d6f2",
  esc = "#3875d9",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#8a9ebd",
  hint = "#8a9ebd",
  ok = "#29b16d",
  accent = "#69b1fa",
  cursearch = "#dfe9ec",
  subst = "#8a9ebd",
  match = "#edc24a",
  title = "#69b1fa",
  dir = "#7abce9",
  label = "#dfe9ec",
  tag = "#dfe9ec",
  h1 = "#dfe9ec",
  h2 = "#69b1fa",
  h3 = "#8a9ebd",
  h4 = "#7abce9",
  h5 = "#8a9ebd",
  h6 = "#4288d4",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#091b35",
  diff_text = "#102f5d",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#08172f",
  vt_hint = "#08162b",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "disc", hue = 216, chroma = 18.3, cr = 7.71 },
    { key = "limb", hue = 211, chroma = 45.6, cr = 5.70 },
    { key = "terminator", hue = 204, chroma = 30.3, cr = 10.20 },
    { key = "crescent", hue = 207, chroma = 18.3, cr = 13.82 },
    { key = "glare", hue = 210, chroma = 43.1, cr = 9.27 },
    { key = "azure", hue = 194, chroma = 3.8, cr = 17.00 },
    { key = "unit_7", hue = 217, chroma = 58.8, cr = 4.71 },
  },
}

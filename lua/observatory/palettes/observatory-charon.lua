-- observatory-charon -- gray ice, and one red-brown pole
--
-- Source: New Horizons' enhanced-color Charon, PIA19968. The true-color
-- release loses the feature that makes Charon interesting, so the enhanced one
-- is used here: the red-brown stain at the north pole, Mordor Macula, is
-- methane escaped from Pluto, caught by Charon's gravity, frozen out at the
-- coldest point on the moon and then processed into tholins by sunlight.
--
-- Image: Charon -- New Horizons, Ralph/MVIC (PIA19968, 'Charon in Enhanced Color').
-- NASA/JHUAPL/SwRI.
-- Sampled at 2000 x 2000; 47% of the frame carried light.
--
-- Nine tenths of the frame is gray ice and the pole is under four per cent of
-- it, so this is a gray scheme with a warm accent rather than a warm scheme.
-- That ratio is deliberate: it is the ratio in the picture, and inverting it
-- would produce a moon nobody would recognise. The reds land on the smallest
-- roles and are the only color in the palette.
--
-- Roles follow area, and the chrome takes the pole's hue rather than the ice's,
-- so the grays keep a trace of the one color the moon has.
--
-- What is in the frame, and the roles it takes:
--
--   plain         hue  18  16.91 contrast  26.1% of frame   functions, numbers
--   crust         hue 180  13.88 contrast  60.3% of frame   strings, types, modules, escapes
--   bright        hue  23  11.12 contrast   4.7% of frame   keywords
--   tholin        hue  25   7.67 contrast   3.4% of frame   operators, macros, imports
--   stain         hue  22   4.69 contrast   5.4% of frame   properties
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
-- and the closest pair of adjacent-capable roles sits at 9.8 Delta E.
--
-- The frame is faint: its colors average 3 chroma, where a palette
-- needs something nearer twenty-six to keep ten kinds of token apart.
-- So all of them were scaled by 3.0, uniformly. Every hue, every ratio
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
  name = "observatory-charon",
  about = "gray ice, and one red-brown pole",
  floor = 9.8,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#140d09",
  bg_float = "#1d130b",
  bg_sel = "#362412",
  bg_hl = "#502c19",
  border = "#593923",
  bg_search = "#734d28",
  nontext = "#4b3225",

  -- the text ladder
  text = "#cbc6c3",
  dim = "#b4a9a0",
  punct = "#a78f83",
  comment = "#8c7868",
  lnr = "#756253",
  lnr_cur = "#b4a298",

  -- syntax roles
  str = "#9adede",
  num = "#fde1d5",
  typ = "#9adede",
  mod = "#9adede",
  prop = "#cd4e06",
  func = "#fde1d5",
  kw = "#f1ae83",
  op = "#de874a",
  macro = "#de874a",
  esc = "#9adede",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#9adede",
  hint = "#9adede",
  ok = "#29b16d",
  accent = "#fde1d5",
  cursearch = "#f1ae83",
  subst = "#9adede",
  match = "#edc24a",
  title = "#fde1d5",
  dir = "#9adede",
  label = "#f1ae83",
  tag = "#f1ae83",
  h1 = "#f1ae83",
  h2 = "#fde1d5",
  h3 = "#9adede",
  h4 = "#9adede",
  h5 = "#9adede",
  h6 = "#fde1d5",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#051e1e",
  diff_text = "#093535",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#051b1c",
  vt_hint = "#051a1a",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "crust", hue = 180, chroma = 22.2, cr = 13.88 },
    { key = "plain", hue = 18, chroma = 12.1, cr = 16.91 },
    { key = "stain", hue = 22, chroma = 75.9, cr = 4.69 },
    { key = "bright", hue = 23, chroma = 37.2, cr = 11.12 },
    { key = "tholin", hue = 25, chroma = 53.9, cr = 7.67 },
  },
}

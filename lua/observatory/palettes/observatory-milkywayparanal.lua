-- observatory-milkywayparanal -- the galactic plane over Paranal, in slate and mauve
--
-- Source: F. Char's panorama at ESO's Paranal Observatory, published in 2016 at
-- 24270 pixels wide -- the full circle of the horizon and about sixty degrees
-- of elevation. It is an ordinary broadband photograph rather than a filtered
-- exposure, so the grays and gray-mauve are close to natural color, held dark
-- by the long exposure the galactic plane needs. The plane arcs over the
-- enclosures of the Very Large Telescope with the Magellanic Clouds standing
-- off to one side. Paranal is at 2635 meters in the Atacama and gets well over
-- three hundred usable clear nights a year, which is the only reason the dust
-- lanes are legible.
--
-- Image: The Milky Way over Paranal -- Wide-field 360-degree panorama from ESO's Paranal Observatory.
-- F. Char/ESO.
-- Sampled at 24270 x 4040; 88% of the frame carried light.
--
-- This is the galaxy as anyone can actually see it, and it is nearly
-- colorless: slate and a gray-mauve where the star clouds are densest, with
-- barely six points of chroma between them. The pale path lifts that split
-- until the mauve reads as mauve, and the result is the dimmest scheme in the
-- collection -- which is the point, since the subject is a dark sky.
--
-- Roles follow area, and the amplification is uniform. This is a sibling of
-- `observatory-milkyway`, which is sampled from an illustration of the galaxy
-- seen from outside: nobody has photographed that view, and this is the view
-- that exists.
--
-- What is in the frame, and the roles it takes:
--
--   night         hue 321  16.93 contrast  70.6% of frame   strings, functions, modules
--   plane         hue 330  14.59 contrast  18.9% of frame   properties, operators, macros, imports
--   shade         hue  10   7.88 contrast   1.8% of frame   numbers
--   clouds        hue  22   4.71 contrast   8.7% of frame   keywords, types, escapes
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
-- and the closest pair of adjacent-capable roles sits at 12.6 Delta E.
--
-- The frame is faint: its colors average 5 chroma, where a palette
-- needs something nearer twenty-six to keep ten kinds of token apart.
-- So all of them were scaled by 1.7, uniformly. Every hue, every ratio
-- between the colors and every proportion of the frame is the picture's;
-- only the overall saturation is the display's, in the way that a print of
-- a photograph has its own.
--
-- 2 of the 6 colors sampled from the frame were folded into their
-- nearest neighbour rather than kept: at this subject's hue span there is
-- not enough lightness left to hold that many apart at the family's
-- separation floor, and two colors a reader cannot distinguish are one
-- color. The folded share went to the neighbour, so the proportions of
-- the frame are still what the roles follow.

return {
  name = "observatory-milkywayparanal",
  about = "the galactic plane over Paranal, in slate and mauve",
  floor = 12.6,

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
  text = "#b4b2bc",
  dim = "#aca9bb",
  punct = "#91909a",
  comment = "#7a758c",
  lnr = "#676378",
  lnr_cur = "#a7a4ba",

  -- syntax roles
  str = "#fbdff1",
  num = "#b29994",
  typ = "#7d7672",
  mod = "#fbdff1",
  prop = "#dad6d8",
  func = "#fbdff1",
  kw = "#7d7672",
  op = "#dad6d8",
  macro = "#dad6d8",
  esc = "#7d7672",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#fbdff1",
  hint = "#fbdff1",
  ok = "#29b16d",
  accent = "#fbdff1",
  cursearch = "#7d7672",
  subst = "#fbdff1",
  match = "#edc24a",
  title = "#fbdff1",
  dir = "#7d7672",
  label = "#7d7672",
  tag = "#7d7672",
  h1 = "#7d7672",
  h2 = "#fbdff1",
  h3 = "#fbdff1",
  h4 = "#7d7672",
  h5 = "#fbdff1",
  h6 = "#b29994",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#350926",
  diff_text = "#5a103f",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#300822",
  vt_hint = "#2b081f",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "night", hue = 321, chroma = 13.7, cr = 16.93 },
    { key = "shade", hue = 10, chroma = 10.4, cr = 7.88 },
    { key = "clouds", hue = 22, chroma = 3.7, cr = 4.71 },
    { key = "plane", hue = 330, chroma = 1.8, cr = 14.59 },
  },
}

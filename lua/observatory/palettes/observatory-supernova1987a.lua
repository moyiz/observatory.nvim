-- observatory-supernova1987a -- the nearest supernova in four centuries, ringed
--
-- Source: Webb's NIRCam image of August 2023, six filters between 1.5 and
-- 4.44 microns mapped across the visible range. SN 1987A went off in the Large
-- Magellanic Cloud on 23 February 1987, 168,000 light years away and still the
-- closest supernova since Kepler's in 1604. It is the only one whose neutrinos
-- were ever caught -- two dozen of them, in three detectors, three hours before
-- the light arrived, which confirmed in an afternoon that a core-collapse
-- supernova is a neutrino event that happens to be visible. The equatorial ring
-- is material the star shed twenty thousand years before it died, now lit from
-- inside as the blast wave reaches it and sets it glowing spot by spot.
--
-- Image: Supernova 1987A in the Large Magellanic Cloud -- James Webb Space Telescope, NIRCam (August 2023).
-- NASA, ESA, CSA, M. Matsuura (Cardiff University), R. Arendt (NASA’s Goddard Spaceflight Center & University of Maryland, Baltimore County), C. Fransson (Stockholm University), J. Larsson (KTH Royal Institute of Technology), A. Pagan (STScI).
-- Sampled at 1077 x 1050; 24% of the frame carried light.
--
-- Only a quarter of the frame is lit and two thirds of that is one dusty brick
-- rose: the ring and the halo around it are the same color at different
-- brightnesses, with a steel-blue keyhole of newly shocked gas at the center and
-- a white core. So the palette is warm and narrow with one cool value in it,
-- which is what the picture is -- an infrared frame of a dust-rich remnant is
-- going to be rose whatever filters are chosen, and the blue is the hot part.
--
-- Roles follow area. Webb's frame is used rather than Hubble's ring of pearls,
-- which is the more famous picture of this object but is published at 655 by
-- 512 pixels and only in a bordered and captioned rendition, so it cannot be
-- sampled cleanly.
--
-- What is in the frame, and the roles it takes:
--
--   star          hue 180  16.94 contrast   5.4% of frame   macros, imports
--   halo          hue  15  13.46 contrast  27.1% of frame   properties, types
--   keyhole       hue 216   7.58 contrast  18.7% of frame   functions, modules, escapes
--   ring          hue   3   5.71 contrast  33.7% of frame   strings
--   outer         hue   3   4.72 contrast  15.0% of frame   keywords, numbers, operators
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
-- and the closest pair of adjacent-capable roles sits at 17.8 Delta E.
--
-- The frame is faint: its colors average 13 chroma, where a palette
-- needs something nearer twenty-six to keep ten kinds of token apart.
-- So all of them were scaled by 2.0, uniformly. Every hue, every ratio
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
  name = "observatory-supernova1987a",
  about = "the nearest supernova in four centuries, ringed",
  floor = 17.8,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#190b0b",
  bg_float = "#240f0e",
  bg_sel = "#431c16",
  bg_hl = "#611f1f",
  border = "#6c2e2a",
  bg_search = "#8b3c31",
  nontext = "#562b2b",

  -- the text ladder
  text = "#d2cecd",
  dim = "#b9a7a5",
  punct = "#b89e9e",
  comment = "#817674",
  lnr = "#7b5e5c",
  lnr_cur = "#b9a09f",

  -- syntax roles
  str = "#c56c67",
  num = "#ca4f48",
  typ = "#f3c5b5",
  mod = "#849dc2",
  prop = "#f3c5b5",
  func = "#849dc2",
  kw = "#ca4f48",
  op = "#ca4f48",
  macro = "#aff3f3",
  esc = "#849dc2",

  -- interface duties, following the syntax colors
  err = "#f0060e",
  warn = "#edc24a",
  info = "#849dc2",
  hint = "#c56c67",
  ok = "#29b16d",
  accent = "#849dc2",
  cursearch = "#ca4f48",
  subst = "#c56c67",
  match = "#edc24a",
  title = "#849dc2",
  dir = "#f3c5b5",
  label = "#ca4f48",
  tag = "#ca4f48",
  h1 = "#ca4f48",
  h2 = "#849dc2",
  h3 = "#c56c67",
  h4 = "#f3c5b5",
  h5 = "#849dc2",
  h6 = "#ca4f48",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#091b35",
  diff_text = "#102f5b",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#08172e",
  vt_hint = "#2d0a08",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "ring", hue = 3, chroma = 39.3, cr = 5.71 },
    { key = "outer", hue = 3, chroma = 56.8, cr = 4.72 },
    { key = "halo", hue = 15, chroma = 20.0, cr = 13.46 },
    { key = "keyhole", hue = 216, chroma = 21.9, cr = 7.58 },
    { key = "star", hue = 180, chroma = 22.1, cr = 16.94 },
  },
}

-- observatory-deepfield -- ten thousand galaxies, and four per cent of the frame is lit
--
-- Source: the Hubble Ultra Deep Field, 2004: eight hundred exposures over
-- four hundred orbits, eleven days of shutter time pointed at a patch of
-- Fornax a tenth the width of the Moon and chosen for having nothing in it.
-- It has about ten thousand galaxies in it, some seen as they were within a
-- billion years of the Big Bang.
--
-- Image: Hubble Ultra Deep Field -- Hubble Space Telescope, ACS and NICMOS.
-- NASA, ESA, and S. Beckwith (STScI) and the HUDF Team.
-- Sampled at 6200 x 6200; 5% of the frame carried light.
--
-- Ninety-six per cent of the frame is empty, which for a palette that renders
-- its background as #000000 is a gift: what is left is the galaxies. They
-- sort by color into the two populations the image is famous for -- nearby
-- spirals, blue-white and lilac, and the oldest and most redshifted objects,
-- amber through deep rust, their light stretched by the expansion it crossed.
-- The palette is that pairing, lilac against amber, in the proportion the
-- exposure found: 36 per cent to 25.
--
-- Roles follow area over the twelve colors sampled from the four per cent of
-- the frame that carried light, of which the eight largest are used.
--
-- What is in the frame, and the roles it takes:
--
--   amber         hue  36  16.88 contrast   3.8% of frame   strings, functions
--   spirals       hue 329  14.80 contrast  50.8% of frame   macros, imports
--   dim           hue  13  13.83 contrast   3.8% of frame   escapes
--   ancient       hue  35   8.62 contrast  21.3% of frame   properties, modules
--   reddest       hue  26   6.08 contrast   5.4% of frame   numbers
--   blush         hue 212   5.63 contrast   6.2% of frame   keywords
--   faint         hue  75   4.73 contrast   8.7% of frame   types, operators
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
-- and the closest pair of adjacent-capable roles sits at 9.4 Delta E.
--
-- The frame is faint: its colors average 14 chroma, where a palette
-- needs something nearer twenty-six to keep ten kinds of token apart.
-- So all of them were scaled by 1.4, uniformly. Every hue, every ratio
-- between the colors and every proportion of the frame is the picture's;
-- only the overall saturation is the display's, in the way that a print of
-- a photograph has its own.
--
-- 1 of the 8 colors sampled from the frame were folded into their
-- nearest neighbour rather than kept: at this subject's hue span there is
-- not enough lightness left to hold that many apart at the family's
-- separation floor, and two colors a reader cannot distinguish are one
-- color. The folded share went to the neighbour, so the proportions of
-- the frame are still what the roles follow.

return {
  name = "observatory-deepfield",
  about = "ten thousand galaxies, and four per cent of the frame is lit",
  floor = 9.4,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#180a12",
  bg_float = "#240d19",
  bg_sel = "#46172c",
  bg_hl = "#5d1e42",
  border = "#6b2a4a",
  bg_search = "#90325b",
  nontext = "#542a42",

  -- the text ladder
  text = "#cdc5c9",
  dim = "#fdc5b5",
  punct = "#a58d9b",
  comment = "#8e7580",
  lnr = "#765e6a",
  lnr_cur = "#b99fad",

  -- syntax roles
  str = "#fde3bb",
  num = "#c37840",
  typ = "#727c54",
  mod = "#c1a174",
  prop = "#c1a174",
  func = "#fde3bb",
  kw = "#6887aa",
  op = "#727c54",
  macro = "#fccbe4",
  esc = "#fdc5b5",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#c1a174",
  hint = "#fde3bb",
  ok = "#29b16d",
  accent = "#fde3bb",
  cursearch = "#6887aa",
  subst = "#fde3bb",
  match = "#edc24a",
  title = "#fde3bb",
  dir = "#727c54",
  label = "#6887aa",
  tag = "#6887aa",
  h1 = "#6887aa",
  h2 = "#fde3bb",
  h3 = "#fde3bb",
  h4 = "#727c54",
  h5 = "#c1a174",
  h6 = "#c37840",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#251907",
  diff_text = "#422b0c",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#211506",
  vt_hint = "#1e1505",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "amber", hue = 36, chroma = 23.0, cr = 16.88 },
    { key = "reddest", hue = 26, chroma = 48.8, cr = 6.08 },
    { key = "faint", hue = 75, chroma = 23.4, cr = 4.73 },
    { key = "ancient", hue = 35, chroma = 28.4, cr = 8.62 },
    { key = "blush", hue = 212, chroma = 22.1, cr = 5.63 },
    { key = "spirals", hue = 329, chroma = 22.0, cr = 14.80 },
    { key = "dim", hue = 13, chroma = 23.7, cr = 13.83 },
  },
}

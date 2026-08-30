-- observatory-rings -- a scan across the annuli, unlit side
--
-- Source: Cassini's mosaic of the unlit face of the rings, PIA08389, taken
-- from thirty-nine degrees above the ring plane. Viewed from the shadowed
-- side, the densest parts of the rings go dark because they block the light
-- rather than scattering it, so the picture inverts the usual reading: the B
-- ring is dim and the sparser divisions are bright.
--
-- Image: Saturn's rings -- Cassini, ISS, unlit side, 39 degrees above the ring plane (PIA08389).
-- NASA/JPL/Space Science Institute.
-- Sampled at 11795 x 1340; 60% of the frame carried light.
--
-- The palette is the scan itself, ordered as the rings are ordered: warm tan
-- for the B ring across two fifths of the frame, a dimmer tan for the C ring,
-- a bright crest where the material thins, and near-black for the gaps. Only
-- the annuli have color, and it is all the same color, so the scheme is a
-- single hue arranged by density.
--
-- Roles follow area. The frame's printed annotations along the top edge are
-- cropped before sampling so that white lettering does not enter the palette.
--
-- What is in the frame, and the roles it takes:
--
--   crest         hue  33  16.95 contrast  13.0% of frame   properties, escapes
--   b_ring        hue  33  10.93 contrast  52.8% of frame   strings, numbers, macros, imports
--   c_ring        hue  34   5.62 contrast  33.3% of frame   functions, keywords, types, modules
--   a_ring        hue 160   4.70 contrast   1.0% of frame   operators
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
-- and the closest pair of adjacent-capable roles sits at 18.2 Delta E.
--
-- The frame is faint: its colors average 12 chroma, where a palette
-- needs something nearer twenty-six to keep ten kinds of token apart.
-- So all of them were scaled by 2.2, uniformly. Every hue, every ratio
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
--
-- The frame also put two of its colors closer together than the family's
-- separation floor allows, so the ladder was spread to 12 points of
-- lightness between rungs rather than the three the picture asked for.
-- The order is still the picture's; the spacing is not.

return {
  name = "observatory-rings",
  about = "a scan across the annuli, unlit side",
  floor = 18.2,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#130d08",
  bg_float = "#1b130a",
  bg_sel = "#332611",
  bg_hl = "#4a3017",
  border = "#543c21",
  bg_search = "#6b5026",
  nontext = "#473423",

  -- the text ladder
  text = "#d1cfcd",
  dim = "#b3a99e",
  punct = "#b3a293",
  comment = "#7d7771",
  lnr = "#726251",
  lnr_cur = "#b2a495",

  -- syntax roles
  str = "#ddb483",
  num = "#ddb483",
  typ = "#a17e51",
  mod = "#a17e51",
  prop = "#fde3c3",
  func = "#a17e51",
  kw = "#a17e51",
  op = "#4e8170",
  macro = "#ddb483",
  esc = "#fde3c3",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#a17e51",
  hint = "#ddb483",
  ok = "#29b16d",
  accent = "#a17e51",
  cursearch = "#a17e51",
  subst = "#ddb483",
  match = "#edc24a",
  title = "#a17e51",
  dir = "#a17e51",
  label = "#a17e51",
  tag = "#a17e51",
  h1 = "#a17e51",
  h2 = "#a17e51",
  h3 = "#ddb483",
  h4 = "#a17e51",
  h5 = "#a17e51",
  h6 = "#ddb483",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#261907",
  diff_text = "#422a0c",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#221506",
  vt_hint = "#1f1406",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "b_ring", hue = 33, chroma = 31.7, cr = 10.93 },
    { key = "c_ring", hue = 34, chroma = 30.6, cr = 5.62 },
    { key = "crest", hue = 33, chroma = 19.3, cr = 16.95 },
    { key = "a_ring", hue = 160, chroma = 21.7, cr = 4.70 },
  },
}

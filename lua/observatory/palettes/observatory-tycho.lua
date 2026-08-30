-- observatory-tycho -- the star that proved the heavens change, in crimson and periwinkle
--
-- Source: Chandra's 2011 image, 207 hours on the remnant of SN 1572, with the
-- field stars from the Digitized Sky Survey. Tycho Brahe watched this star
-- appear in Cassiopeia in November 1572, brighter than Venus, and spent a year
-- failing to measure any parallax for it -- which meant it was not in the
-- atmosphere, and therefore that the unchanging celestial spheres of Aristotle
-- had just changed. His book about it, De nova stella, is where the word nova
-- comes from. It was a Type Ia: a white dwarf that accreted its way past the
-- Chandrasekhar limit and detonated, leaving no star behind at all, which is
-- why four centuries of searching have never found a companion.
--
-- Image: Tycho's supernova remnant (SN 1572) -- Chandra X-ray Observatory, ACIS (2009, 207 hours), on a DSS optical field.
-- X-ray: NASA/CXC/Rutgers/K.Eriksen et al.; Optical: DSS.
-- Sampled at 3600 x 2844; 19% of the frame carried light.
--
-- Under a fifth of the frame is lit and almost all of it is red and rose -- the
-- silicon-rich ejecta, drawn from the 1.6 to 2.15 keV band -- inside a thin
-- periwinkle and violet rim, which is the 4 to 6 keV blast wave. The stripes in
-- that rim are the discovery this exposure was taken for: regular bands in the
-- hardest X-rays, thought to trace magnetic turbulence where the shock is
-- accelerating cosmic rays. So the palette is a crimson field with a cool
-- boundary, and the boundary is where the physics is.
--
-- Roles follow area over the eight largest of twelve sampled colors. The field
-- stars are the only part of this frame that is real broadband light; everything
-- inside the shell is an energy band drawn as a color.
--
-- What is in the frame, and the roles it takes:
--
--   stripes       hue 313  16.98 contrast   8.2% of frame   escapes
--   ejecta        hue 349  13.39 contrast  21.2% of frame   properties
--   rim           hue 257  11.00 contrast  11.1% of frame   numbers, operators
--   iron          hue 337  10.27 contrast  16.1% of frame   keywords, types
--   shock         hue 274   7.62 contrast  10.7% of frame   macros, imports
--   edge          hue 354   5.78 contrast   7.7% of frame   functions
--   silicon       hue 354   5.45 contrast  11.7% of frame   modules
--   cavity        hue 330   4.75 contrast  13.4% of frame   strings
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
-- and the closest pair of adjacent-capable roles sits at 16.9 Delta E.
--
-- The frame also put two of its colors closer together than the family's
-- separation floor allows, so the ladder was spread to 7 points of
-- lightness between rungs rather than the three the picture asked for.
-- The order is still the picture's; the spacing is not.

return {
  name = "observatory-tycho",
  about = "the star that proved the heavens change, in crimson and periwinkle",
  floor = 16.9,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#190b0e",
  bg_float = "#240e12",
  bg_sel = "#47181e",
  bg_hl = "#5f1e2f",
  border = "#6d2b38",
  bg_search = "#933340",
  nontext = "#562a35",

  -- the text ladder
  text = "#d0cccc",
  dim = "#b9a7aa",
  punct = "#a69c9f",
  comment = "#8f7075",
  lnr = "#7a5e63",
  lnr_cur = "#ba9fa6",

  -- syntax roles
  str = "#ae5e86",
  num = "#c2b5e2",
  typ = "#f49bbd",
  mod = "#d55966",
  prop = "#fdbeca",
  func = "#bc7179",
  kw = "#f49bbd",
  op = "#c2b5e2",
  macro = "#b58bd5",
  esc = "#fbdff5",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#d55966",
  hint = "#ae5e86",
  ok = "#29b16d",
  accent = "#bc7179",
  cursearch = "#f49bbd",
  subst = "#ae5e86",
  match = "#edc24a",
  title = "#bc7179",
  dir = "#f49bbd",
  label = "#f49bbd",
  tag = "#f49bbd",
  h1 = "#f49bbd",
  h2 = "#bc7179",
  h3 = "#ae5e86",
  h4 = "#f49bbd",
  h5 = "#d55966",
  h6 = "#c2b5e2",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#390a0f",
  diff_text = "#5f1119",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#32090d",
  vt_hint = "#2c081a",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "cavity", hue = 330, chroma = 38.3, cr = 4.75 },
    { key = "rim", hue = 257, chroma = 24.8, cr = 11.00 },
    { key = "iron", hue = 337, chroma = 37.8, cr = 10.27 },
    { key = "silicon", hue = 354, chroma = 52.9, cr = 5.45 },
    { key = "ejecta", hue = 349, chroma = 24.5, cr = 13.39 },
    { key = "edge", hue = 354, chroma = 31.7, cr = 5.78 },
    { key = "shock", hue = 274, chroma = 43.7, cr = 7.62 },
    { key = "stripes", hue = 313, chroma = 15.1, cr = 16.98 },
  },
}

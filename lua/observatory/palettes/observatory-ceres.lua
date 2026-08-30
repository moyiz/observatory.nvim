-- observatory-ceres -- blue-gray regolith around one bright crater
--
-- Source: Dawn's 'Enhanced Color View of Ceres at Opposition', PIA21406. Ceres
-- is a third of the mass of the asteroid belt and holds water ice under a
-- crust of clay and salt; the bright spots in Occator crater are sodium
-- carbonate left behind by brine that reached the surface recently enough not
-- to have been buried.
--
-- Image: Ceres -- Dawn, Framing Camera (PIA21406, 'Enhanced Color View of Ceres at Opposition').
-- NASA/JPL-Caltech/UCLA/MPS/DLR/IDA.
-- Sampled at 706 x 530; 50% of the frame carried light.
--
-- True color makes Ceres an unbroken gray, so the enhanced release is used,
-- and what it shows is a cool one: every sampled color except the neutrals
-- sits in a narrow band of blue between 228 and 234 degrees. The palette is
-- therefore blue-gray throughout, brightening where fresh material has been
-- exposed, which is the only variation the surface offers.
--
-- Roles follow area.
--
-- What is in the frame, and the roles it takes:
--
--   ejecta        hue 231  16.98 contrast  12.8% of frame   properties
--   fresh         hue 232  13.16 contrast  23.3% of frame   functions, numbers, modules, escapes
--   plain         hue 230  10.23 contrast  58.0% of frame   strings, types, macros, imports
--   shade         hue   0   4.66 contrast   5.9% of frame   keywords, operators
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
-- and the closest pair of adjacent-capable roles sits at 15.8 Delta E.
--
-- The frame is faint: its colors average 10 chroma, where a palette
-- needs something nearer twenty-six to keep ten kinds of token apart.
-- So all of them were scaled by 2.7, uniformly. Every hue, every ratio
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
-- separation floor allows, so the ladder was spread to 7 points of
-- lightness between rungs rather than the three the picture asked for.
-- The order is still the picture's; the spacing is not.

return {
  name = "observatory-ceres",
  about = "blue-gray regolith around one bright crater",
  floor = 15.8,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#0b0e19",
  bg_float = "#0f1428",
  bg_sel = "#1d2356",
  bg_hl = "#213268",
  border = "#303c7a",
  bg_search = "#3e4ab1",
  nontext = "#2c3759",

  -- the text ladder
  text = "#c3c3c8",
  dim = "#a7aab9",
  punct = "#9699a0",
  comment = "#73768d",
  lnr = "#606478",
  lnr_cur = "#a0a5ba",

  -- syntax roles
  str = "#a3b1fa",
  num = "#c3cafb",
  typ = "#a3b1fa",
  mod = "#c3cafb",
  prop = "#e2e6fe",
  func = "#c3cafb",
  kw = "#9d6969",
  op = "#9d6969",
  macro = "#a3b1fa",
  esc = "#c3cafb",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#c3cafb",
  hint = "#a3b1fa",
  ok = "#29b16d",
  accent = "#c3cafb",
  cursearch = "#9d6969",
  subst = "#a3b1fa",
  match = "#edc24a",
  title = "#c3cafb",
  dir = "#a3b1fa",
  label = "#9d6969",
  tag = "#9d6969",
  h1 = "#9d6969",
  h2 = "#c3cafb",
  h3 = "#a3b1fa",
  h4 = "#a3b1fa",
  h5 = "#c3cafb",
  h6 = "#c3cafb",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#0d1449",
  diff_text = "#16237f",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#0c1242",
  vt_hint = "#0a123a",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "plain", hue = 230, chroma = 39.7, cr = 10.23 },
    { key = "fresh", hue = 232, chroma = 26.0, cr = 13.16 },
    { key = "ejecta", hue = 231, chroma = 12.5, cr = 16.98 },
    { key = "shade", hue = 0, chroma = 22.5, cr = 4.66 },
  },
}

-- observatory-kilonova -- two neutron stars merging, and where the gold came from
--
-- Source: Mark Garlick's artist impression of GW170817 for ESO -- the
-- neutron-star merger detected in gravitational waves on 17 August 2017 and
-- then, one and three quarter seconds later, in gamma rays, and then for weeks
-- afterward in every band down to radio. It is where the heavy elements come
-- from: the event produced several Earth masses of gold and platinum.
--
-- Image: GW170817, a neutron-star merger -- artist impression.
-- University of Warwick/Mark Garlick.
-- Sampled at 6152 x 4026; 72% of the frame carried light.
--
-- The illustration is cyan and electric blue, with a white-hot center and a
-- band of warm tan debris thrown out sideways. Sixty per cent of the lit frame
-- is in the blue-cyan band between hue 188 and 204; the tan is 16 per cent and
-- it is the only warm thing in the picture. The palette keeps that ratio,
-- which makes it the brightest cool scheme here -- four of its colors sit
-- above 12:1 against black, because in the artwork almost everything is
-- glowing.
--
-- Roles follow area over the eight largest of twelve sampled colors; the tan
-- debris, second largest at 16 per cent, is what keeps this from being a pure
-- cyan monochrome.
--
-- What is in the frame, and the roles it takes:
--
--   core          hue 190  16.86 contrast  14.9% of frame   strings, functions
--   outer         hue 188  12.97 contrast   8.8% of frame   escapes
--   glare         hue  27  12.31 contrast  22.8% of frame   properties
--   jet           hue 200   8.73 contrast  14.9% of frame   operators, macros, imports
--   halo          hue 201   7.53 contrast   9.2% of frame   numbers
--   disc          hue 213   4.73 contrast   9.2% of frame   modules
--   debris        hue 210   4.70 contrast  20.2% of frame   keywords, types
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
-- and the closest pair of adjacent-capable roles sits at 17.1 Delta E.
--
-- 1 of the 8 colors sampled from the frame were folded into their
-- nearest neighbour rather than kept: at this subject's hue span there is
-- not enough lightness left to hold that many apart at the family's
-- separation floor, and two colors a reader cannot distinguish are one
-- color. The folded share went to the neighbour, so the proportions of
-- the frame are still what the roles follow.
--
-- The frame also put two of its colors closer together than the family's
-- separation floor allows, so the ladder was spread to 5 points of
-- lightness between rungs rather than the three the picture asked for.
-- The order is still the picture's; the spacing is not.

return {
  name = "observatory-kilonova",
  about = "two neutron stars merging, and where the gold came from",
  floor = 17.1,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#140c08",
  bg_float = "#1d130b",
  bg_sel = "#362412",
  bg_hl = "#4f2d19",
  border = "#593a22",
  bg_search = "#724d28",
  nontext = "#4a3225",

  -- the text ladder
  text = "#c3c6ca",
  dim = "#a2acb6",
  punct = "#8ca2b3",
  comment = "#73787f",
  lnr = "#556778",
  lnr_cur = "#98a7b5",

  -- syntax roles
  str = "#b6f0fc",
  num = "#57a3cd",
  typ = "#317ac3",
  mod = "#5a7aa0",
  prop = "#dec1a9",
  func = "#b6f0fc",
  kw = "#317ac3",
  op = "#23b1f9",
  macro = "#23b1f9",
  esc = "#34defa",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#5a7aa0",
  hint = "#b6f0fc",
  ok = "#29b16d",
  accent = "#b6f0fc",
  cursearch = "#317ac3",
  subst = "#b6f0fc",
  match = "#edc24a",
  title = "#b6f0fc",
  dir = "#317ac3",
  label = "#317ac3",
  tag = "#317ac3",
  h1 = "#317ac3",
  h2 = "#b6f0fc",
  h3 = "#b6f0fc",
  h4 = "#317ac3",
  h5 = "#5a7aa0",
  h6 = "#57a3cd",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#091c32",
  diff_text = "#0f3057",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#08192c",
  vt_hint = "#05181d",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "core", hue = 190, chroma = 19.5, cr = 16.86 },
    { key = "halo", hue = 201, chroma = 30.8, cr = 7.53 },
    { key = "debris", hue = 210, chroma = 44.6, cr = 4.70 },
    { key = "disc", hue = 213, chroma = 24.0, cr = 4.73 },
    { key = "glare", hue = 27, chroma = 17.2, cr = 12.31 },
    { key = "jet", hue = 200, chroma = 46.9, cr = 8.73 },
    { key = "outer", hue = 188, chroma = 41.2, cr = 12.97 },
  },
}

-- observatory-callisto -- the most cratered surface known, in dark tan
--
-- Source: Galileo's global color Callisto from May 2001, the only complete
-- one the mission obtained. Callisto has no geology to speak of: nothing has
-- resurfaced it since it formed, so it holds the most heavily cratered surface
-- in the solar system and reads as an unbroken record of impacts.
--
-- Image: Callisto -- Galileo, SSI, May 2001 (PIA03456).
-- NASA/JPL/DLR (German Aerospace Center).
-- Sampled at 740 x 753; 57% of the frame carried light.
--
-- The palette is a dark tan crust over half the lit disc, with the bright
-- scars of impacts covering nearly a third and a green-gray of exposed ice in
-- the smaller share. It is the dimmest of the Galilean moons and the frame is
-- correspondingly low in light, so the ladder spends more of its range at the
-- bright end than the picture does, which is a legibility requirement rather
-- than a property of Callisto.
--
-- Roles follow area.
--
-- What is in the frame, and the roles it takes:
--
--   scar          hue  56  16.96 contrast  26.5% of frame   properties, numbers
--   crust         hue  24  14.73 contrast  58.5% of frame   strings, keywords, escapes
--   dust          hue  35  10.98 contrast   7.1% of frame   functions
--   ice           hue 147  10.39 contrast   5.8% of frame   types, macros, imports
--   night         hue 180   5.70 contrast   0.7% of frame   modules
--   shadow        hue 120   4.72 contrast   1.5% of frame   operators
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
-- and the closest pair of adjacent-capable roles sits at 18.5 Delta E.
--
-- The frame is faint: its colors average 10 chroma, where a palette
-- needs something nearer twenty-six to keep ten kinds of token apart.
-- So all of them were scaled by 2.5, uniformly. Every hue, every ratio
-- between the colors and every proportion of the frame is the picture's;
-- only the overall saturation is the display's, in the way that a print of
-- a photograph has its own.

return {
  name = "observatory-callisto",
  about = "the most cratered surface known, in dark tan",
  floor = 18.5,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#140c09",
  bg_float = "#1e130b",
  bg_sel = "#372312",
  bg_hl = "#512b19",
  border = "#5a3923",
  bg_search = "#744b29",
  nontext = "#4b3125",

  -- the text ladder
  text = "#d3d0cd",
  dim = "#b5a9a1",
  punct = "#b6a095",
  comment = "#7d7772",
  lnr = "#756153",
  lnr_cur = "#b5a398",

  -- syntax roles
  str = "#fdcfb0",
  num = "#ece9bd",
  typ = "#8dc2a5",
  mod = "#4c9090",
  prop = "#ece9bd",
  func = "#e1b474",
  kw = "#fdcfb0",
  op = "#617f61",
  macro = "#8dc2a5",
  esc = "#fdcfb0",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#4c9090",
  hint = "#fdcfb0",
  ok = "#29b16d",
  accent = "#e1b474",
  cursearch = "#fdcfb0",
  subst = "#fdcfb0",
  match = "#edc24a",
  title = "#e1b474",
  dir = "#8dc2a5",
  label = "#fdcfb0",
  tag = "#fdcfb0",
  h1 = "#fdcfb0",
  h2 = "#e1b474",
  h3 = "#fdcfb0",
  h4 = "#8dc2a5",
  h5 = "#4c9090",
  h6 = "#ece9bd",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#051e1e",
  diff_text = "#093535",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#051b1c",
  vt_hint = "#231206",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "crust", hue = 24, chroma = 24.6, cr = 14.73 },
    { key = "scar", hue = 56, chroma = 22.6, cr = 16.96 },
    { key = "ice", hue = 147, chroma = 25.0, cr = 10.39 },
    { key = "night", hue = 180, chroma = 22.5, cr = 5.70 },
    { key = "dust", hue = 35, chroma = 39.6, cr = 10.98 },
    { key = "shadow", hue = 120, chroma = 21.4, cr = 4.72 },
  },
}

-- observatory-milkyway -- our own galaxy from outside, which nobody has seen
--
-- Source: Robert Hurt's face-on rendering of the Milky Way for the Spitzer
-- Science Center, built from infrared survey counts of stars and gas rather
-- than imagined -- the bar, the two major arms, the spurs. No photograph of
-- this view exists or can exist, and this illustration is what every article
-- about the shape of our galaxy has used since 2008.
--
-- Image: The Milky Way -- artist concept from Spitzer survey data.
-- NASA/JPL-Caltech/R. Hurt (SSC/Caltech).
-- Sampled at 5600 x 5600; 51% of the frame carried light.
--
-- One color dominates it: a slate periwinkle blue that is 69 per cent of the
-- lit frame, the arms and the disc between them. Against that there is a warm
-- cream core -- old stars, and the bar seen through the dust in front of it --
-- at seven per cent, and a violet-gray dust component at nine. So the palette
-- is a blue near-monochrome with a single cream accent, and the accent is
-- deliberately small, because in the picture it is small.
--
-- Roles follow area, and with one color holding two thirds of the frame that
-- color necessarily takes several roles: strings, functions and keywords are
-- all the arms, which is why this reads as a duotone.
--
-- What is in the frame, and the roles it takes:
--
--   spurs         hue  41  16.93 contrast   4.0% of frame   numbers, macros, imports
--   dust          hue 218  13.17 contrast   8.3% of frame   properties
--   core          hue 258   6.88 contrast   5.1% of frame   types, operators, escapes
--   arms          hue 221   4.71 contrast  82.6% of frame   strings, functions, keywords, modules
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
-- and the closest pair of adjacent-capable roles sits at 16.4 Delta E.
--
-- The frame is faint: its colors average 16 chroma, where a palette
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
  name = "observatory-milkyway",
  about = "our own galaxy from outside, which nobody has seen",
  floor = 16.4,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#0a0f16",
  bg_float = "#0d1524",
  bg_sel = "#19264a",
  bg_hl = "#1d365b",
  border = "#2a406d",
  bg_search = "#36509b",
  nontext = "#283952",

  -- the text ladder
  text = "#c5c8cd",
  dim = "#a5abb8",
  punct = "#95a1b3",
  comment = "#757881",
  lnr = "#5c667a",
  lnr_cur = "#9da7b8",

  -- syntax roles
  str = "#5e77ac",
  num = "#f8e5bd",
  typ = "#9a8db8",
  mod = "#5e77ac",
  prop = "#b9cef2",
  func = "#5e77ac",
  kw = "#5e77ac",
  op = "#9a8db8",
  macro = "#f8e5bd",
  esc = "#9a8db8",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#5e77ac",
  hint = "#5e77ac",
  ok = "#29b16d",
  accent = "#5e77ac",
  cursearch = "#5e77ac",
  subst = "#5e77ac",
  match = "#edc24a",
  title = "#5e77ac",
  dir = "#9a8db8",
  label = "#5e77ac",
  tag = "#5e77ac",
  h1 = "#5e77ac",
  h2 = "#5e77ac",
  h3 = "#5e77ac",
  h4 = "#9a8db8",
  h5 = "#5e77ac",
  h6 = "#f8e5bd",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#0a1a3a",
  diff_text = "#122c65",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#091633",
  vt_hint = "#081530",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "arms", hue = 221, chroma = 31.6, cr = 4.71 },
    { key = "spurs", hue = 41, chroma = 21.9, cr = 16.93 },
    { key = "core", hue = 258, chroma = 24.8, cr = 6.88 },
    { key = "dust", hue = 218, chroma = 20.1, cr = 13.17 },
  },
}

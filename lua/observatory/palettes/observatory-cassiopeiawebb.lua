-- observatory-cassiopeiawebb -- the same remnant in the infrared, which makes it teal and rust
--
-- Source: Webb's MIRI image of April 2023, eight filters between 5 and 25
-- microns. This is the frame that made Cassiopeia A famous a second time.
-- Mid-infrared sees the dust rather than the shock: the outer shell resolves
-- into curtains and knots of material the star threw off and the blast wave is
-- now sweeping up, and the cavity inside turns out not to be empty. The loop of
-- light across it, which the team named the Green Monster on sight, is ejecta
-- from the explosion punched into the surrounding shell, and nobody had seen it
-- at all before this exposure.
--
-- Image: Cassiopeia A in the mid-infrared -- James Webb Space Telescope, MIRI (April 2023, eight filters, GO program 1947).
-- NASA, ESA, CSA, D. Milisavljevic (Purdue University), T. Temim (Princeton University), I. De Looze (UGent), J. DePasquale (STScI).
-- Sampled at 4008 x 4009; 44% of the frame carried light.
--
-- Where `observatory-cassiopeia` is violet, this is rust and teal: three fifths
-- of the lit frame is warm -- a dusty cream, a rust shell, brick knots and two
-- ambers -- and a quarter is the cool slate and deep teal of the interior, with
-- the Green Monster itself a sage green at under two per cent. So the two Cas A
-- schemes are the same object in different halves of the spectrum, and they
-- share nothing: X-rays put the hottest gas outside and infrared puts the
-- coolest dust everywhere, and the color follows whichever one the telescope
-- was built for.
--
-- Roles follow area over nine sampled colors rather than the usual eight, kept
-- one wider so that the Green Monster survives into the palette: at 1.6 per cent
-- of the frame it is the smallest unit any scheme here carries, and it is the
-- reason this image was news.
--
-- Sibling of `observatory-cassiopeia`. Both are shipped because both are
-- canonical, depending on which wavelength you learned the object at.
--
-- What is in the frame, and the roles it takes:
--
--   shell         hue  29  16.89 contrast  25.1% of frame   operators
--   filament      hue  23  14.07 contrast   4.9% of frame   modules
--   bright        hue 144  13.78 contrast   1.6% of frame   strings, functions
--   interior      hue  15  10.84 contrast  19.1% of frame   types, numbers
--   knot          hue  17  10.46 contrast   5.1% of frame   macros, imports
--   shade         hue  10   6.04 contrast   7.2% of frame   escapes
--   dust          hue 202   5.83 contrast  27.9% of frame   properties
--   ground        hue 354   4.68 contrast   9.2% of frame   keywords
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
-- and the closest pair of adjacent-capable roles sits at 9.5 Delta E.
--
-- The frame is faint: its colors average 17 chroma, where a palette
-- needs something nearer twenty-six to keep ten kinds of token apart.
-- So all of them were scaled by 1.6, uniformly. Every hue, every ratio
-- between the colors and every proportion of the frame is the picture's;
-- only the overall saturation is the display's, in the way that a print of
-- a photograph has its own.
--
-- 1 of the 9 colors sampled from the frame were folded into their
-- nearest neighbour rather than kept: at this subject's hue span there is
-- not enough lightness left to hold that many apart at the family's
-- separation floor, and two colors a reader cannot distinguish are one
-- color. The folded share went to the neighbour, so the proportions of
-- the frame are still what the roles follow.

return {
  name = "observatory-cassiopeiawebb",
  about = "the same remnant in the infrared, which makes it teal and rust",
  floor = 9.5,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#080f13",
  bg_float = "#0b171d",
  bg_sel = "#132a3a",
  bg_hl = "#173948",
  border = "#224557",
  bg_search = "#2b597a",
  nontext = "#223b45",

  -- the text ladder
  text = "#cac7c3",
  dim = "#b4a99f",
  punct = "#a59080",
  comment = "#897a68",
  lnr = "#736252",
  lnr_cur = "#b3a496",

  -- syntax roles
  str = "#addcc0",
  num = "#efaa93",
  typ = "#efaa93",
  mod = "#fcc9aa",
  prop = "#5b8da9",
  func = "#addcc0",
  kw = "#9d696e",
  op = "#fde2c8",
  macro = "#faa17d",
  esc = "#da6751",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#fcc9aa",
  hint = "#addcc0",
  ok = "#29b16d",
  accent = "#addcc0",
  cursearch = "#9d696e",
  subst = "#addcc0",
  match = "#edc24a",
  title = "#addcc0",
  dir = "#efaa93",
  label = "#9d696e",
  tag = "#9d696e",
  h1 = "#9d696e",
  h2 = "#addcc0",
  h3 = "#addcc0",
  h4 = "#efaa93",
  h5 = "#fcc9aa",
  h6 = "#efaa93",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#2c1508",
  diff_text = "#4c250d",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#261307",
  vt_hint = "#051a0d",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "bright", hue = 144, chroma = 22.6, cr = 13.78 },
    { key = "interior", hue = 15, chroma = 31.4, cr = 10.84 },
    { key = "filament", hue = 23, chroma = 26.3, cr = 14.07 },
    { key = "dust", hue = 202, chroma = 21.9, cr = 5.83 },
    { key = "ground", hue = 354, chroma = 22.3, cr = 4.68 },
    { key = "shell", hue = 29, chroma = 16.9, cr = 16.89 },
    { key = "knot", hue = 17, chroma = 43.7, cr = 10.46 },
    { key = "shade", hue = 10, chroma = 55.0, cr = 6.04 },
  },
}

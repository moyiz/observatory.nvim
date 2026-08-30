-- observatory-enceladus -- white ice, and the fractures that vent it
--
-- Source: Cassini's 'Fractured World', PIA08354, the south-polar view that
-- shows the tiger stripes. They are the vents: Enceladus sprays water from
-- them at three hundred kilograms a second, which is where Saturn's E ring
-- comes from, and which is why a moon five hundred kilometers across is the
-- most reflective object in the solar system.
--
-- Image: Enceladus -- Cassini, ISS (PIA08354, 'Fractured World').
-- NASA/JPL/Space Science Institute.
-- Sampled at 6404 x 6404; 48% of the frame carried light.
--
-- No color-bearing portrait of Enceladus is published, by any mission, in any
-- processing: it is water ice fresh enough to be white, and every release
-- reflects that. What the frame does hold is a warm-cool split of two or three
-- points of chroma between the sunlit ice and the fractures, and the pale path
-- lifts that split rather than inventing a hue for the moon. The result is the
-- coolest and lightest scheme in the collection.
--
-- Roles follow area, and the amplification is uniform, so the warm-cool
-- relationship is the frame's.
--
-- What is in the frame, and the roles it takes:
--
--   glare         hue  45  16.86 contrast  12.2% of frame   properties
--   stripe        hue 105  10.40 contrast  24.1% of frame   functions, keywords, escapes
--   shade         hue 240   7.13 contrast   5.1% of frame   types, macros, imports
--   ice           hue  60   5.93 contrast  58.6% of frame   strings, numbers, operators, modules
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
-- and the closest pair of adjacent-capable roles sits at 11.6 Delta E.
--
-- The frame is faint: its colors average 2 chroma, where a palette
-- needs something nearer twenty-six to keep ten kinds of token apart.
-- So all of them were scaled by 4.3, uniformly. Every hue, every ratio
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
  name = "observatory-enceladus",
  about = "white ice, and the fractures that vent it",
  floor = 11.6,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#081012",
  bg_float = "#0b171c",
  bg_sel = "#132b3a",
  bg_hl = "#163a46",
  border = "#214556",
  bg_search = "#2a5979",
  nontext = "#223b45",

  -- the text ladder
  text = "#c2c7ca",
  dim = "#9fadb3",
  punct = "#7999a5",
  comment = "#72797d",
  lnr = "#4d6977",
  lnr_cur = "#95a9b2",

  -- syntax roles
  str = "#89897c",
  num = "#89897c",
  typ = "#96969b",
  mod = "#89897c",
  prop = "#efe6cc",
  func = "#aebaaa",
  kw = "#aebaaa",
  op = "#89897c",
  macro = "#96969b",
  esc = "#aebaaa",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#89897c",
  hint = "#89897c",
  ok = "#29b16d",
  accent = "#aebaaa",
  cursearch = "#aebaaa",
  subst = "#89897c",
  match = "#edc24a",
  title = "#aebaaa",
  dir = "#96969b",
  label = "#aebaaa",
  tag = "#aebaaa",
  h1 = "#aebaaa",
  h2 = "#aebaaa",
  h3 = "#89897c",
  h4 = "#96969b",
  h5 = "#89897c",
  h6 = "#89897c",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#1c1c05",
  diff_text = "#323209",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#191904",
  vt_hint = "#161604",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "ice", hue = 60, chroma = 7.4, cr = 5.93 },
    { key = "shade", hue = 240, chroma = 2.8, cr = 7.13 },
    { key = "glare", hue = 45, chroma = 13.8, cr = 16.86 },
    { key = "stripe", hue = 105, chroma = 9.8, cr = 10.40 },
  },
}

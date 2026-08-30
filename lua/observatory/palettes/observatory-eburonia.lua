-- observatory-eburonia -- a hot Neptune in violet and indigo, and its orange dwarf
--
-- Source: NOIRLab's artist impression of K2-25 b, standing in for HD 49674 b,
-- named Eburonia by Belgium in the IAU's NameExoWorlds campaign. The catalogue
-- has no portrait of Eburonia and serves the same teal Neptune-class
-- placeholder it serves for every Neptune-sized planet; this frame is a
-- different hot Neptune, drawn in the color the class is usually drawn in.
--
-- Image: HD 49674 b (IAU name Eburonia) -- artist impression of K2-25b, NOIRLab (noirlab2018a).
-- NOIRLab/NSF/AURA/J. Pollard.
-- Sampled at 1280 x 720; 18% of the frame carried light.
--
-- Alkali metals are the reason these worlds are painted violet: sodium and
-- potassium absorb through the yellow and red, and what comes back out of the
-- atmosphere is blue shading to purple. The frame follows that -- orchid cloud
-- tops over an indigo globe, five distinct violets between them -- and the
-- orange dwarf at the lower left supplies the only warm color in it, which
-- lands on the roles that want to be noticed against all that purple.
--
-- Roles follow area over the eight largest of twelve sampled colors.
--
-- What is in the frame, and the roles it takes:
--
--   flare         hue  47  16.89 contrast   3.7% of frame   escapes
--   indigo        hue 296  12.59 contrast  27.2% of frame   properties
--   star          hue   7  10.99 contrast   4.3% of frame   macros, imports
--   lilac         hue 266   7.62 contrast  12.9% of frame   keywords
--   violet        hue 282   7.52 contrast  14.0% of frame   operators, modules
--   deep          hue   5   5.62 contrast   6.4% of frame   strings, functions
--   orchid        hue 248   4.67 contrast  31.5% of frame   types, numbers
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
-- and the closest pair of adjacent-capable roles sits at 15.7 Delta E.
--
-- 1 of the 8 colors sampled from the frame were folded into their
-- nearest neighbour rather than kept: at this subject's hue span there is
-- not enough lightness left to hold that many apart at the family's
-- separation floor, and two colors a reader cannot distinguish are one
-- color. The folded share went to the neighbour, so the proportions of
-- the frame are still what the roles follow.

return {
  name = "observatory-eburonia",
  about = "a hot Neptune in violet and indigo, and its orange dwarf",
  floor = 15.7,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#0e0d1d",
  bg_float = "#15112d",
  bg_sel = "#291d58",
  bg_hl = "#2e287e",
  border = "#3f3486",
  bg_search = "#573fb5",
  nontext = "#353265",

  -- the text ladder
  text = "#cac4ca",
  dim = "#b7a6b9",
  punct = "#aa9bac",
  comment = "#837284",
  lnr = "#6f6071",
  lnr_cur = "#b2a0b4",

  -- syntax roles
  str = "#f4402f",
  num = "#7462e9",
  typ = "#7462e9",
  mod = "#c97beb",
  prop = "#f1b4f5",
  func = "#f4402f",
  kw = "#ab90cf",
  op = "#c97beb",
  macro = "#fca59a",
  esc = "#fbe69a",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#c97beb",
  hint = "#f4402f",
  ok = "#29b16d",
  accent = "#f4402f",
  cursearch = "#ab90cf",
  subst = "#f4402f",
  match = "#edc24a",
  title = "#f4402f",
  dir = "#7462e9",
  label = "#ab90cf",
  tag = "#ab90cf",
  h1 = "#ab90cf",
  h2 = "#f4402f",
  h3 = "#f4402f",
  h4 = "#7462e9",
  h5 = "#c97beb",
  h6 = "#7462e9",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#2d0a3b",
  diff_text = "#4c1265",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#270935",
  vt_hint = "#2c0b08",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "deep", hue = 5, chroma = 83.9, cr = 5.62 },
    { key = "orchid", hue = 248, chroma = 78.3, cr = 4.67 },
    { key = "violet", hue = 282, chroma = 66.3, cr = 7.52 },
    { key = "indigo", hue = 296, chroma = 40.4, cr = 12.59 },
    { key = "lilac", hue = 266, chroma = 36.5, cr = 7.62 },
    { key = "star", hue = 7, chroma = 36.3, cr = 10.99 },
    { key = "flare", hue = 47, chroma = 39.8, cr = 16.89 },
  },
}

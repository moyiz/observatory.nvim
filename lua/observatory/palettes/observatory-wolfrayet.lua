-- observatory-wolfrayet -- a star shedding itself, in plum and steel
--
-- Source: Webb's NIRCam and MIRI composite of WR 124, one of the first images
-- released from the telescope's early observations in 2023. The star is a
-- Wolf-Rayet, thirty solar masses shedding perhaps ten of them, and the
-- nebula around it is the shed material -- the phase that makes the dust the
-- next generation of stars will be built from, seen at the moment it forms.
--
-- Image: WR 124 -- JWST, NIRCam and MIRI composite.
-- NASA, ESA, CSA, STScI, Webb ERO Production Team.
-- Sampled at 4416 x 4349; 39% of the frame carried light.
--
-- Infrared mapped to visible, so the color is a translation rather than a
-- likeness, and the translation is plum and magenta for the shell, mauve for
-- the dust clumps, steel blue for the field stars behind it, and near-white
-- for the star. What makes it work as a palette is that the two halves are
-- close to balanced -- 59 per cent rose and plum against 30 blue and white --
-- so it has warmth and cool in the same frame without either winning.
--
-- Roles follow area. The shell at 23 per cent takes strings; the steel blue
-- field, at 16, takes the roles that need to read as cold.
--
-- What is in the frame, and the roles it takes:
--
--   glow          hue 314  14.56 contrast  13.9% of frame   types, numbers
--   dust          hue 344  12.64 contrast  18.7% of frame   properties, modules
--   star          hue   0   8.13 contrast   8.2% of frame   operators
--   field         hue 216   7.51 contrast  11.0% of frame   keywords, macros, imports
--   shell         hue 340   5.78 contrast  46.6% of frame   escapes
--   clumps        hue 293   4.66 contrast   1.5% of frame   strings, functions
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
-- and the closest pair of adjacent-capable roles sits at 16.2 Delta E.
--
-- The frame is faint: its colors average 23 chroma, where a palette
-- needs something nearer twenty-six to keep ten kinds of token apart.
-- So all of them were scaled by 1.2, uniformly. Every hue, every ratio
-- between the colors and every proportion of the frame is the picture's;
-- only the overall saturation is the display's, in the way that a print of
-- a photograph has its own.

return {
  name = "observatory-wolfrayet",
  about = "a star shedding itself, in plum and steel",
  floor = 16.2,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#190b10",
  bg_float = "#240e15",
  bg_sel = "#461724",
  bg_hl = "#5f1e38",
  border = "#6d2a40",
  bg_search = "#92334c",
  nontext = "#552a3b",

  -- the text ladder
  text = "#cdc5c7",
  dim = "#b9a6ac",
  punct = "#b199a3",
  comment = "#817578",
  lnr = "#785f67",
  lnr_cur = "#b99fa9",

  -- syntax roles
  str = "#8a6d8e",
  num = "#fec6f1",
  typ = "#fec6f1",
  mod = "#edbcc9",
  prop = "#edbcc9",
  func = "#8a6d8e",
  kw = "#849cc1",
  op = "#d48f8f",
  macro = "#849cc1",
  esc = "#be6e88",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#edbcc9",
  hint = "#8a6d8e",
  ok = "#29b16d",
  accent = "#8a6d8e",
  cursearch = "#849cc1",
  subst = "#8a6d8e",
  match = "#edc24a",
  title = "#8a6d8e",
  dir = "#fec6f1",
  label = "#849cc1",
  tag = "#849cc1",
  h1 = "#849cc1",
  h2 = "#8a6d8e",
  h3 = "#8a6d8e",
  h4 = "#fec6f1",
  h5 = "#edbcc9",
  h6 = "#fec6f1",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#380a16",
  diff_text = "#5d1025",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#320914",
  vt_hint = "#27082c",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "clumps", hue = 293, chroma = 22.3, cr = 4.66 },
    { key = "glow", hue = 314, chroma = 30.0, cr = 14.56 },
    { key = "dust", hue = 344, chroma = 19.6, cr = 12.64 },
    { key = "field", hue = 216, chroma = 21.8, cr = 7.51 },
    { key = "star", hue = 0, chroma = 28.3, cr = 8.13 },
    { key = "shell", hue = 340, chroma = 34.9, cr = 5.78 },
  },
}

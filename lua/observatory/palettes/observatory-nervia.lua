-- observatory-nervia -- the star Eburonia orbits, which is very nearly the Sun
--
-- Source: the Solar Dynamics Observatory's 171-angstrom channel, the gold
-- image of the Sun that has been the public face of the star since 2010.
-- Nervia is HD 49674, a G3 dwarf 134 light years away in Auriga: 5,620 K,
-- slightly heavier than the Sun and markedly more metal-rich, and the star
-- Belgium named alongside its planet Eburonia in the IAU's 2019 campaign. It
-- has never been resolved as anything but a point, so the frame is its near
-- twin -- a G-type dwarf one spectral tenth hotter, photographed from orbit.
--
-- Image: HD 49674 (Nervia), stood in for by the Sun -- Solar Dynamics Observatory, AIA at 171 angstroms.
-- NASA/SDO and the AIA science team.
-- Sampled at 4096 x 4096; 68% of the frame carried light.
--
-- One hue, and that is the honest reading of it: everything in the frame sits
-- within three degrees of 41, from a dark quiet region through the bulk of the
-- corona to a bright active one, because the gold is a false-color ramp on a
-- single wavelength of ionised iron rather than a color anything has. So the
-- palette is a ladder of ambers separated almost entirely by brightness, and it
-- is the closest thing in the collection to a monochrome that still has a hue.
-- The computed twin, `observatory-nervia-computed`, is the other approach to the
-- same star: temperatures and lines rather than a picture, and much wider in
-- hue for it.
--
-- Roles follow area.
--
-- What is in the frame, and the roles it takes:
--
--   dark          hue  43  16.82 contrast   2.0% of frame   macros, imports
--   active        hue  42  14.10 contrast   7.8% of frame   types, operators, modules, escapes
--   loops         hue  42  12.57 contrast  25.4% of frame   properties, keywords
--   corona        hue  41   6.11 contrast  53.7% of frame   strings, numbers
--   quiet         hue  41   4.75 contrast  11.1% of frame   functions
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
-- and the closest pair of adjacent-capable roles sits at 17.0 Delta E.
--
-- 1 of the 6 colors sampled from the frame were folded into their
-- nearest neighbour rather than kept: at this subject's hue span there is
-- not enough lightness left to hold that many apart at the family's
-- separation floor, and two colors a reader cannot distinguish are one
-- color. The folded share went to the neighbour, so the proportions of
-- the frame are still what the roles follow.

return {
  name = "observatory-nervia",
  about = "the star Eburonia orbits, which is very nearly the Sun",
  floor = 17.0,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#120e08",
  bg_float = "#1a140a",
  bg_sel = "#2f2710",
  bg_hl = "#443216",
  border = "#4d3f1e",
  bg_search = "#635323",
  nontext = "#423521",

  -- the text ladder
  text = "#cac8c4",
  dim = "#b1aa9c",
  punct = "#aba08d",
  comment = "#7b7870",
  lnr = "#6e6450",
  lnr_cur = "#afa491",

  -- syntax roles
  str = "#aa8534",
  num = "#aa8534",
  typ = "#face6a",
  mod = "#face6a",
  prop = "#e3c581",
  func = "#887650",
  kw = "#e3c581",
  op = "#face6a",
  macro = "#f4e5c0",
  esc = "#face6a",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#e5ae18",
  info = "#face6a",
  hint = "#aa8534",
  ok = "#29b16d",
  accent = "#887650",
  cursearch = "#e3c581",
  subst = "#aa8534",
  match = "#e5ae18",
  title = "#887650",
  dir = "#face6a",
  label = "#e3c581",
  tag = "#e3c581",
  h1 = "#e3c581",
  h2 = "#887650",
  h3 = "#aa8534",
  h4 = "#face6a",
  h5 = "#face6a",
  h6 = "#aa8534",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#231a06",
  diff_text = "#3d2d0b",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#1e1705",
  vt_hint = "#1c1505",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "corona", hue = 41, chroma = 47.8, cr = 6.11 },
    { key = "active", hue = 42, chroma = 54.9, cr = 14.10 },
    { key = "loops", hue = 42, chroma = 38.0, cr = 12.57 },
    { key = "quiet", hue = 41, chroma = 23.5, cr = 4.75 },
    { key = "dark", hue = 43, chroma = 19.9, cr = 16.82 },
  },
}

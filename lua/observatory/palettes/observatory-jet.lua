-- observatory-jet -- the same hole four years later, in violet, with its jet
--
-- Source: the 2023 image of M87* from the Global mm-VLBI Array with ALMA and
-- the Greenland Telescope, at 3.5 mm rather than 1.3. It is the first frame to
-- show the ring and the jet together, and it settled that the ring is larger
-- at this wavelength than the 2019 one, as accretion-flow models predicted.
--
-- Image: M87*, the ring and the base of the jet -- Global Millimeter VLBI Array with ALMA and the Greenland Telescope, 3.5 mm.
-- R.-S. Lu (SHAO), E. Ros (MPIfR), S. Dagnello (NRAO/AUI/NSF).
-- Sampled at 3300 x 2550; 9% of the frame carried light.
--
-- A second black-hole scheme is only worth having if it does not look like the
-- first, and this one does not: the 2023 release is mapped to violet and
-- magenta with a cream core and a salmon jet, where the 2019 release is gold
-- and crimson. Both mappings are arbitrary in the same way -- radio light
-- given a color so that a person can read it -- and between them they cover
-- opposite halves of the wheel, which is a real 55-degree separation on
-- screen. The warm core is 44 per cent of the lit frame and the violets 23, so
-- warmth carries the code and the violets sit where they will be noticed.
--
-- Roles follow area over the eight largest of twelve sampled colors.
--
-- What is in the frame, and the roles it takes:
--
--   ash           hue  49  16.88 contrast  10.7% of frame   functions
--   arc           hue  35  14.89 contrast   5.8% of frame   strings, keywords
--   jet           hue  24  13.91 contrast  10.1% of frame   macros, imports
--   flare         hue   7  10.44 contrast  11.2% of frame   types
--   void          hue 349   8.63 contrast   7.6% of frame   escapes
--   ring          hue 323   6.03 contrast   8.1% of frame   modules
--   halo          hue 304   5.90 contrast  13.2% of frame   numbers
--   core          hue 277   4.73 contrast  33.3% of frame   properties, operators
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
-- and the closest pair of adjacent-capable roles sits at 9.3 Delta E.

return {
  name = "observatory-jet",
  about = "the same hole four years later, in violet, with its jet",
  floor = 9.3,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#130b1a",
  bg_float = "#1e0f26",
  bg_sel = "#3b1849",
  bg_hl = "#4a216a",
  border = "#592d73",
  bg_search = "#7a3598",
  nontext = "#462d5a",

  -- the text ladder
  text = "#cac5cd",
  dim = "#b2a7b9",
  punct = "#9b8fa4",
  comment = "#84778b",
  lnr = "#6c6172",
  lnr_cur = "#aea2b7",

  -- syntax roles
  str = "#fbd39a",
  num = "#c563be",
  typ = "#fc9e92",
  mod = "#d65ea8",
  prop = "#9c5cc3",
  func = "#f5e7a8",
  kw = "#fbd39a",
  op = "#9c5cc3",
  macro = "#fbc8a5",
  esc = "#fb8096",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#d65ea8",
  hint = "#fbd39a",
  ok = "#29b16d",
  accent = "#f5e7a8",
  cursearch = "#fbd39a",
  subst = "#fbd39a",
  match = "#edc24a",
  title = "#f5e7a8",
  dir = "#fc9e92",
  label = "#fbd39a",
  tag = "#fbd39a",
  h1 = "#fbd39a",
  h2 = "#f5e7a8",
  h3 = "#fbd39a",
  h4 = "#fc9e92",
  h5 = "#d65ea8",
  h6 = "#c563be",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#350925",
  diff_text = "#5a103e",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#300821",
  vt_hint = "#1e1405",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "arc", hue = 35, chroma = 34.1, cr = 14.89 },
    { key = "halo", hue = 304, chroma = 59.9, cr = 5.90 },
    { key = "flare", hue = 7, chroma = 39.7, cr = 10.44 },
    { key = "ring", hue = 323, chroma = 57.9, cr = 6.03 },
    { key = "core", hue = 277, chroma = 62.5, cr = 4.73 },
    { key = "ash", hue = 49, chroma = 32.7, cr = 16.88 },
    { key = "jet", hue = 24, chroma = 27.8, cr = 13.91 },
    { key = "void", hue = 349, chroma = 50.0, cr = 8.63 },
  },
}

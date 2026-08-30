-- observatory-cassiopeia -- a remnant in X-rays, which makes it violet
--
-- Source: Chandra's 2013 image, 353 hours of exposure over ten years and the
-- deepest X-ray view of any supernova remnant. Cassiopeia A is what a star of
-- perhaps sixteen solar masses left behind when it collapsed about 340 years
-- ago, eleven thousand light years away, and it is the brightest radio source
-- in the sky outside the solar system. The shell is expanding at four to six
-- thousand kilometers a second and is the reason we know what the inside of a
-- massive star is made of: the ejecta is layered, and Chandra can map where the
-- silicon, sulfur, calcium and iron ended up.
--
-- Image: Cassiopeia A -- Chandra X-ray Observatory, ACIS (16 pointings, 2000-2010, 353 hours).
-- NASA/CXC/SAO.
-- Sampled at 3600 x 3055; 39% of the frame carried light.
--
-- The colors are the energies. Red is 0.5 to 1.5 keV, green 1.5 to 2.5, blue 4
-- to 6, so what a person reads as a violet shell over a cream and olive
-- interior is really the hardest X-rays sitting outside the softer ones -- the
-- blast wave, where electrons are being accelerated to within a fraction of the
-- speed of light. That gives this palette a genuine violet and indigo half, and
-- makes it the only scheme in the family whose dominant hue comes from
-- synchrotron radiation at a shock front.
--
-- Roles follow area over the eight largest of twelve sampled colors.
--
-- One warning about recognisability, since that is the rule these schemes are
-- chosen by. The Cas A most people picture is teal and gold, and that is a
-- composite of Chandra with Hubble and Webb rather than an X-ray image; this is
-- the frame Chandra itself leads with, and in it the remnant is violet.
--
-- What is in the frame, and the roles it takes:
--
--   interior      hue  29  15.46 contrast  31.1% of frame   functions, properties
--   silicon       hue  56  14.49 contrast  13.4% of frame   operators
--   wisp          hue 182  14.06 contrast   6.9% of frame   macros, imports
--   iron          hue 352  10.89 contrast   9.0% of frame   keywords
--   rim           hue 283   8.03 contrast   6.4% of frame   modules
--   shell         hue 246   7.65 contrast  15.6% of frame   types, numbers
--   hard          hue 252   5.69 contrast  12.2% of frame   strings
--   outer         hue 288   4.70 contrast   5.4% of frame   escapes
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
-- and the closest pair of adjacent-capable roles sits at 17.9 Delta E.
--
-- The frame is faint: its colors average 24 chroma, where a palette
-- needs something nearer twenty-six to keep ten kinds of token apart.
-- So all of them were scaled by 1.1, uniformly. Every hue, every ratio
-- between the colors and every proportion of the frame is the picture's;
-- only the overall saturation is the display's, in the way that a print of
-- a photograph has its own.

return {
  name = "observatory-cassiopeia",
  about = "a remnant in X-rays, which makes it violet",
  floor = 17.9,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#140d08",
  bg_float = "#1d130b",
  bg_sel = "#352412",
  bg_hl = "#4e2e18",
  border = "#573b22",
  bg_search = "#704e27",
  nontext = "#483324",

  -- the text ladder
  text = "#d2d0cd",
  dim = "#b4a99f",
  punct = "#b4a195",
  comment = "#7d7871",
  lnr = "#746151",
  lnr_cur = "#b3a396",

  -- syntax roles
  str = "#8a72eb",
  num = "#9b94db",
  typ = "#9b94db",
  mod = "#ac9ab3",
  prop = "#fad7b6",
  func = "#fad7b6",
  kw = "#e5acb4",
  op = "#ded999",
  macro = "#9cdfe1",
  esc = "#9963a7",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#ac9ab3",
  hint = "#8a72eb",
  ok = "#29b16d",
  accent = "#fad7b6",
  cursearch = "#e5acb4",
  subst = "#8a72eb",
  match = "#edc24a",
  title = "#fad7b6",
  dir = "#9b94db",
  label = "#e5acb4",
  tag = "#e5acb4",
  h1 = "#e5acb4",
  h2 = "#fad7b6",
  h3 = "#8a72eb",
  h4 = "#9b94db",
  h5 = "#ac9ab3",
  h6 = "#9b94db",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#2d0a3b",
  diff_text = "#4c1263",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#280934",
  vt_hint = "#160c41",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "hard", hue = 252, chroma = 69.4, cr = 5.69 },
    { key = "shell", hue = 246, chroma = 39.7, cr = 7.65 },
    { key = "rim", hue = 283, chroma = 15.5, cr = 8.03 },
    { key = "interior", hue = 29, chroma = 22.1, cr = 15.46 },
    { key = "iron", hue = 352, chroma = 22.4, cr = 10.89 },
    { key = "silicon", hue = 56, chroma = 33.2, cr = 14.49 },
    { key = "wisp", hue = 182, chroma = 21.8, cr = 14.06 },
    { key = "outer", hue = 288, chroma = 43.7, cr = 4.70 },
  },
}

-- observatory-deepfieldwebb -- the first Webb deep field, in amber and steel
--
-- Source: NIRCam's 12.5-hour composite of the cluster SMACS J0723.3-7327,
-- released on 11 July 2022 as the first of Webb's science images. All six
-- filters sit beyond the red end of vision, between 0.9 and 4.44 microns, so
-- the color is a mapping of infrared wavelength and encodes distance and dust
-- rather than anything the eye could see. The cluster is 4.6 billion light
-- years away and its mass bends light from galaxies behind it into the thin
-- arcs across the frame; the six-pointed spikes belong to Webb's mirror, not to
-- the sky.
--
-- Image: Webb's First Deep Field (galaxy cluster SMACS 0723) -- James Webb Space Telescope, NIRCam.
-- NASA, ESA, CSA, and STScI.
-- Sampled at 4537 x 4630; 19% of the frame carried light.
--
-- Nearly three quarters of the lit frame is one near-neutral gray -- the
-- background of faint galaxies -- with the ambers and a single steel blue
-- covering the rest. So this palette is quieter than Hubble's deep field, which
-- is the honest difference between the two pictures rather than a decision:
-- Webb's field is emptier and its colors are concentrated in the few objects
-- that are close enough to be bright.
--
-- Roles follow area. This is a sibling of `observatory-deepfield`, which is
-- sampled from Hubble's Ultra Deep Field; they are two takes on the same idea
-- and are meant to be recognisable as a pair.
--
-- What is in the frame, and the roles it takes:
--
--   amber         hue  21  16.85 contrast   3.0% of frame   keywords
--   field         hue  15  12.10 contrast  72.1% of frame   strings, numbers, macros, imports
--   galaxy        hue  15  11.45 contrast  11.4% of frame   properties
--   distant       hue  16   7.71 contrast   4.7% of frame   types, modules
--   arc           hue 214   6.14 contrast   7.3% of frame   functions
--   deep          hue   8   4.72 contrast   1.6% of frame   operators, escapes
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
-- and the closest pair of adjacent-capable roles sits at 15.8 Delta E.
--
-- The frame is faint: its colors average 6 chroma, where a palette
-- needs something nearer twenty-six to keep ten kinds of token apart.
-- So all of them were scaled by 2.2, uniformly. Every hue, every ratio
-- between the colors and every proportion of the frame is the picture's;
-- only the overall saturation is the display's, in the way that a print of
-- a photograph has its own.
--
-- The frame also put two of its colors closer together than the family's
-- separation floor allows, so the ladder was spread to 7 points of
-- lightness between rungs rather than the three the picture asked for.
-- The order is still the picture's; the spacing is not.

return {
  name = "observatory-deepfieldwebb",
  about = "the first Webb deep field, in amber and steel",
  floor = 15.8,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#160b09",
  bg_float = "#21110c",
  bg_sel = "#3c2114",
  bg_hl = "#58271c",
  border = "#613526",
  bg_search = "#7f462c",
  nontext = "#512f28",

  -- the text ladder
  text = "#c1bcbb",
  dim = "#b6a7a3",
  punct = "#b2968f",
  comment = "#7f7673",
  lnr = "#785f57",
  lnr_cur = "#b7a29c",

  -- syntax roles
  str = "#e7bbac",
  num = "#e7bbac",
  typ = "#f97645",
  mod = "#f97645",
  prop = "#fcac91",
  func = "#6d8db6",
  kw = "#f4e3da",
  op = "#cb4f3b",
  macro = "#e7bbac",
  esc = "#cb4f3b",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#f97645",
  hint = "#e7bbac",
  ok = "#29b16d",
  accent = "#6d8db6",
  cursearch = "#f4e3da",
  subst = "#e7bbac",
  match = "#edc24a",
  title = "#6d8db6",
  dir = "#f97645",
  label = "#f4e3da",
  tag = "#f4e3da",
  h1 = "#f4e3da",
  h2 = "#6d8db6",
  h3 = "#e7bbac",
  h4 = "#f97645",
  h5 = "#f97645",
  h6 = "#e7bbac",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#301308",
  diff_text = "#52210e",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#2a1107",
  vt_hint = "#280f07",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "field", hue = 15, chroma = 19.2, cr = 12.10 },
    { key = "distant", hue = 16, chroma = 68.4, cr = 7.71 },
    { key = "galaxy", hue = 15, chroma = 36.8, cr = 11.45 },
    { key = "arc", hue = 214, chroma = 25.0, cr = 6.14 },
    { key = "amber", hue = 21, chroma = 7.8, cr = 16.85 },
    { key = "deep", hue = 8, chroma = 60.7, cr = 4.72 },
  },
}

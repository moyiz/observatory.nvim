-- observatory-etacarinae -- two lobes of debris from a star that survived its own explosion
--
-- Source: Hubble's ACS/HRC image of the Homunculus Nebula, the dumbbell of
-- debris thrown off by Eta Carinae in the Great Eruption of the 1840s, when
-- the star briefly became the second brightest in the sky, shed perhaps ten
-- solar masses, and then did not die. It is still there, and still unstable.
--
-- Image: Eta Carinae and the Homunculus Nebula -- Hubble Space Telescope, ACS/HRC.
-- ESA/Hubble & NASA.
-- Sampled at 1089 x 1033; 26% of the frame carried light.
--
-- The frame is warm nearly throughout, and softly: brown and salmon lobes,
-- pale pink glare where the star's light floods the inner shell, and a rust
-- waist between the two halves. Seventy per cent of the lit area sits between
-- hue 350 and hue 25. That makes it one of the few genuinely warm palettes in
-- the collection, and the separation has to come from lightness rather than
-- hue -- which is what the picture does too.
--
-- Roles follow area. The lobes at 39 per cent and the glare at 33 are between
-- them nearly three quarters of the frame, so they take strings, functions and
-- the text color's neighbours.
--
-- What is in the frame, and the roles it takes:
--
--   glare         hue 346  15.58 contrast  22.7% of frame   properties
--   ember         hue 276  15.14 contrast   5.3% of frame   escapes
--   lobes         hue  13  10.76 contrast  34.3% of frame   keywords, types, numbers, operators
--   dust          hue  15   5.72 contrast  10.1% of frame   strings, functions
--   shell         hue  19   5.51 contrast  17.6% of frame   macros, imports
--   waist         hue  14   4.71 contrast  10.0% of frame   modules
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
-- and the closest pair of adjacent-capable roles sits at 16.1 Delta E.
--
-- The frame is faint: its colors average 21 chroma, where a palette
-- needs something nearer twenty-six to keep ten kinds of token apart.
-- So all of them were scaled by 1.3, uniformly. Every hue, every ratio
-- between the colors and every proportion of the frame is the picture's;
-- only the overall saturation is the display's, in the way that a print of
-- a photograph has its own.

return {
  name = "observatory-etacarinae",
  about = "two lobes of debris from a star that survived its own explosion",
  floor = 16.1,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#160c0a",
  bg_float = "#21110c",
  bg_sel = "#3d2014",
  bg_hl = "#5a261c",
  border = "#633427",
  bg_search = "#80452d",
  nontext = "#512e28",

  -- the text ladder
  text = "#ccc5c4",
  dim = "#b7a7a3",
  punct = "#a19998",
  comment = "#8c736a",
  lnr = "#7a5f58",
  lnr_cur = "#b7a19c",

  -- syntax roles
  str = "#bb735b",
  num = "#e1aea0",
  typ = "#e1aea0",
  mod = "#bf593b",
  prop = "#fed3dd",
  func = "#bb735b",
  kw = "#e1aea0",
  op = "#e1aea0",
  macro = "#d85d22",
  esc = "#e9d3f8",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#bf593b",
  hint = "#bb735b",
  ok = "#29b16d",
  accent = "#bb735b",
  cursearch = "#e1aea0",
  subst = "#bb735b",
  match = "#edc24a",
  title = "#bb735b",
  dir = "#e1aea0",
  label = "#e1aea0",
  tag = "#e1aea0",
  h1 = "#e1aea0",
  h2 = "#bb735b",
  h3 = "#bb735b",
  h4 = "#e1aea0",
  h5 = "#bf593b",
  h6 = "#e1aea0",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#311209",
  diff_text = "#541f0f",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#2b1008",
  vt_hint = "#280f07",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "dust", hue = 15, chroma = 36.1, cr = 5.72 },
    { key = "lobes", hue = 13, chroma = 22.0, cr = 10.76 },
    { key = "waist", hue = 14, chroma = 53.3, cr = 4.71 },
    { key = "glare", hue = 346, chroma = 16.6, cr = 15.58 },
    { key = "shell", hue = 19, chroma = 70.9, cr = 5.51 },
    { key = "ember", hue = 276, chroma = 20.9, cr = 15.14 },
  },
}

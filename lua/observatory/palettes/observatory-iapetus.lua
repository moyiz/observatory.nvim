-- observatory-iapetus -- two-tone: snow on one face, tar on the other
--
-- Source: Cassini's 'Color Dichotomy on Iapetus', PIA11689. One hemisphere is
-- as bright as snow and the other as dark as tar, a contrast of about ten to
-- one that Cassini the astronomer inferred in 1671 from the moon vanishing on
-- one side of its orbit. The dark material is dust swept up from an outer moon
-- and baked in by thermal runaway.
--
-- Image: Iapetus -- Cassini, ISS (PIA11689, 'Color Dichotomy on Iapetus').
-- NASA/JPL/Space Science Institute.
-- Sampled at 988 x 499; 38% of the frame carried light.
--
-- The natural-color releases of Iapetus read as flat gray, so this frame was
-- chosen for holding the tan of Cassini Regio, which is the moon's identifying
-- feature. Bright ice takes six tenths of the frame and the dark material a
-- little over six per cent, so the palette is mostly light with its warmth
-- concentrated in the small roles -- the same lopsidedness the moon has.
--
-- Roles follow area.
--
-- What is in the frame, and the roles it takes:
--
--   snow          hue  15  15.08 contrast  51.0% of frame   types, numbers, operators, macros, imports
--   regio         hue 156  13.80 contrast   4.0% of frame   keywords
--   dusty         hue  47  12.89 contrast  19.4% of frame   properties
--   trailing      hue  31   7.88 contrast  21.4% of frame   escapes
--   boundary      hue 105   7.72 contrast   0.5% of frame   strings, functions
--   dark          hue  17   4.70 contrast   3.7% of frame   modules
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
-- and the closest pair of adjacent-capable roles sits at 17.1 Delta E.
--
-- The frame is faint: its colors average 6 chroma, where a palette
-- needs something nearer twenty-six to keep ten kinds of token apart.
-- So all of them were scaled by 3.8, uniformly. Every hue, every ratio
-- between the colors and every proportion of the frame is the picture's;
-- only the overall saturation is the display's, in the way that a print of
-- a photograph has its own.

return {
  name = "observatory-iapetus",
  about = "two-tone: snow on one face, tar on the other",
  floor = 17.1,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#130d08",
  bg_float = "#1b130a",
  bg_sel = "#332511",
  bg_hl = "#4b2f18",
  border = "#543c21",
  bg_search = "#6b5026",
  nontext = "#473323",

  -- the text ladder
  text = "#cdcbc7",
  dim = "#b3a99e",
  punct = "#a29c98",
  comment = "#847663",
  lnr = "#726251",
  lnr_cur = "#b2a395",

  -- syntax roles
  str = "#4db22b",
  num = "#fdd1c2",
  typ = "#fdd1c2",
  mod = "#c2572e",
  prop = "#deca84",
  func = "#4db22b",
  kw = "#a2dec6",
  op = "#fdd1c2",
  macro = "#fdd1c2",
  esc = "#dd8c38",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#c2572e",
  hint = "#4db22b",
  ok = "#29b16d",
  accent = "#4db22b",
  cursearch = "#a2dec6",
  subst = "#4db22b",
  match = "#edc24a",
  title = "#4db22b",
  dir = "#fdd1c2",
  label = "#a2dec6",
  tag = "#a2dec6",
  h1 = "#a2dec6",
  h2 = "#4db22b",
  h3 = "#4db22b",
  h4 = "#fdd1c2",
  h5 = "#c2572e",
  h6 = "#fdd1c2",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#301308",
  diff_text = "#52210e",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#2a1107",
  vt_hint = "#0a1a05",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "boundary", hue = 105, chroma = 77.3, cr = 7.72 },
    { key = "snow", hue = 15, chroma = 18.7, cr = 15.08 },
    { key = "dark", hue = 17, chroma = 59.3, cr = 4.70 },
    { key = "dusty", hue = 47, chroma = 37.6, cr = 12.89 },
    { key = "regio", hue = 156, chroma = 24.7, cr = 13.80 },
    { key = "trailing", hue = 31, chroma = 60.4, cr = 7.88 },
  },
}

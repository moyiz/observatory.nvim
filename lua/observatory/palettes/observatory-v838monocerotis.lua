-- observatory-v838monocerotis -- a light echo, which is not an explosion but its shadow on dust
--
-- Source: Hubble's ACS image of V838 Monocerotis from September 2006, the
-- last in a four-year sequence. The star brightened by a factor of ten
-- thousand in 2002 and the shells that appear to expand around it are not
-- ejecta at all: they are the flash sweeping outward across dust that was
-- already there, lighting a different sphere of it each month.
--
-- Image: V838 Monocerotis light echo -- Hubble Space Telescope, ACS (September 2006).
-- NASA, ESA and H. Bond (STScI).
-- Sampled at 2976 x 3323; 36% of the frame carried light.
--
-- Which is why the color is dust color rather than fire color. Mauve-brown
-- shells, rose where the light is fresh, steel blue where it has moved on,
-- and a small pure white core -- the star itself, over-exposed as it must be.
-- The palette keeps that white, at 21:1 against black, as the brightest thing
-- in the collection, and keeps the warm and cool dust in the 60/20 split the
-- frame has.
--
-- Roles follow area over the eight largest of eleven sampled colors; the two
-- rose dusts at 20 per cent each take the roles that cover a buffer.
--
-- What is in the frame, and the roles it takes:
--
--   outer         hue 192  17.01 contrast  12.5% of frame   keywords
--   star          hue  12  12.49 contrast  13.7% of frame   properties
--   rim           hue 197  12.35 contrast   3.8% of frame   operators
--   echo          hue 353   8.85 contrast  25.2% of frame   strings
--   void          hue   9   7.36 contrast   3.3% of frame   escapes
--   shells        hue 242   6.40 contrast  13.5% of frame   types, numbers
--   dust          hue   8   6.21 contrast  24.4% of frame   functions, modules
--   glare         hue 212   4.70 contrast   3.5% of frame   macros, imports
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
-- and the closest pair of adjacent-capable roles sits at 16.9 Delta E.
--
-- The frame is faint: its colors average 17 chroma, where a palette
-- needs something nearer twenty-six to keep ten kinds of token apart.
-- So all of them were scaled by 1.6, uniformly. Every hue, every ratio
-- between the colors and every proportion of the frame is the picture's;
-- only the overall saturation is the display's, in the way that a print of
-- a photograph has its own.
--
-- The frame also put two of its colors closer together than the family's
-- separation floor allows, so the ladder was spread to 7 points of
-- lightness between rungs rather than the three the picture asked for.
-- The order is still the picture's; the spacing is not.

return {
  name = "observatory-v838monocerotis",
  about = "a light echo, which is not an explosion but its shadow on dust",
  floor = 16.9,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#190b0d",
  bg_float = "#260e11",
  bg_sel = "#47181a",
  bg_hl = "#601e2b",
  border = "#6d2b33",
  bg_search = "#933439",
  nontext = "#562a33",

  -- the text ladder
  text = "#cbc6c6",
  dim = "#b9a7a9",
  punct = "#b59a9f",
  comment = "#817576",
  lnr = "#7a5e61",
  lnr_cur = "#ba9fa4",

  -- syntax roles
  str = "#e98f99",
  num = "#8c8bac",
  typ = "#8c8bac",
  mod = "#ba7c72",
  prop = "#fdb7a5",
  func = "#ba7c72",
  kw = "#c7eef8",
  op = "#6cd3fb",
  macro = "#4d7aac",
  esc = "#f4715a",

  -- interface duties, following the syntax colors
  err = "#f12b32",
  warn = "#edc24a",
  info = "#ba7c72",
  hint = "#e98f99",
  ok = "#29b16d",
  accent = "#ba7c72",
  cursearch = "#c7eef8",
  subst = "#e98f99",
  match = "#edc24a",
  title = "#ba7c72",
  dir = "#8c8bac",
  label = "#c7eef8",
  tag = "#c7eef8",
  h1 = "#c7eef8",
  h2 = "#ba7c72",
  h3 = "#e98f99",
  h4 = "#8c8bac",
  h5 = "#ba7c72",
  h6 = "#8c8bac",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#340f09",
  diff_text = "#591a10",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#2e0d08",
  vt_hint = "#2e080c",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "echo", hue = 353, chroma = 36.5, cr = 8.85 },
    { key = "shells", hue = 242, chroma = 18.7, cr = 6.40 },
    { key = "dust", hue = 8, chroma = 27.5, cr = 6.21 },
    { key = "star", hue = 12, chroma = 30.0, cr = 12.49 },
    { key = "outer", hue = 192, chroma = 13.8, cr = 17.01 },
    { key = "rim", hue = 197, chroma = 34.3, cr = 12.35 },
    { key = "glare", hue = 212, chroma = 31.3, cr = 4.70 },
    { key = "void", hue = 9, chroma = 61.1, cr = 7.36 },
  },
}

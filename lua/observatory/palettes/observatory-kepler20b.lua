-- observatory-kepler20b -- five planets ranged against Mercury's orbit
--
-- Source: the 2011 Kepler-20 system diagram, which places the five known
-- planets in order against the orbit of Mercury for scale. Kepler-20 b is the
-- innermost, a hot super-Earth on a 3.7-day orbit, drawn as the teal globe
-- beside the star's limb. The system is unusual for alternating rocky and
-- gaseous planets, which orderly formation models do not predict.
--
-- Image: Kepler-20 b -- artist concept, Harvard-Smithsonian Center for Astrophysics.
-- David A. Aguilar (CfA).
-- Sampled at 1152 x 576; 16% of the frame carried light.
--
-- Because the source is a system view rather than a portrait, the frame is the
-- most varied in this batch: twelve sampled colors running from the star's
-- orange limb through the teal and sage of the planets to pale blue and cream.
-- Only sixteen per cent of the frame is lit at all -- the rest is the black
-- between orbits -- so the palette is a set of small bright objects on a
-- background that is genuinely empty, which suits a true-black terminal.
--
-- Roles follow area over the eight largest of twelve sampled colors.
--
-- What is in the frame, and the roles it takes:
--
--   moss          hue  58  16.92 contrast   4.6% of frame   numbers
--   sky           hue 214  14.66 contrast   4.8% of frame   operators, macros, imports
--   sea           hue 181  12.66 contrast  10.7% of frame   properties
--   frost         hue 150  10.68 contrast  24.0% of frame   functions
--   flare         hue  26  10.24 contrast   9.6% of frame   keywords, modules
--   glare         hue 141   7.26 contrast   5.5% of frame   types
--   sand          hue 359   6.22 contrast   1.6% of frame   escapes
--   ember         hue  17   6.16 contrast  39.1% of frame   strings
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
-- and the closest pair of adjacent-capable roles sits at 17.2 Delta E.
--
-- The frame also put two of its colors closer together than the family's
-- separation floor allows, so the ladder was spread to 5 points of
-- lightness between rungs rather than the three the picture asked for.
-- The order is still the picture's; the spacing is not.

return {
  name = "observatory-kepler20b",
  about = "five planets ranged against Mercury's orbit",
  floor = 17.2,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#160c09",
  bg_float = "#20120c",
  bg_sel = "#3b2114",
  bg_hl = "#56281b",
  border = "#603525",
  bg_search = "#7c482c",
  nontext = "#4f3027",

  -- the text ladder
  text = "#cbc8c6",
  dim = "#b6a7a2",
  punct = "#b69c96",
  comment = "#7f7773",
  lnr = "#795f56",
  lnr_cur = "#b6a19b",

  -- syntax roles
  str = "#ec5d25",
  num = "#eceaaa",
  typ = "#849e8d",
  mod = "#faa059",
  prop = "#9bd3d4",
  func = "#79c9a1",
  kw = "#faa059",
  op = "#bfdafd",
  macro = "#bfdafd",
  esc = "#cc7273",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#faa059",
  hint = "#ec5d25",
  ok = "#29b16d",
  accent = "#79c9a1",
  cursearch = "#faa059",
  subst = "#ec5d25",
  match = "#edc24a",
  title = "#79c9a1",
  dir = "#849e8d",
  label = "#faa059",
  tag = "#faa059",
  h1 = "#faa059",
  h2 = "#79c9a1",
  h3 = "#ec5d25",
  h4 = "#849e8d",
  h5 = "#faa059",
  h6 = "#eceaaa",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#2a1707",
  diff_text = "#49280d",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#241406",
  vt_hint = "#261007",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "ember", hue = 17, chroma = 77.8, cr = 6.16 },
    { key = "moss", hue = 58, chroma = 32.7, cr = 16.92 },
    { key = "glare", hue = 141, chroma = 13.9, cr = 7.26 },
    { key = "flare", hue = 26, chroma = 57.0, cr = 10.24 },
    { key = "sea", hue = 181, chroma = 18.7, cr = 12.66 },
    { key = "frost", hue = 150, chroma = 35.7, cr = 10.68 },
    { key = "sky", hue = 214, chroma = 20.1, cr = 14.66 },
    { key = "sand", hue = 359, chroma = 38.5, cr = 6.22 },
  },
}

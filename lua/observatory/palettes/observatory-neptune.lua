-- observatory-neptune -- azure, a shade deeper than Uranus and no bluer
--
-- Source: Voyager 2's 1989 encounter, color-calibrated rather than the 1989
-- press version. That distinction matters here: the vivid indigo Neptune of
-- the posters was a contrast-enhanced product, and the 2024 reprocessing
-- showed the planet is only slightly bluer than Uranus.
--
-- Image: Neptune -- Voyager 2, ISS, 1989.
-- NASA/JPL-Caltech.
-- Sampled at 1200 x 1200; 56% of the frame carried light.
--
-- The palette follows the calibrated frame, so it is azure rather than indigo:
-- nine degrees of hue span across every sampled color, the narrowest of any
-- planet here, with the variation carried almost entirely by lightness. The
-- Great Dark Spot and the white methane cirrus are small in the frame and take
-- small roles accordingly.
--
-- Roles follow area.
--
-- What is in the frame, and the roles it takes:
--
--   band          hue 197  16.88 contrast  24.6% of frame   keywords, types, numbers, operators, modules
--   limb          hue 199  10.34 contrast  16.4% of frame   functions
--   azure         hue 197   7.65 contrast  35.6% of frame   strings
--   cirrus        hue 197   4.75 contrast  23.4% of frame   properties, macros, imports, escapes
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
-- and the closest pair of adjacent-capable roles sits at 10.4 Delta E.
--
-- The frame is faint: its colors average 11 chroma, where a palette
-- needs something nearer twenty-six to keep ten kinds of token apart.
-- So all of them were scaled by 2.3, uniformly. Every hue, every ratio
-- between the colors and every proportion of the frame is the picture's;
-- only the overall saturation is the display's, in the way that a print of
-- a photograph has its own.
--
-- 2 of the 6 colors sampled from the frame were folded into their
-- nearest neighbour rather than kept: at this subject's hue span there is
-- not enough lightness left to hold that many apart at the family's
-- separation floor, and two colors a reader cannot distinguish are one
-- color. The folded share went to the neighbour, so the proportions of
-- the frame are still what the roles follow.
--
-- The frame also put two of its colors closer together than the family's
-- separation floor allows, so the ladder was spread to 5 points of
-- lightness between rungs rather than the three the picture asked for.
-- The order is still the picture's; the spacing is not.

return {
  name = "observatory-neptune",
  about = "azure, a shade deeper than Uranus and no bluer",
  floor = 10.4,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#081012",
  bg_float = "#0a171b",
  bg_sel = "#122a37",
  bg_hl = "#153a44",
  border = "#214554",
  bg_search = "#295973",
  nontext = "#213b43",

  -- the text ladder
  text = "#c2c7ca",
  dim = "#9fadb3",
  punct = "#799aa2",
  comment = "#63808e",
  lnr = "#4b6975",
  lnr_cur = "#93aab1",

  -- syntax roles
  str = "#54a6c6",
  num = "#c4edfd",
  typ = "#c4edfd",
  mod = "#c4edfd",
  prop = "#3c809a",
  func = "#6cc0e8",
  kw = "#c4edfd",
  op = "#c4edfd",
  macro = "#3c809a",
  esc = "#3c809a",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#c4edfd",
  hint = "#54a6c6",
  ok = "#29b16d",
  accent = "#6cc0e8",
  cursearch = "#c4edfd",
  subst = "#54a6c6",
  match = "#edc24a",
  title = "#6cc0e8",
  dir = "#c4edfd",
  label = "#c4edfd",
  tag = "#c4edfd",
  h1 = "#c4edfd",
  h2 = "#6cc0e8",
  h3 = "#54a6c6",
  h4 = "#c4edfd",
  h5 = "#c4edfd",
  h6 = "#c4edfd",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#071e26",
  diff_text = "#0c3443",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#061a22",
  vt_hint = "#061820",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "azure", hue = 197, chroma = 28.6, cr = 7.65 },
    { key = "band", hue = 197, chroma = 15.6, cr = 16.88 },
    { key = "cirrus", hue = 197, chroma = 24.4, cr = 4.75 },
    { key = "limb", hue = 199, chroma = 31.3, cr = 10.34 },
  },
}

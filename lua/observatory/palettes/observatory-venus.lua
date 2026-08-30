-- observatory-venus -- cream cloud in every direction, and nothing else
--
-- Source: Mariner 10's departing view of Venus, reprocessed in 2020 from the
-- original 1974 television frames. The spacecraft was on its way to Mercury
-- and turned to look back; what it saw is what every visible-light camera
-- since has seen, an unbroken deck of sulfuric-acid cloud.
--
-- Image: Venus -- Mariner 10, television camera (PIA23791, 2020 reprocessing).
-- NASA/JPL-Caltech.
-- Sampled at 1000 x 1000; 63% of the frame carried light.
--
-- Venus is the least colorful object in this collection, and honestly so:
-- the whole disc sits within two points of chroma of neutral, a cream so pale
-- that a screen renders it as white. The palette is built through the pale
-- path, which lifts that cream until it reads as cream rather than as paper,
-- and keeps the shaded cloud on the cool side of it, exactly as the frame has
-- them. What remains is a scheme with one hue and a great deal of light.
--
-- Roles follow area, and the amplification is uniform, so the ratio between
-- any two colors is the frame's.
--
-- What is in the frame, and the roles it takes:
--
--   sunlit        hue  33  16.93 contrast   3.9% of frame   keywords
--   haze          hue  24  14.81 contrast  11.4% of frame   types, numbers, macros, imports, escapes
--   deck          hue  26  12.41 contrast  49.0% of frame   functions, properties, operators, modules
--   shade         hue 223   4.68 contrast  35.7% of frame   strings
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
-- and the closest pair of adjacent-capable roles sits at 10.1 Delta E.
--
-- The frame is faint: its colors average 2 chroma, where a palette
-- needs something nearer twenty-six to keep ten kinds of token apart.
-- So all of them were scaled by 5.2, uniformly. Every hue, every ratio
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
  name = "observatory-venus",
  about = "cream cloud in every direction, and nothing else",
  floor = 10.1,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#130e08",
  bg_float = "#1a140a",
  bg_sel = "#312610",
  bg_hl = "#483117",
  border = "#533d20",
  bg_search = "#695125",
  nontext = "#463522",

  -- the text ladder
  text = "#b6b2ae",
  dim = "#b2a99d",
  punct = "#a3917f",
  comment = "#7c7870",
  lnr = "#706350",
  lnr_cur = "#b1a393",

  -- syntax roles
  str = "#737781",
  num = "#dbd8d6",
  typ = "#dbd8d6",
  mod = "#d5c4b7",
  prop = "#d5c4b7",
  func = "#d5c4b7",
  kw = "#f7e4cd",
  op = "#d5c4b7",
  macro = "#dbd8d6",
  esc = "#dbd8d6",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#d5c4b7",
  hint = "#737781",
  ok = "#29b16d",
  accent = "#d5c4b7",
  cursearch = "#f7e4cd",
  subst = "#737781",
  match = "#edc24a",
  title = "#d5c4b7",
  dir = "#dbd8d6",
  label = "#f7e4cd",
  tag = "#f7e4cd",
  h1 = "#f7e4cd",
  h2 = "#d5c4b7",
  h3 = "#737781",
  h4 = "#dbd8d6",
  h5 = "#d5c4b7",
  h6 = "#dbd8d6",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#2a1707",
  diff_text = "#4a270d",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#251306",
  vt_hint = "#091432",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "shade", hue = 223, chroma = 6.0, cr = 4.68 },
    { key = "haze", hue = 24, chroma = 1.5, cr = 14.81 },
    { key = "deck", hue = 26, chroma = 9.5, cr = 12.41 },
    { key = "sunlit", hue = 33, chroma = 13.9, cr = 16.93 },
  },
}

-- observatory-saturn -- pale gold, with the rings' shadow laid across it
--
-- Source: Cassini's global view with the rings wide open. Saturn's axis is
-- tilted twenty-seven degrees, so the rings open and close over a
-- twenty-nine-year orbit and cast a shadow that migrates across the disc; this
-- frame catches both the open rings and the shadow they throw.
--
-- Image: Saturn -- Cassini, ISS.
-- NASA/JPL-Caltech/Space Science Institute.
-- Sampled at 5500 x 2200; 36% of the frame carried light.
--
-- Saturn's banding is the same physics as Jupiter's with the contrast turned
-- down: a deeper haze layer mutes it, and the frame's colors sit in a
-- twenty-degree wedge of gold. What structures the picture instead is the
-- shadow, which is the single largest area in the sampled frame at nearly
-- thirty per cent, so this palette is arranged by light rather than by hue.
--
-- Roles follow area, which puts the shadowed disc on the largest role and the
-- bright crest of the zones on a small one.
--
-- What is in the frame, and the roles it takes:
--
--   shadow        hue  42  17.04 contrast  67.8% of frame   strings, types, numbers, macros, imports, modules
--   zone          hue  40  13.29 contrast  12.9% of frame   properties, escapes
--   belt          hue  41  10.62 contrast  16.4% of frame   functions, operators
--   band          hue  30   4.74 contrast   2.8% of frame   keywords
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
-- The frame is faint: its colors average 13 chroma, where a palette
-- needs something nearer twenty-six to keep ten kinds of token apart.
-- So all of them were scaled by 2.0, uniformly. Every hue, every ratio
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
-- separation floor allows, so the ladder was spread to 9 points of
-- lightness between rungs rather than the three the picture asked for.
-- The order is still the picture's; the spacing is not.

return {
  name = "observatory-saturn",
  about = "pale gold, with the rings' shadow laid across it",
  floor = 17.2,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#120e08",
  bg_float = "#19140a",
  bg_sel = "#2f2710",
  bg_hl = "#433315",
  border = "#4d3f1e",
  bg_search = "#625423",
  nontext = "#423620",

  -- the text ladder
  text = "#cccbc7",
  dim = "#b0aa9b",
  punct = "#aaa18e",
  comment = "#7b7870",
  lnr = "#6c6450",
  lnr_cur = "#aea590",

  -- syntax roles
  str = "#f8e6bc",
  num = "#f8e6bc",
  typ = "#f8e6bc",
  mod = "#f8e6bc",
  prop = "#f2c875",
  func = "#cdb684",
  kw = "#9d6e40",
  op = "#cdb684",
  macro = "#f8e6bc",
  esc = "#f2c875",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#e8ac06",
  info = "#f8e6bc",
  hint = "#f8e6bc",
  ok = "#29b16d",
  accent = "#cdb684",
  cursearch = "#9d6e40",
  subst = "#f8e6bc",
  match = "#e8ac06",
  title = "#cdb684",
  dir = "#f8e6bc",
  label = "#9d6e40",
  tag = "#9d6e40",
  h1 = "#9d6e40",
  h2 = "#cdb684",
  h3 = "#f8e6bc",
  h4 = "#f8e6bc",
  h5 = "#f8e6bc",
  h6 = "#f8e6bc",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#231a06",
  diff_text = "#3c2d0b",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#1e1705",
  vt_hint = "#1c1505",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "shadow", hue = 42, chroma = 22.7, cr = 17.04 },
    { key = "zone", hue = 40, chroma = 47.0, cr = 13.29 },
    { key = "belt", hue = 41, chroma = 28.5, cr = 10.62 },
    { key = "band", hue = 30, chroma = 35.5, cr = 4.74 },
  },
}

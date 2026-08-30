-- observatory-mintome -- the pink planet: a giant still glowing from its own formation
--
-- Source: NASA Goddard's rendering of GJ 504 b, standing in for HD 208487 b,
-- named Mintome by Gabon in the IAU's NameExoWorlds campaign. Mintome is a
-- long-period giant around a sun-like star 470 light years away and has never
-- been drawn; GJ 504 b has, repeatedly, because it is the one giant planet
-- imaged while still hot enough to glow visibly magenta.
--
-- Image: HD 208487 b (IAU name Mintome) -- artist rendering of GJ 504 b, NASA Goddard SVS (ID 11327).
-- NASA's Goddard Space Flight Center/S. Wiessinger.
-- Sampled at 1920 x 1080; 22% of the frame carried light.
--
-- Nearly the whole frame is one hue -- 337 degrees, a deep rose -- at three
-- levels of brightness, which is what a self-luminous cloud deck looks like.
-- The star is small, far off and pale yellow, and contributes the only other
-- color. So the palette is a magenta ladder with a cream at the top of it, and
-- it is the only scheme in the collection whose subject is lit from inside.
--
-- Roles follow area.
--
-- What is in the frame, and the roles it takes:
--
--   sun           hue  55  16.86 contrast   2.3% of frame   macros, imports, modules
--   band          hue 337  16.08 contrast  32.7% of frame   functions, keywords, operators, escapes
--   zone          hue 338  12.57 contrast  26.1% of frame   properties, types
--   interior      hue 337   5.92 contrast  35.8% of frame   strings
--   dark          hue  52   4.70 contrast   3.0% of frame   numbers
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
-- and the closest pair of adjacent-capable roles sits at 16.6 Delta E.
--
-- 1 of the 6 colors sampled from the frame were folded into their
-- nearest neighbour rather than kept: at this subject's hue span there is
-- not enough lightness left to hold that many apart at the family's
-- separation floor, and two colors a reader cannot distinguish are one
-- color. The folded share went to the neighbour, so the proportions of
-- the frame are still what the roles follow.

return {
  name = "observatory-mintome",
  about = "the pink planet: a giant still glowing from its own formation",
  floor = 16.6,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#180a11",
  bg_float = "#240e16",
  bg_sel = "#461726",
  bg_hl = "#5e1e3a",
  border = "#6d2a43",
  bg_search = "#923350",
  nontext = "#552a3d",

  -- the text ladder
  text = "#ccc7c9",
  dim = "#b9a6ad",
  punct = "#b29ba5",
  comment = "#817579",
  lnr = "#785f68",
  lnr_cur = "#b99faa",

  -- syntax roles
  str = "#bf708e",
  num = "#7e7853",
  typ = "#fcb4cf",
  mod = "#ece8bf",
  prop = "#fcb4cf",
  func = "#fed7e6",
  kw = "#fed7e6",
  op = "#fed7e6",
  macro = "#ece8bf",
  esc = "#fed7e6",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#ece8bf",
  hint = "#bf708e",
  ok = "#29b16d",
  accent = "#fed7e6",
  cursearch = "#fed7e6",
  subst = "#bf708e",
  match = "#edc24a",
  title = "#fed7e6",
  dir = "#fcb4cf",
  label = "#fed7e6",
  tag = "#fed7e6",
  h1 = "#fed7e6",
  h2 = "#fed7e6",
  h3 = "#bf708e",
  h4 = "#fcb4cf",
  h5 = "#ece8bf",
  h6 = "#7e7853",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#1e1b05",
  diff_text = "#343109",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#1a1905",
  vt_hint = "#2d0816",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "interior", hue = 337, chroma = 35.2, cr = 5.92 },
    { key = "dark", hue = 52, chroma = 21.5, cr = 4.70 },
    { key = "zone", hue = 338, chroma = 30.2, cr = 12.57 },
    { key = "sun", hue = 55, chroma = 21.1, cr = 16.86 },
    { key = "band", hue = 337, chroma = 16.1, cr = 16.08 },
  },
}

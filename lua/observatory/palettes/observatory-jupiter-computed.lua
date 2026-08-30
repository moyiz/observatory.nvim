-- observatory-jupiter-computed -- zones, belts, the red spot and the blue poles
--
-- Source: Jupiter's cloud structure. The pale zones are rising ammonia ice;
-- the darker belts are descending air whose chromophores nobody has pinned
-- down; the Great Red Spot is deeper and redder than either; and JunoCam's
-- polar passes show clusters of blue-gray cyclones that no view from the
-- ecliptic ever revealed.
--
-- Read as a palette, Jupiter is a ladder of creams and browns with two
-- exceptions at either end -- the red spot and the poles -- and that is
-- exactly how this scheme is laid out. The belts carry strings and the zones
-- properties, which is most of the ink, because between them they are most of
-- the planet. The spot carries keywords. The polar blue-gray, which no view
-- from the ecliptic ever showed, carries types.
--
-- The banding gives an unusually smooth warm ladder -- five values from
-- cream to shadow inside thirty-five degrees of hue -- so most of the
-- separation here is lightness rather than color. That is a fair
-- description of the planet: from a distance it is one warm thing, striped.
--
-- Units, and the roles they take:
--
--   zone         hue  30   16.85 contrast   properties
--   ammonia      hue  40   12.58 contrast   functions
--   belt         hue  28   12.44 contrast   strings, escapes
--   brown        hue  23    8.57 contrast   modules
--   grs          hue  10    7.40 contrast   keywords, macros, imports
--   polar        hue 222    5.35 contrast   numbers
--   cyclone      hue 214    4.79 contrast   types
--   shadow       hue  20    4.69 contrast   operators
--
-- Hues here are fixed by the source, since they are the part that
-- represents the world. Saturation and contrast were then solved within a
-- band around their authored values, so that every pair of colors that can
-- appear together -- including every pair with the error, warning and git
-- colors, which sit beside code in the sign column -- clears the family's
-- separation limit.
--
-- Construction follows the rest of the family: every foreground is solved
-- by binary search for an exact contrast ratio against #000000, each accent
-- is the most chromatic form of its hue that still meets that ratio under a
-- per-role cap, and the closest pair of adjacent-capable roles sits at
-- 12.0 Delta E.

return {
  name = "observatory-jupiter-computed",
  about = "zones, belts, the red spot and the blue poles",
  floor = 12.0,

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
  text = "#cdc7bd",
  dim = "#b2aa9c",
  punct = "#a49887",
  comment = "#887a5f",
  lnr = "#746344",
  lnr_cur = "#b0a493",

  -- syntax roles
  str = "#ebbf99",
  num = "#6c80b0",
  typ = "#487abd",
  mod = "#c79d82",
  prop = "#e7e6e5",
  func = "#e2c589",
  kw = "#e87a64",
  op = "#976e59",
  macro = "#e87a64",
  esc = "#ebbf99",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#c79d82",
  hint = "#ebbf99",
  ok = "#29b16d",
  accent = "#e2c589",
  cursearch = "#e87a64",
  subst = "#ebbf99",
  match = "#edc24a",
  title = "#e2c589",
  dir = "#487abd",
  label = "#e87a64",
  tag = "#e87a64",
  h1 = "#e87a64",
  h2 = "#e2c589",
  h3 = "#ebbf99",
  h4 = "#487abd",
  h5 = "#c79d82",
  h6 = "#6c80b0",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#2b1608",
  diff_text = "#4b250d",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#261307",
  vt_hint = "#211206",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "belt", hue = 28, chroma = 27.2, cr = 12.44 },
    { key = "polar", hue = 222, chroma = 28.2, cr = 5.35 },
    { key = "cyclone", hue = 214, chroma = 40.4, cr = 4.79 },
    { key = "brown", hue = 23, chroma = 23.3, cr = 8.57 },
    { key = "zone", hue = 30, chroma = 0.6, cr = 16.85 },
    { key = "ammonia", hue = 40, chroma = 33.9, cr = 12.58 },
    { key = "grs", hue = 10, chroma = 51.2, cr = 7.40 },
    { key = "shadow", hue = 20, chroma = 22.5, cr = 4.69 },
  },
}

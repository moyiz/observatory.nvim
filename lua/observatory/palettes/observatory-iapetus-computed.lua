-- observatory-iapetus-computed -- two hemispheres, and nothing in between
--
-- Source: Iapetus is two-toned to a degree nothing else matches. The leading
-- hemisphere, Cassini Regio, reflects about five per cent of the light that
-- reaches it; the trailing hemisphere reflects near sixty. Dark dust swept up
-- on the leading face warms in sunlight, drives off its ice, and darkens
-- further -- a runaway that has painted one side of the moon and left the
-- other as snow.
--
-- So this palette is two clusters with a gap. Three bright, near-neutral ice
-- values above; four warm dark ones below; nothing in the middle of the
-- ladder at all. Almost every other scheme in the family is a gradient of some
-- kind, and this was the first whose structure is an absence -- better than a
-- third of the usable lightness range, deliberately empty.
-- `observatory-shadow` does the same thing later, with the hole a black hole
-- leaves in an image.
--
-- The bright cluster takes the roles that fill a buffer -- properties,
-- functions, modules and types -- and the dark cluster takes keywords,
-- strings, numbers and operators. Plain text sits with the ice; the dimmer
-- grays for punctuation, comments and line numbers sit on the dark side, so
-- the hole is genuinely empty rather than quietly filled by chrome. It is
-- enforced rather than hoped for: the solver is given a narrowed contrast band
-- here and a hard rule that no color may enter the gap.
--
-- Three values above rather than four, because the bright end of a contrast
-- range is crowded: the whole span from twelve to one against black up to the
-- ceiling is about a dozen lightness steps, and pale colors have very little
-- chroma to be told apart by. The dark cluster can hold more because dark
-- colors can be saturated, which is why the warm half of this scheme is the
-- detailed half. That is also true of the moon: the bright hemisphere is
-- featureless snow and all the structure is on the dark side.
--
-- The equatorial ridge is here as a color, which is a liberty: it is a
-- twenty-kilometer wall running most of the way around the moon, nobody knows
-- why it exists, and it earned a mention more than it earned a hue.
--
-- Units, and the roles they take:
--
--   snow         hue 180   16.92 contrast   properties
--   trailing     hue 203   14.35 contrast   functions
--   rim          hue 208   10.12 contrast   modules, types
--   cassini      hue  20    7.31 contrast   keywords, macros, imports
--   transition   hue  34    6.38 contrast   operators
--   ridge        hue  10    5.47 contrast   numbers
--   regio        hue  26    4.79 contrast   strings, escapes
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
-- 15.2 Delta E.

return {
  name = "observatory-iapetus-computed",
  about = "two hemispheres, and nothing in between",
  floor = 15.2,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#080f13",
  bg_float = "#0b161d",
  bg_sel = "#132a3a",
  bg_hl = "#173948",
  border = "#224558",
  bg_search = "#2b587b",
  nontext = "#223b45",

  -- the text ladder
  text = "#b9bdbf",
  dim = "#8a98a1",
  punct = "#5094b2",
  comment = "#8b98a2",
  lnr = "#4a697b",
  lnr_cur = "#7a919d",

  -- syntax roles
  str = "#a16d45",
  num = "#c66755",
  typ = "#8ab9e2",
  mod = "#8ab9e2",
  prop = "#e5e7e7",
  func = "#badaee",
  kw = "#da8255",
  op = "#bc8235",
  macro = "#da8255",
  esc = "#a16d45",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#8ab9e2",
  hint = "#a16d45",
  ok = "#29b16d",
  accent = "#badaee",
  cursearch = "#da8255",
  subst = "#a16d45",
  match = "#edc24a",
  title = "#badaee",
  dir = "#8ab9e2",
  label = "#da8255",
  tag = "#da8255",
  h1 = "#da8255",
  h2 = "#badaee",
  h3 = "#a16d45",
  h4 = "#8ab9e2",
  h5 = "#8ab9e2",
  h6 = "#c66755",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#081c2e",
  diff_text = "#0e3250",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#071929",
  vt_hint = "#231206",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "regio", hue = 26, chroma = 34.6, cr = 4.79 },
    { key = "ridge", hue = 10, chroma = 45.3, cr = 5.47 },
    { key = "rim", hue = 208, chroma = 26.0, cr = 10.12 },
    { key = "snow", hue = 180, chroma = 0.7, cr = 16.92 },
    { key = "trailing", hue = 203, chroma = 14.7, cr = 14.35 },
    { key = "cassini", hue = 20, chroma = 48.7, cr = 7.31 },
    { key = "transition", hue = 34, chroma = 51.3, cr = 6.38 },
  },
}

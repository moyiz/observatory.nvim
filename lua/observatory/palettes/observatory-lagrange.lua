-- observatory-lagrange -- the palette solved for maximum separation
--
-- Source: none. There is no image or spectrum behind this one. The hues and
-- saturations are the output of an optimiser, not a choice.
--
-- Every other variant in this family picks hues and then checks how far apart
-- they landed. This one inverts that: the contrast ladder is fixed, and hue
-- and saturation are then searched to maximise the smallest perceptual gap
-- between any two roles that can appear side by side. The result is the
-- flattest palette here, in the sense that no pair is much closer than any
-- other, and it is named for the points where competing pulls balance out.
--
-- Twelve colors -- ten accents plus delimiters and comments -- were placed
-- by local search with random restarts, on a fixed contrast ladder, subject
-- to two requirements:
--
--   * At least 10 Delta E between any two of them, so nothing is close.
--   * At least 16 units apart in the a-b plane whenever both read as
--     colored rather than gray, so no two accents differ only in
--     brightness. Without this second rule the solver scores well by
--     stacking one hue at several brightnesses, which measures as separation
--     and reads as monotony. Near-grays are exempt: lightness is all they
--     have.
--
-- Four colors take no part in the search but must be avoided: plain text,
-- and the three fixed diagnostic colors -- error red, warning amber and git
-- green -- which appear in the sign column and in virtual text right beside
-- code. Counting those, 16 colors and 120 pairs.
--
-- The search met both requirements 1.17 times over, ending at a floor of
-- 19.1 Delta E with no two chromatic colors closer than 18.8 in the a-b
-- plane. Note which number that maximises: walking the golden angle over the
-- same ladder actually reaches a slightly higher Delta E floor, 20.4, but
-- only 1.03 times its requirements, because a fixed increment cannot respond
-- to the hue rule the way a search can (see observatory-phi). The hand-tuned
-- variants sit between 10.3 and 13.5 Delta E.
--
-- Because nothing but separation was optimised, the hues carry no theme.
-- They are simply as far from each other as the ladder allows, which is a
-- different thing from being chosen well.
--
-- Construction follows the rest of the family: every foreground is solved
-- by binary search for an exact contrast ratio against #000000, each accent
-- is the most chromatic form of its hue that still meets that ratio under a
-- per-role cap, and the closest pair of adjacent-capable roles sits at
-- 19.1 Delta E.

return {
  name = "observatory-lagrange",
  about = "the palette solved for maximum separation",
  floor = 19.1,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#0a0f17",
  bg_float = "#0d1623",
  bg_sel = "#172746",
  bg_hl = "#1f3463",
  border = "#2a406d",
  bg_search = "#31558b",
  nontext = "#293754",

  -- the text ladder
  text = "#dbdddf",
  dim = "#a9afbc",
  punct = "#c983c9",
  comment = "#c65a90",
  lnr = "#5d6a8b",
  lnr_cur = "#a3abbc",

  -- syntax roles
  str = "#32bd32",
  num = "#7c7ce1",
  typ = "#7bc036",
  mod = "#bdbd19",
  prop = "#e2b78c",
  func = "#ecbebe",
  kw = "#41a3a4",
  op = "#a05ee3",
  macro = "#d38a89",
  esc = "#5292d1",

  -- interface duties, following the syntax colors
  err = "#f44c52",
  warn = "#edc24a",
  info = "#bdbd19",
  hint = "#32bd32",
  ok = "#29b16d",
  accent = "#ecbebe",
  cursearch = "#41a3a4",
  subst = "#32bd32",
  match = "#edc24a",
  title = "#ecbebe",
  dir = "#7bc036",
  label = "#41a3a4",
  tag = "#41a3a4",
  h1 = "#41a3a4",
  h2 = "#ecbebe",
  h3 = "#32bd32",
  h4 = "#7bc036",
  h5 = "#bdbd19",
  h6 = "#7c7ce1",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#1c1c05",
  diff_text = "#323209",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#191904",
  vt_hint = "#051b05",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "green3", hue = 120, chroma = 83.8, cr = 8.46 },
    { key = "indigo", hue = 240, chroma = 57.7, cr = 5.83 },
    { key = "green2", hue = 90, chroma = 73.5, cr = 9.44 },
    { key = "citron", hue = 60, chroma = 74.1, cr = 10.46 },
    { key = "amber2", hue = 30, chroma = 29.4, cr = 11.39 },
    { key = "red", hue = 0, chroma = 17.6, cr = 12.68 },
    { key = "cyan", hue = 181, chroma = 29.3, cr = 7.00 },
    { key = "violet", hue = 270, chroma = 77.6, cr = 5.21 },
    { key = "red2", hue = 1, chroma = 30.3, cr = 7.77 },
    { key = "azure", hue = 210, chroma = 38.5, cr = 6.39 },
  },
}

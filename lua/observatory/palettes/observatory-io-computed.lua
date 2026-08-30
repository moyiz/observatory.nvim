-- observatory-io-computed -- sulfur yellow, with frost as the only cool thing on it
--
-- Io is repainted continuously by its own volcanoes, and the paint is sulfur.
-- Different allotropes and temperatures give the yellows, oranges and reds that
-- cover it, silicate lava gives the dark patches, and sulfur dioxide freezing
-- out of the plumes gives the white frost -- the one thing on that surface that
-- is not warm. Those are the colors here. They are qualitative rather than
-- measured: the ranges sulfur occupies are well known, but no spectrum was
-- consulted for the exact hues.
--
-- Yellow leads, which nothing else in this family does. Functions take the
-- sulfur itself at 14.2 contrast, keywords the amber below it, strings the
-- orange and numbers the red, walking down the same temperature sequence the
-- surface does. The frost is held back for types, modules and properties, so the
-- only cool colors on screen mark the structural parts of the code.
--
-- Errors and git are the usual exceptions -- neither red nor green can be
-- allowed to blend into a surface made of both -- so the error crimson is pushed
-- deeper than the sulfur reds at 4.80 and the git green is invented. The warning
-- citron at 16.4 is the brightest value in the scheme.
--
-- Construction follows the rest of the family: every foreground is solved
-- by binary search for an exact contrast ratio against #000000, each accent
-- is the most chromatic form of its hue that still meets that ratio under a
-- per-role cap, and the closest pair of adjacent-capable roles sits at
-- 11.5 Delta E.

return {
  name = "observatory-io-computed",
  about = "sulfur yellow, with frost as the only cool thing on it",
  floor = 11.5,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#130f06",
  bg_float = "#1c1507",
  bg_sel = "#36260d",
  bg_hl = "#493311",
  border = "#534018",
  bg_search = "#69541c",
  nontext = "#45371a",

  -- the text ladder
  text = "#deddd8",
  dim = "#b4af9c",
  punct = "#a79c75",
  comment = "#8b7f60",
  lnr = "#776946",
  lnr_cur = "#b2ab91",

  -- syntax roles
  str = "#ea8a40",
  num = "#ed614b",
  typ = "#55b3d5",
  mod = "#b7cad4",
  prop = "#b7cad4",
  func = "#e7d80c",
  kw = "#e8af29",
  op = "#9e7b4e",
  macro = "#ed614b",
  esc = "#ea8a40",

  -- interface duties, following the syntax colors
  err = "#f00d1c",
  warn = "#e0ee0e",
  info = "#55b3d5",
  hint = "#b7cad4",
  ok = "#29af6c",
  accent = "#e7d80c",
  cursearch = "#ed614b",
  subst = "#ea8a40",
  match = "#e0ee0e",
  title = "#e7d80c",
  dir = "#55b3d5",
  label = "#e8af29",
  tag = "#e8af29",
  h1 = "#e8af29",
  h2 = "#e7d80c",
  h3 = "#ea8a40",
  h4 = "#ed614b",
  h5 = "#55b3d5",
  h6 = "#b7cad4",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c10",
  diff_change = "#071e26",
  diff_text = "#0c3442",
  vt_error = "#390a0d",
  vt_warn = "#191b05",
  vt_info = "#061b22",
  vt_hint = "#061721",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "orange", hue = 26, chroma = 61.9, cr = 8.21 },
    { key = "red", hue = 8, chroma = 66.1, cr = 6.41 },
    { key = "frost_dim", hue = 196, chroma = 31.1, cr = 8.80 },
    { key = "frost", hue = 201, chroma = 8.4, cr = 12.41 },
    { key = "sulfur", hue = 56, chroma = 84.7, cr = 14.23 },
    { key = "amber", hue = 42, chroma = 70.8, cr = 10.60 },
    { key = "basalt", hue = 34, chroma = 30.7, cr = 5.40 },
  },
}

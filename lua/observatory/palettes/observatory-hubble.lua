-- observatory-hubble -- the Hubble palette, which lands on the corners of the RGB cube
--
-- The Hubble palette is not a set of colors, it is a mapping: sulfur at
-- 671.6 nm goes to the red channel, hydrogen-alpha at 656.3 nm to green, and
-- doubly ionised oxygen at 500.7 nm to blue. All three lines are actually red or
-- green in reality -- SII and H-alpha are 15 nm apart and both deep red -- so
-- nothing about the familiar gold-and-teal look of those images comes from the
-- light itself. It comes from the assignment.
--
-- Follow that mapping and the palette has to land on the corners of the RGB
-- cube, because there are only three channels to combine: SII alone is red,
-- H-alpha alone green, OIII alone blue, and the pairs give gold, cyan and
-- magenta. Those six are this scheme, at hues 0, 60, 120, 180, 240 and 300. It
-- is the only variant in the family that touches the primaries, and the only one
-- that did not get to choose its hues at all.
--
-- Six saturated corners is all a three-channel mapping can produce, so unlike
-- the other schemes this one has nothing left over to give diagnostics. They
-- reuse the corners: errors take SII red, warnings the gold, git the H-alpha
-- green. The contrast targets do the separating instead, which is why red sits
-- at 5.40 and gold at 11.60.
--
-- Construction follows the rest of the family: every foreground is solved
-- by binary search for an exact contrast ratio against #000000, each accent
-- is the most chromatic form of its hue that still meets that ratio under a
-- per-role cap, and the closest pair of adjacent-capable roles sits at
-- 13.5 Delta E.

return {
  name = "observatory-hubble",
  about = "the Hubble palette, which lands on the corners of the RGB cube",
  floor = 13.5,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#0c0e1c",
  bg_float = "#11122e",
  bg_sel = "#1f1f5e",
  bg_hl = "#2b2880",
  border = "#343788",
  bg_search = "#3e47bb",
  nontext = "#313267",

  -- the text ladder
  text = "#dcdce0",
  dim = "#aeaec2",
  punct = "#9fa0bc",
  comment = "#7d7d9d",
  lnr = "#6464a0",
  lnr_cur = "#a9a9c3",

  -- syntax roles
  str = "#1ac5c5",
  num = "#1cbb1c",
  typ = "#8080ea",
  mod = "#8080ea",
  prop = "#a9c9d6",
  func = "#c7c710",
  kw = "#ec52ec",
  op = "#7989c6",
  macro = "#ec52ec",
  esc = "#ec4242",

  -- interface duties, following the syntax colors
  err = "#ec4242",
  warn = "#c7c710",
  info = "#8080ea",
  hint = "#1ac5c5",
  ok = "#1cbb1c",
  accent = "#c7c710",
  cursearch = "#ec52ec",
  subst = "#1ac5c5",
  match = "#c7c710",
  title = "#c7c710",
  dir = "#8080ea",
  label = "#ec52ec",
  tag = "#ec52ec",
  h1 = "#ec52ec",
  h2 = "#c7c710",
  h3 = "#1ac5c5",
  h4 = "#1cbb1c",
  h5 = "#8080ea",
  h6 = "#ec4242",

  -- diff and virtual-text backdrops
  diff_add = "#062306",
  diff_delete = "#430c0c",
  diff_change = "#0f0f55",
  diff_text = "#191990",
  vt_error = "#390a0a",
  vt_warn = "#1b1b05",
  vt_info = "#0d0d4c",
  vt_hint = "#051a1a",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "cyan", hue = 180, chroma = 40.3, cr = 9.84 },
    { key = "green", hue = 120, chroma = 90.2, cr = 8.17 },
    { key = "blue", hue = 240, chroma = 60.1, cr = 6.19 },
    { key = "pale", hue = 197, chroma = 12.7, cr = 12.01 },
    { key = "gold", hue = 60, chroma = 78.7, cr = 11.61 },
    { key = "magenta", hue = 300, chroma = 90.5, cr = 6.98 },
    { key = "steel", hue = 228, chroma = 34.8, cr = 6.21 },
    { key = "red", hue = 0, chroma = 75.4, cr = 5.42 },
  },
}

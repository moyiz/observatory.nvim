-- observatory-ganymede-computed -- grooved ice over ancient rock
--
-- Source: Ganymede has two terrains of very different ages. Dark, ancient,
-- crater-saturated ground like Galileo Regio covers about a third of it; the
-- rest is bright grooved terrain, younger ice pulled apart by tectonics into
-- parallel ridges and troughs. Polar frost caps both ends.
--
-- Close relative of `observatory-europa`, and the difference is what the dark
-- material is. Europa's is sulfur and sulfates brought up from an ocean,
-- rust-colored and confined to cracks; Ganymede's is old rocky ground,
-- browner and covering whole provinces. This palette is accordingly the more
-- neutral and the less rusty of the two.
--
-- The thing that makes Ganymede unique contributes nothing here. It is the
-- only moon with a magnetic field of its own, and therefore the only one with
-- its own aurora -- but Hubble observed that aurora in oxygen lines at 130.4
-- and 135.6 nm, deep in the ultraviolet, so it is invisible and cannot enter
-- a palette. The most interesting fact about the body is the one a color
-- scheme has no way to use.
--
-- Units, and the roles they take:
--
--   polar_frost  hue 210   16.80 contrast   properties
--   grooved      hue 206   14.31 contrast   functions
--   sulcus       hue 210    9.31 contrast   modules
--   galileo      hue  32    8.63 contrast   types
--   palimpsest   hue  24    7.24 contrast   keywords, macros, imports
--   ice          hue 198    6.20 contrast   strings, escapes
--   rock         hue  28    5.31 contrast   numbers
--   shadow       hue 214    4.69 contrast   operators
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
-- 14.3 Delta E.

return {
  name = "observatory-ganymede-computed",
  about = "grooved ice over ancient rock",
  floor = 14.3,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#090f14",
  bg_float = "#0c161f",
  bg_sel = "#15293f",
  bg_hl = "#19384e",
  border = "#25445e",
  bg_search = "#2e5684",
  nontext = "#243b49",

  -- the text ladder
  text = "#babfc2",
  dim = "#a2acb5",
  punct = "#8b9da8",
  comment = "#72787f",
  lnr = "#4c687f",
  lnr_cur = "#98a8b3",

  -- syntax roles
  str = "#4d94b3",
  num = "#ab7443",
  typ = "#ce9d64",
  mod = "#8fb0d2",
  prop = "#e5e6e7",
  func = "#bcd9ef",
  kw = "#d5844d",
  op = "#5b79a1",
  macro = "#d5844d",
  esc = "#4d94b3",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#8fb0d2",
  hint = "#4d94b3",
  ok = "#29b16d",
  accent = "#bcd9ef",
  cursearch = "#d5844d",
  subst = "#4d94b3",
  match = "#edc24a",
  title = "#bcd9ef",
  dir = "#ce9d64",
  label = "#d5844d",
  tag = "#d5844d",
  h1 = "#d5844d",
  h2 = "#bcd9ef",
  h3 = "#4d94b3",
  h4 = "#ce9d64",
  h5 = "#8fb0d2",
  h6 = "#ab7443",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#091c30",
  diff_text = "#0f3153",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#07192a",
  vt_hint = "#061821",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "ice", hue = 198, chroma = 26.5, cr = 6.20 },
    { key = "rock", hue = 28, chroma = 39.1, cr = 5.31 },
    { key = "galileo", hue = 32, chroma = 38.4, cr = 8.63 },
    { key = "sulcus", hue = 210, chroma = 21.1, cr = 9.31 },
    { key = "polar_frost", hue = 210, chroma = 0.6, cr = 16.80 },
    { key = "grooved", hue = 206, chroma = 14.8, cr = 14.31 },
    { key = "palimpsest", hue = 24, chroma = 49.7, cr = 7.24 },
    { key = "shadow", hue = 214, chroma = 24.8, cr = 4.69 },
  },
}

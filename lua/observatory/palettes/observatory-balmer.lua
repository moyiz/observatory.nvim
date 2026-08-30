-- observatory-balmer -- the hydrogen Balmer series, brightness following line strength
--
-- One element supplies the whole palette. The Balmer series is hydrogen falling
-- to its second energy level: H-alpha at 656.3 nm, H-beta at 486.1, H-gamma at
-- 434.0, H-delta at 410.2 and H-epsilon at 397.0, converging on the Balmer limit
-- at 364.6 nm where it goes ultraviolet and stops being a color at all. That
-- gives red, cyan, and three increasingly deep violets -- and nothing else,
-- because hydrogen does not emit anywhere else in the visible.
--
-- Brightness is not chosen either. Under Case B recombination the lines have
-- relative intensities of 2.86, 1.00, 0.47, 0.26 and 0.16, and the contrast
-- targets follow that decrement: strings take H-alpha at 12.0, functions H-beta
-- at 9.7, keywords H-gamma at 8.0, types H-delta at 6.7 and numbers H-epsilon at
-- 4.9. The pink of the grays and the darks is what an H II region actually looks
-- like, which is H-alpha dominating everything.
--
-- The series has no green and no yellow, so git's green and the warning amber
-- are outside it, as is the error red -- H-alpha is already spoken for by strings
-- and the error had to be unmistakably not that. Properties and operators fall
-- back on neutrals for the same reason: five lines cannot cover ten roles.
--
-- Construction follows the rest of the family: every foreground is solved
-- by binary search for an exact contrast ratio against #000000, each accent
-- is the most chromatic form of its hue that still meets that ratio under a
-- per-role cap, and the closest pair of adjacent-capable roles sits at
-- 10.8 Delta E.

return {
  name = "observatory-balmer",
  about = "the hydrogen Balmer series, brightness following line strength",
  floor = 10.8,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#190a0f",
  bg_float = "#260d14",
  bg_sel = "#471724",
  bg_hl = "#5f1e2d",
  border = "#6e293e",
  bg_search = "#923155",
  nontext = "#582937",

  -- the text ladder
  text = "#dfdbdd",
  dim = "#bdabb1",
  punct = "#b6929f",
  comment = "#987781",
  lnr = "#8f5b69",
  lnr_cur = "#bda5ad",

  -- syntax roles
  str = "#f9b1b1",
  num = "#b845db",
  typ = "#b675e7",
  mod = "#b675e7",
  prop = "#b6ccd6",
  func = "#21c2cd",
  kw = "#a294ef",
  op = "#8e84bd",
  macro = "#a294ef",
  esc = "#f9b1b1",

  -- interface duties, following the syntax colors
  err = "#f4515c",
  warn = "#edc858",
  info = "#a294ef",
  hint = "#21c2cd",
  ok = "#2cae6d",
  accent = "#21c2cd",
  cursearch = "#a294ef",
  subst = "#b675e7",
  match = "#edc858",
  title = "#f9b1b1",
  dir = "#21c2cd",
  label = "#a294ef",
  tag = "#a294ef",
  h1 = "#f9b1b1",
  h2 = "#21c2cd",
  h3 = "#a294ef",
  h4 = "#b675e7",
  h5 = "#b845db",
  h6 = "#b6ccd6",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c10",
  diff_change = "#180e51",
  diff_text = "#291888",
  vt_error = "#390a0d",
  vt_warn = "#1f1906",
  vt_info = "#150c47",
  vt_hint = "#05181a",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "h_alpha", hue = 0, chroma = 28.3, cr = 11.95 },
    { key = "h_epsilon", hue = 286, chroma = 87.1, cr = 4.91 },
    { key = "h_delta", hue = 274, chroma = 66.7, cr = 6.69 },
    { key = "pale", hue = 199, chroma = 9.2, cr = 12.60 },
    { key = "h_beta", hue = 184, chroma = 38.2, cr = 9.66 },
    { key = "h_gamma", hue = 249, chroma = 50.8, cr = 8.02 },
    { key = "steel", hue = 251, chroma = 32.7, cr = 6.19 },
  },
}

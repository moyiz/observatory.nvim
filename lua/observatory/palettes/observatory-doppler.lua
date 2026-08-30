-- observatory-doppler -- one spectral line, seven velocities
--
-- Every accent in this scheme is the same emission line. Hydrogen-alpha rests
-- at 656.3 nm, and relativistic Doppler shifts it by a factor of
-- sqrt((1-B)/(1+B)) along the line of sight, so at 0.10c it arrives at 593.6 nm,
-- at 0.20c at 535.9, at 0.30c at 481.6, at 0.40c at 429.6 and at 0.45c at
-- 404.2 -- yellow, green, cyan, blue and violet, from one red line. Receding at
-- 0.06c it lands at 696.9 nm instead, the deepest red here.
--
-- The brightness ordering is physics too, not preference. Approaching material
-- is Doppler-boosted, so contrast rises with velocity: the receding line is the
-- dimmest value in the scheme at 5.20 and the most blueshifted the brightest at
-- 14.40. Reading a line of code therefore reads as a velocity scale, with numbers
-- and strings near rest and functions and keywords the most strongly beamed.
--
-- Two consequences. Beyond about 0.45c the line leaves the visible spectrum
-- entirely, which is why the sequence stops there rather than at a round number.
-- And a single line can never produce green -- 535.9 nm converts to hue 93, a
-- chartreuse -- so git's green is the one value here that is not H-alpha.
--
-- Construction follows the rest of the family: every foreground is solved
-- by binary search for an exact contrast ratio against #000000, each accent
-- is the most chromatic form of its hue that still meets that ratio under a
-- per-role cap, and the closest pair of adjacent-capable roles sits at
-- 10.6 Delta E.

return {
  name = "observatory-doppler",
  about = "one spectral line, seven velocities",
  floor = 10.6,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#0b0d1a",
  bg_float = "#10142a",
  bg_sel = "#1b2451",
  bg_hl = "#22316c",
  border = "#303c7a",
  bg_search = "#38509e",
  nontext = "#2e355d",

  -- the text ladder
  text = "#dcdddf",
  dim = "#acaebd",
  punct = "#939bb7",
  comment = "#7a7f9b",
  lnr = "#606797",
  lnr_cur = "#a6aabe",

  -- syntax roles
  str = "#c0a210",
  num = "#f26464",
  typ = "#68c71a",
  mod = "#3ac7de",
  prop = "#c2cadb",
  func = "#e8ccf6",
  kw = "#c8baf4",
  op = "#8084be",
  macro = "#c8baf4",
  esc = "#f26464",

  -- interface duties, following the syntax colors
  err = "#e93d3d",
  warn = "#c0a210",
  info = "#3ac7de",
  hint = "#68c71a",
  ok = "#2cae6d",
  accent = "#e8ccf6",
  cursearch = "#c8baf4",
  subst = "#c0a210",
  match = "#c0a210",
  title = "#e8ccf6",
  dir = "#3ac7de",
  label = "#c8baf4",
  tag = "#c8baf4",
  h1 = "#c8baf4",
  h2 = "#e8ccf6",
  h3 = "#3ac7de",
  h4 = "#68c71a",
  h5 = "#c0a210",
  h6 = "#f26464",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0c",
  diff_change = "#061f22",
  diff_text = "#0a353b",
  vt_error = "#390a0a",
  vt_warn = "#1e1a05",
  vt_info = "#051b1e",
  vt_hint = "#0e1a05",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "shift1", hue = 50, chroma = 68.4, cr = 8.42 },
    { key = "rest", hue = 0, chroma = 61.5, cr = 6.78 },
    { key = "shift2", hue = 93, chroma = 86.8, cr = 9.77 },
    { key = "shift3", hue = 188, chroma = 36.7, cr = 10.40 },
    { key = "pale", hue = 221, chroma = 9.4, cr = 12.76 },
    { key = "shift5", hue = 280, chroma = 24.2, cr = 14.40 },
    { key = "shift4", hue = 254, chroma = 31.5, cr = 11.79 },
    { key = "steel", hue = 236, chroma = 33.1, cr = 5.96 },
  },
}

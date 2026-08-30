-- observatory-vega -- the star everything else is measured against
--
-- Source: Vega, alpha Lyrae, an A0 V star at 9,602 K and 25 light years, and
-- the zero point of observational astronomy. The magnitude scale was tied to
-- it, and so was color: Vega's color indices are zero by definition, which
-- is what makes every B-V in `observatory-hertzsprungrussell`, `observatory-carbon`,
-- `observatory-cepheid` and `observatory-extinction` a number rather than an
-- opinion. The top rung is the star itself through the Planck curve. The five
-- below are the Johnson-Cousins passbands, at the effective wavelength of each
-- -- U at 360 nm, B at 440, V at 550, R at 640, I at 790 -- with their
-- contrasts following Bessell's table of the flux a magnitude-zero star
-- delivers in that band: 4,260 janskys in B, 3,640 in V, 3,080 in R, 2,550 in
-- I and 1,810 in U.
--
-- So the ladder is a calibration table and the hues are the filters it is
-- tabulated for, which makes this the only palette here whose brightnesses are
-- literally unit conversions. It also makes it wide: five broadband filters
-- spaced across and past the visible range give a blue, a yellow-green, a red
-- and two edge colors, where the star on its own would give one pale blue and
-- nothing else. `observatory-hubble` is the family's other scheme built from a
-- filter set rather than from light, and lands on the corners of the RGB cube
-- because its mapping forces it to; this one lands where the passbands sit.
--
-- Two of the five bands are outside vision and are drawn at the edge of it. U
-- is centered at 360 nm and I at 790, and Bruton's conversion runs from 380 to
-- 780, so those two rungs are the violet and the deep red a person can just
-- about still see. That is not a workaround so much as the fact: the system
-- Vega calibrates includes light nobody can look at, and the palette shows
-- those two bands as dark because that is how much of them reaches the eye.
--
-- The star's own color is less settled than the zero point suggests. Vega
-- rotates once every 12.5 hours, fast enough to be visibly oblate and
-- gravity-darkened, and it is seen almost pole-on: the pole runs near 10,150 K
-- and the equator nearer 7,900, so the single 9,602 K used here is a
-- disc-averaged figure for a star that does not have one temperature. It is
-- also the star whose infrared excess, found by IRAS in 1983, was the first
-- debris disc ever detected, at about 70 K and therefore no color at all.
--
-- Bands, and the roles they take:
--
--   photosphere  hue 222   16.94 contrast   properties
--   band_b       hue 240   12.35 contrast   functions
--   band_v       hue  82   12.00 contrast   modules, types
--   band_r       hue   8    9.80 contrast   strings, escapes
--   band_i       hue   0    7.20 contrast   keywords, macros, imports
--   band_u       hue 300    5.20 contrast   numbers, operators
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
-- 17.1 Delta E.

return {
  name = "observatory-vega",
  about = "the star everything else is measured against",
  floor = 17.1,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#0a0f17",
  bg_float = "#0e1524",
  bg_sel = "#1a264d",
  bg_hl = "#1e355d",
  border = "#2b3f6f",
  bg_search = "#38509e",
  nontext = "#293852",

  -- the text ladder
  text = "#babbc0",
  dim = "#a6aab6",
  punct = "#8695ae",
  comment = "#6277ae",
  lnr = "#54658a",
  lnr_cur = "#9fa6b6",

  -- syntax roles
  str = "#ea9e92",
  num = "#d334d3",
  typ = "#a0d446",
  mod = "#a0d446",
  prop = "#dfe7f9",
  func = "#c2c2f7",
  kw = "#ea7373",
  op = "#d334d3",
  macro = "#ea7373",
  esc = "#ea9e92",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#a0d446",
  hint = "#ea9e92",
  ok = "#29b16d",
  accent = "#c2c2f7",
  cursearch = "#ea7373",
  subst = "#ea9e92",
  match = "#edc24a",
  title = "#c2c2f7",
  dir = "#a0d446",
  label = "#ea7373",
  tag = "#ea7373",
  h1 = "#ea7373",
  h2 = "#c2c2f7",
  h3 = "#ea9e92",
  h4 = "#a0d446",
  h5 = "#a0d446",
  h6 = "#d334d3",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#151e05",
  diff_text = "#253409",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#131b05",
  vt_hint = "#2b0d08",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "band_r", hue = 8, chroma = 32.2, cr = 9.80 },
    { key = "band_u", hue = 300, chroma = 90.9, cr = 5.20 },
    { key = "band_v", hue = 82, chroma = 72.6, cr = 12.00 },
    { key = "photosphere", hue = 222, chroma = 9.7, cr = 16.94 },
    { key = "band_b", hue = 240, chroma = 28.3, cr = 12.35 },
    { key = "band_i", hue = 0, chroma = 50.8, cr = 7.20 },
  },
}

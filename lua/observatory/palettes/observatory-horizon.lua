-- observatory-horizon -- one line falling into a black hole
--
-- Source: gravitational redshift. A 400 nm line emitted at radius r outside
-- a black hole of Schwarzschild radius rs reaches a distant observer
-- stretched by 1 / sqrt(1 - rs/r), with its photon energy cut by the same
-- factor. Wavelengths become RGB by Dan Bruton's approximation.
--
-- Every other gradient here sets hue and brightness independently. This one
-- cannot: both come out of the same term. Light climbing out of a deeper
-- position in the well arrives redder and fainter together, so the palette
-- runs violet and bright at the top to red and dim at the bottom, and the
-- ordering is not an aesthetic decision but a consequence.
--
-- Radii and the colors they produce:
--
--   r = 1000.0 rs   x1.001   400.2 nm   hue 283   13.49 contrast   prop
--   r =   10.0 rs   x1.054   421.6 nm   hue 263   12.71 contrast   func
--   r =    5.0 rs   x1.118   447.2 nm   hue 227   11.87 contrast   mod
--   r =    3.0 rs   x1.225   489.9 nm   hue 180   10.69 contrast   str
--   r =    2.2 rs   x1.354   541.6 nm   hue  88    9.53 contrast   typ
--   r =    2.0 rs   x1.414   565.7 nm   hue  70    9.06 contrast   num
--   r =    1.7 rs   x1.558   623.4 nm   hue  25    8.11 contrast   kw
--   r =    1.5 rs   x1.732   692.8 nm   hue   0    7.18 contrast   macro
--
-- Contrast is 13.5 / stretch^1.15, so the ladder is the redshift factor
-- rather than a table I chose. Past r = 1.5 rs the line leaves the visible
-- range entirely, which is the reason there are eight accents and not more;
-- operators fall back to a neutral steel because the sequence ran out of
-- visible light before it ran out of roles.
--
-- Construction follows the rest of the family: every foreground is solved
-- by binary search for an exact contrast ratio against #000000, each accent
-- is the most chromatic form of its hue that still meets that ratio under a
-- per-role cap, and the closest pair of adjacent-capable roles sits at
-- 10.5 Delta E.

return {
  name = "observatory-horizon",
  about = "one line falling into a black hole",
  floor = 10.5,

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
  punct = "#909db2",
  comment = "#778095",
  lnr = "#5d6a8b",
  lnr_cur = "#a3abbc",

  -- syntax roles
  str = "#4fcacb",
  num = "#9db42a",
  typ = "#8dbd56",
  mod = "#b6c1eb",
  prop = "#dcc8e4",
  func = "#d4c1f1",
  kw = "#e48c4c",
  op = "#7291b3",
  macro = "#ef7070",
  esc = "#ef7070",

  -- interface duties, following the syntax colors
  err = "#f44c52",
  warn = "#edc24a",
  info = "#b6c1eb",
  hint = "#4fcacb",
  ok = "#29b16d",
  accent = "#d4c1f1",
  cursearch = "#e48c4c",
  subst = "#4fcacb",
  match = "#edc24a",
  title = "#d4c1f1",
  dir = "#8dbd56",
  label = "#e48c4c",
  tag = "#e48c4c",
  h1 = "#e48c4c",
  h2 = "#d4c1f1",
  h3 = "#4fcacb",
  h4 = "#8dbd56",
  h5 = "#b6c1eb",
  h6 = "#9db42a",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#0c1743",
  diff_text = "#142872",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#0a143b",
  vt_hint = "#05191a",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "cyan", hue = 180, chroma = 34.9, cr = 10.64 },
    { key = "lime2", hue = 70, chroma = 67.6, cr = 9.00 },
    { key = "lime", hue = 88, chroma = 56.9, cr = 9.55 },
    { key = "blue", hue = 228, chroma = 22.7, cr = 11.82 },
    { key = "purple", hue = 283, chroma = 16.5, cr = 13.43 },
    { key = "violet", hue = 264, chroma = 26.5, cr = 12.70 },
    { key = "vermilion", hue = 25, chroma = 55.1, cr = 8.15 },
    { key = "steel", hue = 211, chroma = 21.4, cr = 6.42 },
    { key = "red", hue = 0, chroma = 54.4, cr = 7.22 },
  },
}

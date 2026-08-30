-- observatory-titan-computed -- an orange monochrome; the haze admits nothing else
--
-- Titan's atmosphere is an organic smog. Sunlight breaking up methane and
-- nitrogen produces tholins, and the haze they form is so optically thick that
-- the surface was invisible until Cassini looked through it in the infrared.
-- Everything you can see of Titan in visible light is one color: an orange-brown
-- roughly 20 degrees wide.
--
-- So this scheme is that, and nothing else. The entire palette lives between
-- hue 16 and hue 54, and roles are told apart purely by how far through the haze
-- they are -- pale cream properties at 15.0 contrast down to deep rust keywords
-- at 4.8, with plain text at 11.6 in the middle rather than at the top, since
-- nothing seen through a haze is at full brightness. It is the warm counterpart
-- to `observatory-uranus-computed`, and like that scheme it is more restful
-- than it sounds, because nothing in it competes on hue.
--
-- The exception is unavoidable. Git needs a green and errors need a red that is
-- not simply more rust, so those two are the only values outside the haze; the
-- warning citron sits at its bright edge. That makes all three unmistakable,
-- which in a monochrome is exactly what you want from them.
--
-- Construction follows the rest of the family: every foreground is solved
-- by binary search for an exact contrast ratio against #000000, each accent
-- is the most chromatic form of its hue that still meets that ratio under a
-- per-role cap, and the closest pair of adjacent-capable roles sits at
-- 10.7 Delta E.

return {
  name = "observatory-titan-computed",
  about = "an orange monochrome; the haze admits nothing else",
  floor = 10.7,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#170e07",
  bg_float = "#1f1408",
  bg_sel = "#3a220e",
  bg_hl = "#502d13",
  border = "#5c391b",
  bg_search = "#744d1f",
  nontext = "#4b321d",

  -- the text ladder
  text = "#c4c0bb",
  dim = "#b2a697",
  punct = "#ae9880",
  comment = "#927c66",
  lnr = "#82654c",
  lnr_cur = "#b6a996",

  -- syntax roles
  str = "#dc8b30",
  num = "#de6b1e",
  typ = "#d0c08c",
  mod = "#e1dac2",
  prop = "#e1dac2",
  func = "#d7a855",
  kw = "#d54a18",
  op = "#ab8864",
  macro = "#d54a18",
  esc = "#de6b1e",

  -- interface duties, following the syntax colors
  err = "#eb0c14",
  warn = "#efd90f",
  info = "#d0c08c",
  hint = "#d7a855",
  ok = "#2cae71",
  accent = "#efd90f",
  cursearch = "#d54a18",
  subst = "#de6b1e",
  match = "#efd90f",
  title = "#d7a855",
  dir = "#d0c08c",
  label = "#d54a18",
  tag = "#d54a18",
  h1 = "#d54a18",
  h2 = "#d7a855",
  h3 = "#dc8b30",
  h4 = "#de6b1e",
  h5 = "#d0c08c",
  h6 = "#e1dac2",

  -- diff and virtual-text backdrops
  diff_add = "#062316",
  diff_delete = "#430c0e",
  diff_change = "#211b06",
  diff_text = "#3a2f0a",
  vt_error = "#390a0c",
  vt_warn = "#1c1a05",
  vt_info = "#1d1705",
  vt_hint = "#1d1405",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "amber", hue = 32, chroma = 63.0, cr = 7.78 },
    { key = "ochre", hue = 24, chroma = 71.9, cr = 6.23 },
    { key = "haze", hue = 46, chroma = 28.4, cr = 11.60 },
    { key = "cream", hue = 46, chroma = 12.8, cr = 15.01 },
    { key = "sand", hue = 38, chroma = 49.4, cr = 9.62 },
    { key = "rust", hue = 16, chroma = 76.1, cr = 4.82 },
    { key = "dust", hue = 30, chroma = 25.8, cr = 6.44 },
  },
}

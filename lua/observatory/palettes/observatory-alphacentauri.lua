-- observatory-alphacentauri -- the nearest three stars, and one flare
--
-- Source: the Alpha Centauri system, whose components are as well measured as
-- any stars can be. A is a G2 V at 5790 K, all but a solar twin; B a K1 V at
-- 5260; Proxima an M5.5 Ve at 3042, and cool enough that its starspots run
-- several hundred degrees cooler again. Proxima also flares, hard and often --
-- the 2019 superflare brightened it by orders of magnitude -- and flare
-- continuum is fit by a blackbody near 10000 K, which is why the bluest color
-- in this palette comes from the reddest star in it.
--
-- The ladder is apparent magnitude, ranked rather than scaled: A is the third
-- brightest star in the sky at magnitude -0.01, B is at 1.33, and Proxima --
-- the closest star to the Sun -- is at 11.13 and has never been visible to
-- anyone's naked eye. Ranking rather than scaling is the same compromise
-- `observatory-albedo` makes, and for the same reason: eleven magnitudes will not
-- fit in a contrast range that spans a factor of three and a half.
--
-- Five colors for thirteen roles, because a system with three stars in it
-- does not have more to give. The flare and the starspot are the two ends of
-- the ladder and they belong to the same star, which is the fact that made
-- this worth building: Proxima supplies both the brightest and the dimmest
-- color in the palette, depending on the minute you look.
--
-- Sources, and the roles they take:
--
--   flare        hue 223   16.65 contrast   properties
--   cen_a        hue  31   13.10 contrast   functions
--   cen_b        hue  27    9.53 contrast   modules, types
--   proxima      hue  28    7.83 contrast   keywords, macros, imports, strings, escapes
--   starspot     hue  28    4.79 contrast   numbers, operators
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
-- 16.9 Delta E.

return {
  name = "observatory-alphacentauri",
  about = "the nearest three stars, and one flare",
  floor = 16.9,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#140d08",
  bg_float = "#1c140b",
  bg_sel = "#342511",
  bg_hl = "#4c2e18",
  border = "#563b21",
  bg_search = "#6d4f26",
  nontext = "#483324",

  -- the text ladder
  text = "#bdbab7",
  dim = "#b2a9a1",
  punct = "#b2784c",
  comment = "#8c8780",
  lnr = "#786049",
  lnr_cur = "#b1a498",

  -- syntax roles
  str = "#f57d14",
  num = "#be5e08",
  typ = "#d6a57c",
  mod = "#d6a57c",
  prop = "#dfe5f4",
  func = "#e2c8ad",
  kw = "#f57d14",
  op = "#be5e08",
  macro = "#f57d14",
  esc = "#f57d14",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#d6a57c",
  hint = "#f57d14",
  ok = "#29b16d",
  accent = "#e2c8ad",
  cursearch = "#f57d14",
  subst = "#f57d14",
  match = "#edc24a",
  title = "#e2c8ad",
  dir = "#d6a57c",
  label = "#f57d14",
  tag = "#f57d14",
  h1 = "#f57d14",
  h2 = "#e2c8ad",
  h3 = "#f57d14",
  h4 = "#d6a57c",
  h5 = "#d6a57c",
  h6 = "#be5e08",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#2a1707",
  diff_text = "#48270d",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#241406",
  vt_hint = "#211206",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "proxima", hue = 28, chroma = 79.9, cr = 7.83 },
    { key = "starspot", hue = 28, chroma = 67.0, cr = 4.79 },
    { key = "cen_b", hue = 27, chroma = 31.0, cr = 9.53 },
    { key = "flare", hue = 223, chroma = 8.0, cr = 16.65 },
    { key = "cen_a", hue = 31, chroma = 17.6, cr = 13.10 },
  },
}

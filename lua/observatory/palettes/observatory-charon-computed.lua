-- observatory-charon-computed -- Pluto's tholins, arrived second-hand
--
-- Source: Charon's north pole is red, and the red is not its own. Methane
-- escaping Pluto's atmosphere is captured by Charon, freezes out on the
-- winter pole through a night decades long, and is worked into tholins by
-- ultraviolet and cosmic rays. The result is Mordor Macula. The rest of the
-- body is water ice, gray and cratered, with ammonia-bright rays at Organa.
--
-- A gray world with one red cap makes a scheme in the mould of `observatory-luna`
-- and `observatory-mercury`, and this is deliberately the most neutral of the
-- three: Charon's ice is genuinely colorless, so everything except the pole
-- sits close to gray and the tholin red is the only place chroma
-- accumulates.
--
-- Keywords take Mordor Macula. Having both this and `observatory-pluto` is the
-- point of either: one chemistry produces a warm world with a blue sky there
-- and a gray world with a red hat here, and the only difference between them
-- is which body kept its atmosphere.
--
-- Units, and the roles they take:
--
--   plain        hue 200   16.93 contrast   properties
--   ice          hue 202   14.01 contrast   functions
--   mordor       hue  18   10.18 contrast   keywords, macros, imports
--   chasma       hue 208    7.02 contrast   operators
--   stain        hue  26    6.19 contrast   modules
--   organa       hue 196    6.05 contrast   types
--   serenity     hue 212    5.11 contrast   strings, escapes
--   shadow       hue 215    4.79 contrast   numbers
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
-- 14.7 Delta E.

return {
  name = "observatory-charon-computed",
  about = "Pluto's tholins, arrived second-hand",
  floor = 14.7,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#090f14",
  bg_float = "#0d1621",
  bg_sel = "#172744",
  bg_hl = "#1b3754",
  border = "#274264",
  bg_search = "#32548e",
  nontext = "#26394d",

  -- the text ladder
  text = "#bbbec1",
  dim = "#a4acb6",
  punct = "#92b0cf",
  comment = "#747880",
  lnr = "#506685",
  lnr_cur = "#9ba7b5",

  -- syntax roles
  str = "#377fd0",
  num = "#617a9e",
  typ = "#5c91a5",
  mod = "#ba7e4f",
  prop = "#e5e7e8",
  func = "#b6d8eb",
  kw = "#e3a78e",
  op = "#639acb",
  macro = "#e3a78e",
  esc = "#377fd0",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#ba7e4f",
  hint = "#377fd0",
  ok = "#29b16d",
  accent = "#b6d8eb",
  cursearch = "#e3a78e",
  subst = "#377fd0",
  match = "#edc24a",
  title = "#b6d8eb",
  dir = "#5c91a5",
  label = "#e3a78e",
  tag = "#e3a78e",
  h1 = "#e3a78e",
  h2 = "#b6d8eb",
  h3 = "#377fd0",
  h4 = "#5c91a5",
  h5 = "#ba7e4f",
  h6 = "#617a9e",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#2a1707",
  diff_text = "#49280d",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#241406",
  vt_hint = "#071728",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "serenity", hue = 212, chroma = 48.5, cr = 5.11 },
    { key = "shadow", hue = 215, chroma = 22.2, cr = 4.79 },
    { key = "organa", hue = 196, chroma = 20.1, cr = 6.05 },
    { key = "stain", hue = 26, chroma = 39.3, cr = 6.19 },
    { key = "plain", hue = 200, chroma = 0.9, cr = 16.93 },
    { key = "ice", hue = 202, chroma = 14.8, cr = 14.01 },
    { key = "mordor", hue = 18, chroma = 28.7, cr = 10.18 },
    { key = "chasma", hue = 208, chroma = 31.1, cr = 7.02 },
  },
}

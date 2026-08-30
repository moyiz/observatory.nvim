-- observatory-orion-computed -- one constellation, measured
--
-- Source: Orion, the constellation that teaches people star color, because
-- it puts a 3600 K supergiant and a 12100 K one in the same handspan of sky
-- and the difference is obvious to the naked eye. Betelgeuse and Rigel supply
-- those two, Bellatrix a 21800 K B2 III for the hotter end, and the nebulae
-- supply what stars cannot: [O III] at 500.7 nm and hydrogen-alpha from M42,
-- the blue of the reflection nebulosity around the belt, and the dust of the
-- Horsehead.
--
-- Stellar temperatures come through the Planck curve and the nebular lines
-- through Bruton's wavelength conversion, so two different derivations meet in
-- one palette. That is the point of choosing a constellation rather than an
-- object: a patch of sky contains stars, ionised gas, reflecting dust and
-- absorbing dust, and each of those has its own reason for the color it is.
--
-- It also gives this the widest spread of hue of any stellar scheme drawn from
-- starlight, second only to `observatory-przybylski`'s laboratory peaks, by a
-- distance: 235 degrees where the palettes built from stellar continua alone
-- manage between two and 190. `observatory-wolfrayet` reaches 225 the way
-- this scheme does, by using something other than the continuum. Blackbodies are confined to the Planckian locus and therefore to two hue
-- families, and adding ionised gas and reflecting dust brings in a green and a
-- pink that no star can produce. Hydrogen-alpha is used at its photographed hue
-- rather than its computed one, as in `observatory-eclipse` and `observatory-crab`.
--
-- Objects, and the roles they take:
--
--   rigel        hue 221   16.92 contrast   properties
--   m42_oiii     hue 152   13.61 contrast   functions
--   bellatrix    hue 219   11.20 contrast   modules
--   m42_halpha   hue 346    9.18 contrast   strings, escapes
--   betelgeuse   hue  27    7.58 contrast   types
--   reflection   hue 226    5.65 contrast   keywords, macros, imports
--   horsehead    hue  22    4.81 contrast   numbers, operators
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
-- 16.7 Delta E.

return {
  name = "observatory-orion-computed",
  about = "one constellation, measured",
  floor = 16.7,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#090f16",
  bg_float = "#0d1524",
  bg_sel = "#19264a",
  bg_hl = "#1d365b",
  border = "#2a406d",
  bg_search = "#36509a",
  nontext = "#283951",

  -- the text ladder
  text = "#bbbdc2",
  dim = "#a5aab6",
  punct = "#7e828a",
  comment = "#768cbd",
  lnr = "#53658a",
  lnr_cur = "#9da6b7",

  -- syntax roles
  str = "#ee90a6",
  num = "#b26538",
  typ = "#e7812f",
  mod = "#a4bef0",
  prop = "#dee7fa",
  func = "#7ce4b4",
  kw = "#6a81cf",
  op = "#b26538",
  macro = "#6a81cf",
  esc = "#ee90a6",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#a4bef0",
  hint = "#ee90a6",
  ok = "#29b16d",
  accent = "#7ce4b4",
  cursearch = "#6a81cf",
  subst = "#ee90a6",
  match = "#edc24a",
  title = "#7ce4b4",
  dir = "#e7812f",
  label = "#6a81cf",
  tag = "#6a81cf",
  h1 = "#6a81cf",
  h2 = "#7ce4b4",
  h3 = "#ee90a6",
  h4 = "#e7812f",
  h5 = "#a4bef0",
  h6 = "#b26538",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#0a1a3a",
  diff_text = "#112d63",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#091732",
  vt_hint = "#2e0811",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "m42_halpha", hue = 346, chroma = 38.4, cr = 9.18 },
    { key = "horsehead", hue = 22, chroma = 46.9, cr = 4.81 },
    { key = "betelgeuse", hue = 27, chroma = 67.4, cr = 7.58 },
    { key = "bellatrix", hue = 219, chroma = 27.8, cr = 11.20 },
    { key = "rigel", hue = 221, chroma = 10.2, cr = 16.92 },
    { key = "m42_oiii", hue = 152, chroma = 43.5, cr = 13.61 },
    { key = "reflection", hue = 226, chroma = 44.9, cr = 5.65 },
  },
}

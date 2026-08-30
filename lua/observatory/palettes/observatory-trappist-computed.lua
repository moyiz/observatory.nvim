-- observatory-trappist-computed -- seven worlds, and the one small red star lighting them
--
-- Source: TRAPPIST-1, forty light years away, an M8 dwarf of about 2566 K with
-- seven Earth-sized planets around it -- b through h, the largest set of
-- terrestrial worlds known around one star, and three of them, e, f and g, at
-- distances where liquid water is arguable. The quantity that orders them is
-- insolation: b receives a little over four times what Earth does, h about a
-- seventh, and the five in between fall in order. The color is the star's,
-- from the Planck curve at 2566 K.
--
-- Which gives a palette with one hue in it and seven rungs. That is not a
-- shortcut: seven worlds lit by one small red star are, to a first
-- approximation, seven brightnesses of the same color, and a system where
-- every planet gets its own hue would be an illustration rather than a
-- derivation. Reading down the ladder is moving outward through the system,
-- and the three worlds people care about are the middle three rungs.
--
-- The compression is the compromise. Thirty to one in insolation becomes a
-- little over three to one in contrast ratio, because the top of the usable
-- range is fixed by the display and the bottom by legibility, so the palette
-- keeps the ordering and loses the scale. Two degrees of hue across the whole
-- palette is the narrowest span of any scheme here that has hues in it at
-- all -- only `observatory-plate` and `observatory-shadow`, at zero, are
-- narrower -- so every pair of rungs has
-- to clear the separation floor on lightness and purity alone; the tightest of
-- them, at 14 Delta E, is c against d.
--
-- `observatory-titan`, `observatory-io` and `observatory-betelgeuse` are the
-- collection's other warm monochromes. This is the most literal of them: not
-- one object at
-- several temperatures, but seven objects and one light source.
--
-- Planets, and the roles they take:
--
--   b_4_15       hue  30   16.88 contrast   properties
--   c_2_21       hue  28   13.72 contrast   functions
--   d_1_12       hue  29   11.14 contrast   keywords, macros, imports
--   f_0_37       hue  29    8.89 contrast   modules, strings
--   e_0_65       hue  29    8.66 contrast   types
--   g_0_25       hue  29    6.70 contrast   escapes, numbers
--   h_0_14       hue  29    4.73 contrast   operators
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
-- 16.4 Delta E.

return {
  name = "observatory-trappist-computed",
  about = "seven worlds, and the one small red star lighting them",
  floor = 16.4,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#140d08",
  bg_float = "#1d130b",
  bg_sel = "#342511",
  bg_hl = "#4d2f18",
  border = "#573b22",
  bg_search = "#6f4f27",
  nontext = "#483324",

  -- the text ladder
  text = "#bdb9b6",
  dim = "#b3a9a0",
  punct = "#89827c",
  comment = "#947859",
  lnr = "#7a6049",
  lnr_cur = "#b2a397",

  -- syntax roles
  str = "#e89649",
  num = "#dc7718",
  typ = "#c79f79",
  mod = "#e89649",
  prop = "#eee5dc",
  func = "#eccbae",
  kw = "#efb076",
  op = "#aa682c",
  macro = "#efb076",
  esc = "#dc7718",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#e89649",
  hint = "#e89649",
  ok = "#29b16d",
  accent = "#eccbae",
  cursearch = "#efb076",
  subst = "#e89649",
  match = "#edc24a",
  title = "#eccbae",
  dir = "#c79f79",
  label = "#efb076",
  tag = "#efb076",
  h1 = "#efb076",
  h2 = "#eccbae",
  h3 = "#e89649",
  h4 = "#c79f79",
  h5 = "#e89649",
  h6 = "#dc7718",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#291807",
  diff_text = "#46290c",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#241506",
  vt_hint = "#211306",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "f_0_37", hue = 29, chroma = 57.4, cr = 8.89 },
    { key = "g_0_25", hue = 29, chroma = 71.2, cr = 6.70 },
    { key = "e_0_65", hue = 29, chroma = 27.2, cr = 8.66 },
    { key = "b_4_15", hue = 30, chroma = 5.7, cr = 16.88 },
    { key = "c_2_21", hue = 28, chroma = 20.1, cr = 13.72 },
    { key = "d_1_12", hue = 29, chroma = 41.9, cr = 11.14 },
    { key = "h_0_14", hue = 29, chroma = 48.4, cr = 4.73 },
  },
}

-- observatory-mars-computed -- rust, with the blue its sunsets actually are
--
-- Source: Mars, including the part people get wrong. The rust is nanophase
-- ferric oxide dust; the dark dunes are basaltic sand, gray-blue in enhanced
-- color; the polar caps are carbon dioxide frost. And Martian sunsets are
-- blue: dust forward-scatters short wavelengths into a halo around the Sun,
-- so the sky reddens by day and goes blue at dusk, the inverse of ours.
--
-- That inversion is the scheme. A rust-dominant palette would be another
-- orange monochrome, but the blue is not an invention borrowed to make the
-- theme work -- it is photographed, and it is what the planet looks like at
-- the end of the day. It is also a twilight effect rather than the planet, so
-- it takes types: enough of a buffer to be a real presence, not enough to
-- claim Mars is blue. The sand takes strings, which is the honest split --
-- rust everywhere, cool light at the edge of it.
--
-- Types take the yellow-green of olivine, which is genuinely present in
-- Martian basalt and gives the palette a third hue family without leaving
-- the planet. The polar cap is the brightest value at 16.8, and the grays
-- are rust-tinted rather than neutral, because Martian dust gets everywhere,
-- including into the chrome of this color scheme.
--
-- Units, and the roles they take:
--
--   cap          hue 212   16.85 contrast   properties
--   dust         hue  26   14.73 contrast   functions
--   hematite     hue  16    9.85 contrast   keywords, macros, imports
--   olivine      hue  74    8.60 contrast   modules
--   sunset       hue 208    7.42 contrast   types
--   shadow       hue  11    7.17 contrast   operators
--   sand         hue  24    5.95 contrast   strings, escapes
--   basalt       hue 216    5.36 contrast   numbers
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
-- 14.4 Delta E.

return {
  name = "observatory-mars-computed",
  about = "rust, with the blue its sunsets actually are",
  floor = 14.4,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#160c09",
  bg_float = "#1f120c",
  bg_sel = "#392213",
  bg_hl = "#542a1a",
  border = "#5e3824",
  bg_search = "#784a2a",
  nontext = "#4d3126",

  -- the text ladder
  text = "#cfc5c0",
  dim = "#b4a7a0",
  punct = "#d2a390",
  comment = "#917665",
  lnr = "#7f5d4a",
  lnr_cur = "#b4a298",

  -- syntax roles
  str = "#b67b55",
  num = "#6882aa",
  typ = "#5f9fd6",
  mod = "#9bae5b",
  prop = "#e0e7ef",
  func = "#f7d1b3",
  kw = "#f99976",
  op = "#9e9593",
  macro = "#f99976",
  esc = "#b67b55",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#9bae5b",
  hint = "#b67b55",
  ok = "#29b16d",
  accent = "#f7d1b3",
  cursearch = "#f99976",
  subst = "#b67b55",
  match = "#edc24a",
  title = "#f7d1b3",
  dir = "#5f9fd6",
  label = "#f99976",
  tag = "#f99976",
  h1 = "#f99976",
  h2 = "#f7d1b3",
  h3 = "#b67b55",
  h4 = "#5f9fd6",
  h5 = "#9bae5b",
  h6 = "#6882aa",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#181d05",
  diff_text = "#2a3309",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#151a05",
  vt_hint = "#231106",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "sand", hue = 24, chroma = 35.4, cr = 5.95 },
    { key = "basalt", hue = 216, chroma = 24.2, cr = 5.36 },
    { key = "sunset", hue = 208, chroma = 34.6, cr = 7.42 },
    { key = "olivine", hue = 74, chroma = 44.7, cr = 8.60 },
    { key = "cap", hue = 212, chroma = 4.8, cr = 16.85 },
    { key = "dust", hue = 26, chroma = 21.8, cr = 14.73 },
    { key = "hematite", hue = 16, chroma = 46.7, cr = 9.85 },
    { key = "shadow", hue = 11, chroma = 3.7, cr = 7.17 },
  },
}

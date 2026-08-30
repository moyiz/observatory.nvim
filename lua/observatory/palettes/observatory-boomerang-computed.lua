-- observatory-boomerang-computed -- one kelvin, which has no color, so this is borrowed light
--
-- Source: the Boomerang Nebula in Centaurus, about 5,000 light years away, and
-- the coldest place anybody has found. A dying star is losing mass in a fast,
-- narrow outflow, and gas that expands that quickly cools: the nebula measures
-- about 1 K, which is colder than the microwave background at 2.725 K. That is
-- how it was established, and the detail is worth the scheme on its own -- the
-- nebula shows up in absorption against the background radiation, the only
-- object known to be cold enough to cast a shadow on the afterglow of the Big
-- Bang.
--
-- A blackbody at 1 K emits nothing an eye or a display could register, and
-- neither does one at 2.725 K, so the subject of this scheme has no color
-- whatsoever. What is visible is entirely borrowed: starlight from the central
-- star, scattered off the dust in the bipolar lobes, which is why the object
-- photographs as a pale blue hourglass. The palette is that reflection at three
-- depths into the lobes, the star seen directly through the thin part of the
-- waist, and the waist itself at two optical depths. Cool, pale, and none of it
-- the nebula's own light. The lobes take the roles that fill a buffer and the
-- waist takes types, which is roughly how the photograph divides.
--
-- It is a quiet palette by construction, in the same territory as
-- `observatory-enceladus`, and for a different reason: scattered light off a
-- warm star is bluer than the star but not by
-- much, so the three lobe rungs sit within a few degrees of each other and
-- separate on purity, the way `observatory-kuiper` does.
--
-- Two things are absent. The temperature is the whole point of the object and
-- cannot appear at all; `observatory-cosmicbackground` is the nearest the collection gets to
-- drawing that part of the spectrum, and it says openly that it is a colormap.
-- And the outflow is mapped in carbon monoxide at millimeter wavelengths, which
-- is where the 1 K was measured and where none of this palette lives.
--
-- Components, and the roles they take:
--
--   lobe_inner   hue 236   16.94 contrast   properties, functions
--   lobe_mid     hue 236   13.28 contrast   keywords, macros, imports
--   lobe_outer   hue 232    8.41 contrast   strings, escapes
--   direct       hue 243    8.35 contrast   modules
--   waist        hue  30    8.04 contrast   types
--   waist_deep   hue  26    4.88 contrast   numbers, operators
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
-- 15.3 Delta E.

return {
  name = "observatory-boomerang-computed",
  about = "one kelvin, which has no color, so this is borrowed light",
  floor = 15.3,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#0c0d1c",
  bg_float = "#11122e",
  bg_sel = "#211f5d",
  bg_hl = "#252e76",
  border = "#353788",
  bg_search = "#4742bd",
  nontext = "#2f345f",

  -- the text ladder
  text = "#bcbcc4",
  dim = "#a9a9b9",
  punct = "#8a8c95",
  comment = "#7878b0",
  lnr = "#5e5f99",
  lnr_cur = "#a3a4ba",

  -- syntax roles
  str = "#96a0e1",
  num = "#c45c0e",
  typ = "#e88929",
  mod = "#a2a0c3",
  prop = "#e5e6f3",
  func = "#e5e6f3",
  kw = "#c8cbf2",
  op = "#c45c0e",
  macro = "#c8cbf2",
  esc = "#96a0e1",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#a2a0c3",
  hint = "#96a0e1",
  ok = "#29b16d",
  accent = "#e5e6f3",
  cursearch = "#c8cbf2",
  subst = "#96a0e1",
  match = "#edc24a",
  title = "#e5e6f3",
  dir = "#e88929",
  label = "#c8cbf2",
  tag = "#c8cbf2",
  h1 = "#c8cbf2",
  h2 = "#e5e6f3",
  h3 = "#96a0e1",
  h4 = "#e88929",
  h5 = "#a2a0c3",
  h6 = "#c45c0e",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#130f53",
  diff_text = "#1f198c",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#100d4a",
  vt_hint = "#0b113c",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "lobe_outer", hue = 232, chroma = 35.9, cr = 8.41 },
    { key = "waist_deep", hue = 26, chroma = 68.5, cr = 4.88 },
    { key = "waist", hue = 30, chroma = 69.2, cr = 8.04 },
    { key = "direct", hue = 243, chroma = 19.4, cr = 8.35 },
    { key = "lobe_inner", hue = 236, chroma = 6.7, cr = 16.94 },
    { key = "lobe_mid", hue = 236, chroma = 20.7, cr = 13.28 },
  },
}

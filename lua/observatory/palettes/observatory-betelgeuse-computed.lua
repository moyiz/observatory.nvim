-- observatory-betelgeuse-computed -- a supergiant, and the dust that dimmed it
--
-- Source: Betelgeuse, an M1-2 Ia supergiant at about 3600 K, and the best
-- resolved star other than the Sun. Hubble imaged its disc in the ultraviolet
-- in 1995 and found it not uniform -- a bright region several thousand degrees
-- hotter than its surroundings. Then in late 2019 it faded by 1.6 magnitudes,
-- the Great Dimming, and the VLT resolved the southern hemisphere going dark:
-- not the star cooling but dust condensing in front of it after a surface mass
-- ejection.
--
-- So the palette is one star at six effective temperatures, from the hot spot
-- at 4200 K down through the photosphere to the 2400 K of the ejected material
-- -- a warm monochrome, because a red supergiant behind its own dust has no
-- second color to offer. The span of the ladder is the dimming: 1.6
-- magnitudes is a factor of 4.4 in flux, and the palette spans a factor of
-- 3.5 in contrast ratio, which is as close as the usable range allows.
--
-- The reason this can be a monochrome and still separate cleanly is molecular.
-- M stars are cool enough for titanium oxide to survive in their atmospheres,
-- and TiO bands eat the blue and green so thoroughly that they define the
-- spectral class. What is left is a red continuum whose purity rises steeply as
-- the star cools -- computed chroma runs from 26 at the hot spot to 69 in the
-- ejecta -- so the rungs differ in saturation as much as in brightness. Under
-- three degrees of hue separate the top of this palette from the bottom, which
-- is as narrow as any scheme here except one: `observatory-trappist`, where
-- seven planets lit by a single red dwarf come out two degrees apart. Two other
-- schemes are as narrow as this one, and both are also stars.
--
-- Compare `observatory-titan` and `observatory-io`, the family's other warm monochromes:
-- those are one hue at several lightnesses, and this is one hue at several
-- purities, which is a different-looking thing for the same reason
-- `observatory-kuiper` is.
--
-- Temperatures, and the roles they take:
--
--   hotspot      hue  28   16.94 contrast   properties
--   photosphere  hue  27   13.61 contrast   functions
--   limb         hue  28   11.04 contrast   modules, types
--   dimmed       hue  28    8.63 contrast   keywords, macros, imports
--   dust         hue  28    7.82 contrast   strings, escapes
--   ejecta       hue  29    4.75 contrast   numbers, operators
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
-- 17.8 Delta E.

return {
  name = "observatory-betelgeuse-computed",
  about = "a supergiant, and the dust that dimmed it",
  floor = 17.8,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#140d08",
  bg_float = "#1d130b",
  bg_sel = "#352412",
  bg_hl = "#4e2e18",
  border = "#573b22",
  bg_search = "#704e27",
  nontext = "#493324",

  -- the text ladder
  text = "#bdbab7",
  dim = "#b4a99f",
  punct = "#7e7772",
  comment = "#a4896d",
  lnr = "#7a6048",
  lnr_cur = "#b3a396",

  -- syntax roles
  str = "#f97a08",
  num = "#b1651d",
  typ = "#f6ac6c",
  mod = "#f6ac6c",
  prop = "#f5e4d5",
  func = "#f3c8a4",
  kw = "#ee8f3c",
  op = "#b1651d",
  macro = "#ee8f3c",
  esc = "#f97a08",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#f6ac6c",
  hint = "#f97a08",
  ok = "#29b16d",
  accent = "#f3c8a4",
  cursearch = "#ee8f3c",
  subst = "#f97a08",
  match = "#edc24a",
  title = "#f3c8a4",
  dir = "#f6ac6c",
  label = "#ee8f3c",
  tag = "#ee8f3c",
  h1 = "#ee8f3c",
  h2 = "#f3c8a4",
  h3 = "#f97a08",
  h4 = "#f6ac6c",
  h5 = "#f6ac6c",
  h6 = "#b1651d",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#2a1707",
  diff_text = "#48280d",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#241406",
  vt_hint = "#211306",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "dust", hue = 28, chroma = 83.4, cr = 7.82 },
    { key = "ejecta", hue = 29, chroma = 56.5, cr = 4.75 },
    { key = "limb", hue = 28, chroma = 48.1, cr = 11.04 },
    { key = "hotspot", hue = 28, chroma = 10.0, cr = 16.94 },
    { key = "photosphere", hue = 27, chroma = 25.9, cr = 13.61 },
    { key = "dimmed", hue = 28, chroma = 64.5, cr = 8.63 },
  },
}

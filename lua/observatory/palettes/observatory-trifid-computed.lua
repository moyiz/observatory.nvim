-- observatory-trifid-computed -- one star, and the three things dust does to its light
--
-- Source: M20, the Trifid Nebula, about 4,000 light years away in Sagittarius,
-- and the textbook case of three kinds of nebula in one object: an emission
-- region ionised by the O7 star HD 164492, a reflection nebula around it, and
-- the dust lanes that cut the whole thing into three lobes and gave it its
-- name. One star supplies all of it.
--
-- Which makes this the only scheme here organised by mechanism rather than by
-- object. Every color is the same 35,000 K star, and what separates them is
-- what happened to the light on the way out. Scattered by dust, it goes as the
-- inverse fourth power of wavelength, so the reflection nebula comes out bluer
-- than the star and takes the top of the ladder. Absorbed by dust, it reddens
-- as the inverse first power, so the lanes at optical depths 2.5 and 4.5 are a
-- tan and an amber at the bottom. Absorbed by hydrogen and re-emitted, it comes
-- back at fixed wavelengths and nowhere else, which is the red of
-- hydrogen-alpha and the green of [O III] in the middle. Three operations on
-- one spectrum, and they land 240 degrees apart. Hydrogen-alpha takes strings,
-- since emission is where most of the object's light comes from, and the lanes
-- take keywords, nearer the share of the frame they actually block.
--
-- The reflection rung is the one to distrust. Rayleigh's fourth power is right
-- for particles much smaller than the wavelength, and interstellar grains are
-- not much smaller -- they are comparable, which is why real reflection nebulae
-- are blue rather than violet. The computed color is therefore bluer and
-- purer than the photographs, and the palette keeps it because the derivation
-- is the point of the scheme; a Mie calculation would move it perhaps twenty
-- degrees towards the photographs.
--
-- `observatory-crab` is the other scheme built on a contrast of mechanisms --
-- synchrotron continuum against line emission -- and `observatory-extinction`
-- takes the reddening operation on its own, at seven depths.
--
-- Mechanisms, and the roles they take:
--
--   reflection   hue 252   13.91 contrast   properties, functions
--   hbeta        hue 184   10.99 contrast   escapes
--   cluster      hue 220   10.29 contrast   modules
--   oiii         hue 152    8.60 contrast   types
--   halpha       hue   0    7.42 contrast   strings
--   lane_thin    hue  32    6.01 contrast   keywords, macros, imports
--   lane_thick   hue  29    4.88 contrast   numbers, operators
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
-- 17.2 Delta E.

return {
  name = "observatory-trifid-computed",
  about = "one star, and the three things dust does to its light",
  floor = 17.2,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#0e0d1d",
  bg_float = "#15112d",
  bg_sel = "#2b1d58",
  bg_hl = "#30277d",
  border = "#413485",
  bg_search = "#5a3fb4",
  nontext = "#363163",

  -- the text ladder
  text = "#d2d1d5",
  dim = "#aba9b8",
  punct = "#918acd",
  comment = "#797683",
  lnr = "#675d98",
  lnr_cur = "#a6a4ba",

  -- syntax roles
  str = "#ec7676",
  num = "#b5661b",
  typ = "#0cbe6c",
  mod = "#a8b6d2",
  prop = "#d6ccfd",
  func = "#d6ccfd",
  kw = "#b27f44",
  op = "#b5661b",
  macro = "#b27f44",
  esc = "#57ccd4",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#a8b6d2",
  hint = "#ec7676",
  ok = "#2c9b63",
  accent = "#d6ccfd",
  cursearch = "#b27f44",
  subst = "#ec7676",
  match = "#edc24a",
  title = "#d6ccfd",
  dir = "#0cbe6c",
  label = "#b27f44",
  tag = "#b27f44",
  h1 = "#b27f44",
  h2 = "#d6ccfd",
  h3 = "#ec7676",
  h4 = "#0cbe6c",
  h5 = "#a8b6d2",
  h6 = "#b5661b",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#0a1a3a",
  diff_text = "#112d63",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#091632",
  vt_hint = "#300808",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "halpha", hue = 0, chroma = 50.2, cr = 7.42 },
    { key = "lane_thick", hue = 29, chroma = 58.5, cr = 4.88 },
    { key = "oiii", hue = 152, chroma = 66.0, cr = 8.60 },
    { key = "cluster", hue = 220, chroma = 15.8, cr = 10.29 },
    { key = "reflection", hue = 252, chroma = 26.2, cr = 13.91 },
    { key = "lane_thin", hue = 32, chroma = 41.6, cr = 6.01 },
    { key = "hbeta", hue = 184, chroma = 33.4, cr = 10.99 },
  },
}

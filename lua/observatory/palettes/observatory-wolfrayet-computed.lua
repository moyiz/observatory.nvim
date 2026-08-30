-- observatory-wolfrayet-computed -- the hottest stars there are, and none of it is the continuum
--
-- Source: Wolf-Rayet stars -- massive stars that have lost their hydrogen
-- envelopes and are burning their way through the ash, with surface
-- temperatures from 25,000 K to well over 100,000 and winds leaving at one to
-- three thousand kilometers a second. Their spectra are unlike anything else
-- on the sky: instead of absorption lines they show broad emission, from the
-- wind rather than the surface, and they are classified by which element does
-- the emitting -- nitrogen for WN, carbon for WC, oxygen for WO. The palette is
-- those lines: O VI at 381.1 nm, N IV at 405.8, He II at 468.6, C III at 569.6,
-- C IV at 580.1, He I at 587.6, on a continuum computed at 50,000 K.
--
-- The reason to build it is that at these temperatures the continuum has
-- nothing left to say. The Planckian locus stops turning above about 10,000 K,
-- so a 50,000 K star and a 200,000 K one are the same blue-white to within a
-- degree of hue, and a scheme built on stellar temperature would be a
-- monochrome -- which is exactly what `observatory-sirius` and
-- `observatory-cepheid` are. The wind is the way out. Every hue in this palette
-- except the top rung comes from an atom in an outflowing shell, and the result
-- spans 225 degrees where the star's own color spans none.
--
-- These are not lines, though the wavelengths are quoted as if they were. Gas
-- moving at two thousand kilometers a second broadens its emission by tens of
-- angstroms, so what the spectrograph records are humps several nanometers
-- wide, wide enough that the two carbon features here each cover a few degrees
-- of hue on their own. Each color is the center of a band, not a wavelength.
--
-- The palette also has a hole in it, in the green, and the hole is real: there
-- is a gap between the blue and violet lines of the highly ionised species and
-- the yellow ones of carbon and helium, which is why nothing here sits between
-- 70 and 200 degrees. `observatory-albireo` explains at length why no star is
-- green; these stars are not green either, and for a second, unrelated reason.
--
-- Lines, and the roles they take:
--
--   continuum    hue 222   16.48 contrast   properties
--   he_ii        hue 202   11.73 contrast   functions
--   c_iv         hue  60   11.05 contrast   keywords
--   n_iv         hue 278    9.19 contrast   types
--   c_iii        hue  67    7.55 contrast   modules, strings
--   o_vi         hue 298    6.18 contrast   macros, imports, escapes
--   he_i         hue  54    4.91 contrast   numbers, operators
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
-- 15.7 Delta E.

return {
  name = "observatory-wolfrayet-computed",
  about = "the hottest stars there are, and none of it is the continuum",
  floor = 15.7,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#090f14",
  bg_float = "#0c161f",
  bg_sel = "#162841",
  bg_hl = "#193850",
  border = "#254360",
  bg_search = "#305687",
  nontext = "#253a4a",

  -- the text ladder
  text = "#bec1c4",
  dim = "#a3abb4",
  punct = "#709ec2",
  comment = "#6d7988",
  lnr = "#4f6780",
  lnr_cur = "#9aa8b3",

  -- syntax roles
  str = "#95a32b",
  num = "#857c28",
  typ = "#cc97eb",
  mod = "#95a32b",
  prop = "#dbe4f9",
  func = "#9ac8e2",
  kw = "#c2c22d",
  op = "#857c28",
  macro = "#cf5ed2",
  esc = "#cf5ed2",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#95a32b",
  hint = "#95a32b",
  ok = "#29b16d",
  accent = "#9ac8e2",
  cursearch = "#c2c22d",
  subst = "#95a32b",
  match = "#edc24a",
  title = "#9ac8e2",
  dir = "#cc97eb",
  label = "#c2c22d",
  tag = "#c2c22d",
  h1 = "#c2c22d",
  h2 = "#9ac8e2",
  h3 = "#95a32b",
  h4 = "#cc97eb",
  h5 = "#95a32b",
  h6 = "#857c28",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#1a1c05",
  diff_text = "#2e3309",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#171a05",
  vt_hint = "#151704",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "c_iii", hue = 67, chroma = 60.4, cr = 7.55 },
    { key = "he_i", hue = 54, chroma = 45.6, cr = 4.91 },
    { key = "n_iv", hue = 278, chroma = 49.2, cr = 9.19 },
    { key = "continuum", hue = 222, chroma = 11.3, cr = 16.48 },
    { key = "he_ii", hue = 202, chroma = 19.9, cr = 11.73 },
    { key = "c_iv", hue = 60, chroma = 70.8, cr = 11.05 },
    { key = "o_vi", hue = 298, chroma = 72.1, cr = 6.18 },
  },
}

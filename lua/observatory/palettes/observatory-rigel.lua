-- observatory-rigel -- a blue supergiant, and the dust it lights
--
-- Source: Rigel, beta Orionis, a B8 Ia supergiant at 12,100 K, about 860 light
-- years away and roughly 120,000 times the Sun's luminosity -- the bluest
-- first-magnitude star and the one that anchors the hot end of
-- `observatory-orion`. Its photosphere comes through the Planck curve, and the
-- three features that a B8 spectrum is recognised by come through Bruton's
-- conversion: neutral helium at 447.1 nm, hydrogen-beta at 486.1, and the
-- ionised silicon pair near 634.7. Hydrogen-alpha is in the palette too, and
-- in Rigel it is partly in emission -- the star is losing about a ten-millionth
-- of a solar mass a year and the wind fills the line in.
--
-- The other half of the scheme is what the star does to its surroundings.
-- Rigel lights IC 2118, the Witch Head Nebula, from about 40 light years away:
-- a reflection nebula, so its blue is Rigel's own light scattered off dust
-- grains that scatter short wavelengths more efficiently than long, which is
-- the same physics that makes Pluto's haze blue in `observatory-pluto` and the
-- late echoes blue in `observatory-v838monocerotis`. The dust that is doing the
-- scattering is warm and brown where it is dense enough to be seen in its own
-- right, and that is the bottom rung.
--
-- So the palette is one hot star, its three diagnostic lines, and the cloud it
-- illuminates at second hand -- blue-white at the top, a cyan and a scattered
-- blue in the middle, and the two reds of silicon and hydrogen underneath. The
-- nebular blue and the dust brown are photographic rather than computed:
-- scattered starlight has no single wavelength to convert, so they are the
-- colors the exposures show, the same compromise `observatory-etacarinae`
-- makes for its lobes.
--
-- Rigel is a variable, by a tenth of a magnitude and irregularly, for the same
-- reason `observatory-deneb` is: non-radial pulsations in a supergiant
-- envelope with no clean period to them. Nothing in this palette moves with
-- it, which is the honest limit of building a scheme from a spectral type.
--
-- Star, lines and nebula, and the roles they take:
--
--   photosphere  hue 221   16.92 contrast   properties
--   h_beta       hue 184   11.40 contrast   modules
--   he_i         hue 228   11.32 contrast   functions
--   witchhead    hue 228    9.12 contrast   types
--   si_ii        hue  14    8.04 contrast   keywords, macros, imports
--   h_alpha      hue   0    6.61 contrast   strings, escapes
--   dust         hue  22    4.81 contrast   numbers, operators
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
  name = "observatory-rigel",
  about = "a blue supergiant, and the dust it lights",
  floor = 16.7,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#0a0e16",
  bg_float = "#0e1524",
  bg_sel = "#19254b",
  bg_hl = "#1d355d",
  border = "#2a3f6d",
  bg_search = "#37509d",
  nontext = "#293852",

  -- the text ladder
  text = "#bbbdc2",
  dim = "#a5aab6",
  punct = "#7e838a",
  comment = "#7385b2",
  lnr = "#54658a",
  lnr_cur = "#9ea7b6",

  -- syntax roles
  str = "#e16d6d",
  num = "#ac6840",
  typ = "#97a8eb",
  mod = "#73cdd3",
  prop = "#dee7fa",
  func = "#b3bde4",
  kw = "#de8b72",
  op = "#ac6840",
  macro = "#de8b72",
  esc = "#e16d6d",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#73cdd3",
  hint = "#e16d6d",
  ok = "#29b16d",
  accent = "#b3bde4",
  cursearch = "#de8b72",
  subst = "#e16d6d",
  match = "#edc24a",
  title = "#b3bde4",
  dir = "#97a8eb",
  label = "#de8b72",
  tag = "#de8b72",
  h1 = "#de8b72",
  h2 = "#b3bde4",
  h3 = "#e16d6d",
  h4 = "#97a8eb",
  h5 = "#73cdd3",
  h6 = "#ac6840",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#061f20",
  diff_text = "#0a3538",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#051b1c",
  vt_hint = "#300808",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "h_alpha", hue = 0, chroma = 50.0, cr = 6.61 },
    { key = "dust", hue = 22, chroma = 41.1, cr = 4.81 },
    { key = "witchhead", hue = 228, chroma = 36.9, cr = 9.12 },
    { key = "h_beta", hue = 184, chroma = 27.8, cr = 11.40 },
    { key = "photosphere", hue = 221, chroma = 10.2, cr = 16.92 },
    { key = "he_i", hue = 228, chroma = 21.1, cr = 11.32 },
    { key = "si_ii", hue = 14, chroma = 39.3, cr = 8.04 },
  },
}

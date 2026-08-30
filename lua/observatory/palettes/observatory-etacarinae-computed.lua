-- observatory-etacarinae-computed -- the Homunculus, and the star inside it
--
-- Source: Eta Carinae and the Homunculus Nebula around it -- one of the most
-- photographed objects Hubble has. The star is a luminous blue variable of
-- roughly 15000 K and five million solar luminosities, and in the 1840s it
-- threw off something like ten solar masses in the Great Eruption, briefly
-- becoming the second brightest star in the sky. That ejecta is the nebula:
-- two bipolar dust lobes, an equatorial skirt of debris between them, the
-- nitrogen-rich filaments the eruption enriched, and the Weigelt knots.
--
-- The palette is that structure. Blue-white for the star, orange-brown for
-- the dust lobes, a pale tan for the skirt, and the red of [N II] for the
-- filaments -- the nitrogen line matters here because the ejecta is unusually
-- nitrogen-rich, which is how the eruption's chemistry was established.
--
-- One star and one warm dust field means most of the scheme is warm with a
-- single cool value at the top, so properties are the only genuinely blue
-- thing on screen -- the arrangement of the object, where a hot star sits
-- inside its own debris. The dust hues are photographic rather than computed:
-- reflection and thermal emission from silicate dust have no single
-- wavelength to convert, so these are the colors the Hubble exposures show.
--
-- Components, and the roles they take:
--
--   star         hue 220   15.66 contrast   properties
--   lobe         hue  32   15.06 contrast   functions
--   skirt        hue  40    9.53 contrast   modules
--   weigelt      hue  20    9.25 contrast   types
--   n_ii         hue 356    8.80 contrast   keywords, macros, imports
--   filament     hue  45    4.83 contrast   strings, escapes
--   dustlane     hue  24    4.78 contrast   numbers, operators
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
-- 20.7 Delta E.

return {
  name = "observatory-etacarinae-computed",
  about = "the Homunculus, and the star inside it",
  floor = 20.7,

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
  text = "#c1bdba",
  dim = "#b4a99f",
  punct = "#b7977f",
  comment = "#7d7872",
  lnr = "#7a6047",
  lnr_cur = "#b3a496",

  -- syntax roles
  str = "#8e772f",
  num = "#a76a41",
  typ = "#eb986f",
  mod = "#c9ab6d",
  prop = "#d1dffb",
  func = "#f2d6b5",
  kw = "#ec8d93",
  op = "#a76a41",
  macro = "#ec8d93",
  esc = "#8e772f",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#c9ab6d",
  hint = "#8e772f",
  ok = "#29b16d",
  accent = "#f2d6b5",
  cursearch = "#ec8d93",
  subst = "#8e772f",
  match = "#edc24a",
  title = "#f2d6b5",
  dir = "#eb986f",
  label = "#ec8d93",
  tag = "#ec8d93",
  h1 = "#ec8d93",
  h2 = "#f2d6b5",
  h3 = "#8e772f",
  h4 = "#eb986f",
  h5 = "#c9ab6d",
  h6 = "#a76a41",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#231906",
  diff_text = "#3d2d0b",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#1f1605",
  vt_hint = "#1b1505",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "filament", hue = 45, chroma = 41.7, cr = 4.83 },
    { key = "dustlane", hue = 24, chroma = 38.6, cr = 4.78 },
    { key = "weigelt", hue = 20, chroma = 43.6, cr = 9.25 },
    { key = "skirt", hue = 40, chroma = 36.0, cr = 9.53 },
    { key = "star", hue = 220, chroma = 15.2, cr = 15.66 },
    { key = "lobe", hue = 32, chroma = 20.4, cr = 15.06 },
    { key = "n_ii", hue = 356, chroma = 38.7, cr = 8.80 },
  },
}

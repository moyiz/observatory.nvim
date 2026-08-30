-- observatory-v838monocerotis-computed -- one flash, seen at four delays
--
-- Source: V838 Monocerotis, which brightened by ten magnitudes in January
-- 2002 and then cooled into an L supergiant near 2500 K, and the light echo
-- Hubble photographed around it from that May until 2006. An echo is not an
-- expanding shell of gas: it is a single flash of light sweeping outward
-- through dust that was already there, so each image shows a slice of that
-- dust at a different light-travel delay from the star. Nothing is moving
-- except the illumination.
--
-- The ladder is therefore time. The top rung is the outburst itself, deep
-- orange-red because a 2500 K photosphere is, and each rung below is the echo
-- a year or two later -- fainter, since the flash is lighting more dust from
-- the same fixed energy, and bluer, since dust scatters short wavelengths more
-- efficiently than long. That is the same physics that makes Pluto's haze blue
-- in `observatory-pluto` and reflection nebulae blue everywhere.
--
-- So the palette traverses hue for a physical reason: warm at the source and
-- progressively cooler with distance from it, which is what the echo does. The
-- specific hues are photographic -- scattered starlight has no single
-- wavelength and the Hubble frames were taken through broadband filters -- but
-- the direction of the shift is real and measured.
--
-- The top rung stops at a contrast of about 15 rather than the 17 the family
-- usually reaches, and it is the outburst that stops it: a 2500 K photosphere
-- is a deep orange-red, and deep orange-red has nowhere bright to go. Normal
-- text therefore sits closer to the top of the ladder here than elsewhere.
--
-- Delays, and the roles they take:
--
--   outburst     hue  28   16.65 contrast   properties
--   echo_2003    hue 209   12.23 contrast   modules
--   echo_2002    hue  41    9.89 contrast   functions
--   echo_2004    hue 216    8.76 contrast   types
--   echo_2006    hue 222    7.77 contrast   strings, escapes
--   shell        hue  26    5.68 contrast   keywords, macros, imports
--   void         hue 220    4.79 contrast   numbers, operators
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
-- 16.3 Delta E.

return {
  name = "observatory-v838monocerotis-computed",
  about = "one flash, seen at four delays",
  floor = 16.3,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#090f15",
  bg_float = "#0d1622",
  bg_sel = "#172746",
  bg_hl = "#1b3756",
  border = "#284167",
  bg_search = "#335393",
  nontext = "#26394e",

  -- the text ladder
  text = "#c1c3c6",
  dim = "#a4acb6",
  punct = "#8296ad",
  comment = "#607ba9",
  lnr = "#516687",
  lnr_cur = "#9ca7b5",

  -- syntax roles
  str = "#799ceb",
  num = "#4876d1",
  typ = "#88a9dc",
  mod = "#abc9e6",
  prop = "#fde0c6",
  func = "#bcb199",
  kw = "#bf7236",
  op = "#4876d1",
  macro = "#bf7236",
  esc = "#799ceb",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#abc9e6",
  hint = "#799ceb",
  ok = "#29b16d",
  accent = "#bcb199",
  cursearch = "#bf7236",
  subst = "#799ceb",
  match = "#edc24a",
  title = "#bcb199",
  dir = "#88a9dc",
  label = "#bf7236",
  tag = "#bf7236",
  h1 = "#bf7236",
  h2 = "#bcb199",
  h3 = "#799ceb",
  h4 = "#88a9dc",
  h5 = "#abc9e6",
  h6 = "#4876d1",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#081d30",
  diff_text = "#0e3152",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#071829",
  vt_hint = "#081430",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "echo_2006", hue = 222, chroma = 44.5, cr = 7.77 },
    { key = "void", hue = 220, chroma = 53.4, cr = 4.79 },
    { key = "echo_2004", hue = 216, chroma = 29.4, cr = 8.76 },
    { key = "echo_2003", hue = 209, chroma = 18.0, cr = 12.23 },
    { key = "outburst", hue = 28, chroma = 17.5, cr = 16.65 },
    { key = "echo_2002", hue = 41, chroma = 13.7, cr = 9.89 },
    { key = "shell", hue = 26, chroma = 51.6, cr = 5.68 },
  },
}

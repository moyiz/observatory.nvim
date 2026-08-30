-- observatory-eventhorizon-computed -- the colormap the black hole pictures used
--
-- Source: the Event Horizon Telescope images of M87* and Sagittarius A*,
-- which are interferometry at 1.3 millimeters. Radio has no color. The
-- orange everyone remembers is a sequential colormap applied to brightness
-- temperature, running black through deep red and orange up to white.
--
-- So this is a colormap rather than an object, which makes it the third
-- honest false-color scheme in the family after `observatory-cosmicbackground` and
-- `observatory-hubble`. It differs from those in structure: the CMB scheme is
-- diverging, a neutral middle with two directions away from it, while this is
-- sequential -- one ordered ramp with hue and lightness climbing together,
-- the way a heat scale works.
--
-- Because the two climb together this is the most strongly ordered palette
-- here: a role's position in the ramp can be read off its color. It also
-- means the whole thing is warm, the only cool values being chrome. Compare
-- `observatory-io` and `observatory-titan`, warm schemes where the hue stays put and only
-- lightness moves; here the hue rotates sixty degrees on the way up.
--
-- Ramp steps, and the roles they take:
--
--   peak         hue  54   17.00 contrast   properties
--   yellow       hue  52   13.96 contrast   functions
--   amber        hue  44   12.60 contrast   modules
--   orange       hue  32    9.16 contrast   types
--   ember        hue  20    7.44 contrast   strings, escapes
--   deep         hue   0    7.27 contrast   numbers
--   floor        hue 356    4.77 contrast   operators
--   red          hue   8    4.72 contrast   keywords, macros, imports
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
-- 16.9 Delta E.

return {
  name = "observatory-eventhorizon-computed",
  about = "the colormap the black hole pictures used",
  floor = 16.9,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#120d08",
  bg_float = "#1a140a",
  bg_sel = "#312610",
  bg_hl = "#473117",
  border = "#513d20",
  bg_search = "#685225",
  nontext = "#453422",

  -- the text ladder
  text = "#bfbdb9",
  dim = "#b2aa9d",
  punct = "#a89076",
  comment = "#b08f54",
  lnr = "#766245",
  lnr_cur = "#b0a493",

  -- syntax roles
  str = "#ee793e",
  num = "#e97575",
  typ = "#eb993d",
  mod = "#ecc457",
  prop = "#eae8d5",
  func = "#dcd49f",
  kw = "#e92406",
  op = "#b16166",
  macro = "#e92406",
  esc = "#ee793e",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#e8ae10",
  info = "#ecc457",
  hint = "#ee793e",
  ok = "#29b16d",
  accent = "#dcd49f",
  cursearch = "#e92406",
  subst = "#ee793e",
  match = "#e8ae10",
  title = "#dcd49f",
  dir = "#eb993d",
  label = "#e92406",
  tag = "#e92406",
  h1 = "#e92406",
  h2 = "#dcd49f",
  h3 = "#ee793e",
  h4 = "#eb993d",
  h5 = "#ecc457",
  h6 = "#e97575",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#221b06",
  diff_text = "#3b2e0a",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#1e1805",
  vt_hint = "#241106",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "ember", hue = 20, chroma = 65.9, cr = 7.44 },
    { key = "deep", hue = 0, chroma = 49.5, cr = 7.27 },
    { key = "orange", hue = 32, chroma = 63.0, cr = 9.16 },
    { key = "amber", hue = 44, chroma = 58.6, cr = 12.60 },
    { key = "peak", hue = 54, chroma = 9.8, cr = 17.00 },
    { key = "yellow", hue = 52, chroma = 27.8, cr = 13.96 },
    { key = "red", hue = 8, chroma = 93.7, cr = 4.72 },
    { key = "floor", hue = 356, chroma = 34.8, cr = 4.77 },
  },
}

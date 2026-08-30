-- observatory-pluto-computed -- nitrogen ice, tholin red, and a blue sky
--
-- Source: New Horizons. Sputnik Planitia is a basin of nitrogen ice, pale
-- cream; Cthulhu Macula is the dark red belt of tholins along the equator;
-- the mountains are water ice, gray-blue and, at forty kelvin, stiff enough
-- to hold a shape. And the departure image, taken looking back with the Sun
-- behind the planet, showed the haze layers to be blue.
--
-- That blue is the payoff. Tholins are red, so a tholin world ought to be a
-- warm monochrome like `observatory-titan` -- but Pluto's haze particles are small
-- enough to scatter short wavelengths, exactly as our own sky does, so there
-- is a blue sky over a red surface. Strings take Cthulhu Macula, the dark red
-- band along the equator and the largest single unit on the hemisphere New
-- Horizons photographed, so what fills a buffer is what fills the view.
-- Types take the haze, which puts the one
-- genuinely cool color on a role that recurs throughout a buffer.
--
-- The palette runs warm at the top and bottom with the haze in the middle,
-- which is roughly how the world is arranged. `observatory-charon` is the
-- companion: the same tholins, arrived second-hand, on a body with no
-- atmosphere to make anything blue.
--
-- Units, and the roles they take:
--
--   sputnik      hue  47   16.96 contrast   properties
--   methane      hue  52   12.60 contrast   functions
--   haze         hue 204   10.38 contrast   types
--   cthulhu      hue  16    8.59 contrast   strings, escapes
--   water_ice    hue 209    7.32 contrast   keywords, macros, imports
--   tombaugh     hue  36    6.99 contrast   modules
--   tartarus     hue  26    5.25 contrast   numbers
--   shadow       hue 200    4.95 contrast   operators
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
-- 16.2 Delta E.

return {
  name = "observatory-pluto-computed",
  about = "nitrogen ice, tholin red, and a blue sky",
  floor = 16.2,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#120e08",
  bg_float = "#1a150a",
  bg_sel = "#302710",
  bg_hl = "#453216",
  border = "#4e3f1f",
  bg_search = "#645223",
  nontext = "#433521",

  -- the text ladder
  text = "#c1beba",
  dim = "#b2aa9c",
  punct = "#a69173",
  comment = "#7b776f",
  lnr = "#736344",
  lnr_cur = "#b0a591",

  -- syntax roles
  str = "#dd9479",
  num = "#b56e37",
  typ = "#8fbcdb",
  mod = "#b68e54",
  prop = "#ece7d5",
  func = "#d7ca77",
  kw = "#8e9aa5",
  op = "#528198",
  macro = "#8e9aa5",
  esc = "#dd9479",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#b68e54",
  hint = "#dd9479",
  ok = "#29b16d",
  accent = "#d7ca77",
  cursearch = "#8e9aa5",
  subst = "#dd9479",
  match = "#edc24a",
  title = "#d7ca77",
  dir = "#8fbcdb",
  label = "#8e9aa5",
  tag = "#8e9aa5",
  h1 = "#8e9aa5",
  h2 = "#d7ca77",
  h3 = "#dd9479",
  h4 = "#8fbcdb",
  h5 = "#b68e54",
  h6 = "#b56e37",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#251907",
  diff_text = "#422b0c",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#211606",
  vt_hint = "#271007",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "cthulhu", hue = 16, chroma = 35.3, cr = 8.59 },
    { key = "tartarus", hue = 26, chroma = 47.8, cr = 5.25 },
    { key = "haze", hue = 204, chroma = 21.6, cr = 10.38 },
    { key = "tombaugh", hue = 36, chroma = 37.3, cr = 6.99 },
    { key = "sputnik", hue = 47, chroma = 9.4, cr = 16.96 },
    { key = "methane", hue = 52, chroma = 43.5, cr = 12.60 },
    { key = "water_ice", hue = 209, chroma = 7.5, cr = 7.32 },
    { key = "shadow", hue = 200, chroma = 19.8, cr = 4.95 },
  },
}

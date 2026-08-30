-- observatory-saturn-computed -- butterscotch, with the blue winter hemisphere
--
-- Source: Cassini. The bands are the butterscotch everyone knows, the rings
-- are dirty water ice, and the northern hemisphere was genuinely blue in the
-- mission's early years -- ring shadow and unusually clear air let Rayleigh
-- scattering show through, in a hemisphere then in winter.
--
-- Saturn is therefore the one gas giant with a documented cool half, and
-- that is what keeps this from being a second Venus. The cool half is a
-- hemisphere and a polar cap rather than the planet, though, so the
-- butterscotch takes strings and the bulk of a buffer with them, the
-- hexagonal polar vortex takes types, and the blue of the winter hemisphere
-- takes numbers.
--
-- Storms supply keywords: Saturn's great white spots erupt roughly once a
-- Saturnian year and are warmer and more saturated than the bands they tear
-- through. The ring white is the brightest value at 16.9, and it is on
-- properties, the second most frequent accent in real code -- the brightest
-- and least chromatic thing carrying one of the most repeated roles.
--
-- Units, and the roles they take:
--
--   ring         hue  49   16.94 contrast   properties
--   butterscotch hue  46   12.75 contrast   strings, escapes
--   band         hue  38   10.43 contrast   modules
--   cassini      hue  42    8.77 contrast   functions
--   hexagon      hue 202    7.46 contrast   types
--   winter       hue 220    6.27 contrast   numbers
--   storm        hue  24    5.40 contrast   keywords, macros, imports
--   division     hue  40    4.75 contrast   operators
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
-- 11.8 Delta E.

return {
  name = "observatory-saturn-computed",
  about = "butterscotch, with the blue winter hemisphere",
  floor = 11.8,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#120e08",
  bg_float = "#19140a",
  bg_sel = "#2f2710",
  bg_hl = "#433315",
  border = "#4d3f1e",
  bg_search = "#625423",
  nontext = "#423620",

  -- the text ladder
  text = "#cac8c4",
  dim = "#b1ac9c",
  punct = "#7e776b",
  comment = "#9b9991",
  lnr = "#726343",
  lnr_cur = "#b0a691",

  -- syntax roles
  str = "#e2c875",
  num = "#6d8ccc",
  typ = "#54a2d0",
  mod = "#d4b276",
  prop = "#eae7da",
  func = "#b7a67f",
  kw = "#c76726",
  op = "#877653",
  macro = "#c76726",
  esc = "#e2c875",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#d4b276",
  hint = "#e2c875",
  ok = "#29b16d",
  accent = "#b7a67f",
  cursearch = "#c76726",
  subst = "#e2c875",
  match = "#edc24a",
  title = "#b7a67f",
  dir = "#54a2d0",
  label = "#c76726",
  tag = "#c76726",
  h1 = "#c76726",
  h2 = "#b7a67f",
  h3 = "#e2c875",
  h4 = "#54a2d0",
  h5 = "#d4b276",
  h6 = "#6d8ccc",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#241906",
  diff_text = "#3f2d0b",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#201606",
  vt_hint = "#1b1505",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "butterscotch", hue = 46, chroma = 44.7, cr = 12.75 },
    { key = "winter", hue = 220, chroma = 37.0, cr = 6.27 },
    { key = "hexagon", hue = 202, chroma = 32.4, cr = 7.46 },
    { key = "band", hue = 38, chroma = 35.5, cr = 10.43 },
    { key = "ring", hue = 49, chroma = 6.8, cr = 16.94 },
    { key = "cassini", hue = 42, chroma = 22.5, cr = 8.77 },
    { key = "storm", hue = 24, chroma = 61.4, cr = 5.40 },
    { key = "division", hue = 40, chroma = 21.7, cr = 4.75 },
  },
}

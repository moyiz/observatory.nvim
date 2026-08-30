-- observatory-cosmicbackgroundlegacy -- the last word on the oldest light, in eight colors
--
-- Source: the Planck Legacy temperature map, released 17 July 2018 from the
-- mission's final data, superseding the 2013 map that `observatory-cosmicbackground` is
-- sampled from. The oval carries temperature differences of about a hundred
-- microkelvin against a mean of 2.725 kelvin, and the colors are a divergent
-- false scale for cold and hot: the sky itself is one nearly featureless shade
-- of microwave. The light left when the universe was 380,000 years old and
-- hydrogen turned neutral. The statistics of the mottling are what fix the age
-- of the universe at 13.8 billion years and the geometry of space as flat to
-- within a fraction of a per cent.
--
-- Image: Cosmic microwave background, Planck 2018 Legacy temperature map -- Planck, LFI and HFI all-sky temperature map (2018 Legacy release).
-- ESA and the Planck Collaboration.
-- Sampled at 4672 x 2360; 75% of the frame carried light.
--
-- The legacy scale is broader than the 2013 one and the map is cleaner, so this
-- palette runs across eight colors where its sibling runs on fewer: sage and
-- cyan on the cold side, gold and amber on the hot, spread evenly enough that
-- no single one dominates. It is the widest hue span of any scheme here, which
-- is a property of a color scale rather than of the sky.
-- Both maps are shipped because both are the canonical Planck image, depending
-- on which year you learned it.
--
-- Roles follow area. Sibling of `observatory-cosmicbackground`.
--
-- What is in the frame, and the roles it takes:
--
--   sage          hue  56  16.90 contrast  15.6% of frame   keywords, types
--   cyan          hue 180  16.63 contrast   9.7% of frame   macros, imports
--   cold          hue 132  15.44 contrast  17.0% of frame   strings, functions
--   hot           hue  43  14.37 contrast  12.8% of frame   operators
--   cool          hue 193  12.51 contrast  18.2% of frame   properties
--   hottest       hue  33  11.36 contrast   7.6% of frame   modules
--   warm          hue  39  10.79 contrast  13.2% of frame   numbers
--   deep          hue  23   4.69 contrast   5.9% of frame   escapes
--
-- Hues here are the picture's, taken from it unaltered, since they are what
-- makes a palette recognisable as its subject. Each color's purity was then
-- solved for rather than chosen -- the saturation is whatever puts the frame's
-- own chroma on screen at that rung -- and saturation and contrast were both
-- allowed to move within a narrow band until every pair of colors that can
-- appear together, including every pair with the error, warning and git
-- colors that sit beside code in the sign column, cleared the family's
-- separation limit.
--
-- Construction follows the rest of the family: every foreground is solved by
-- binary search for an exact contrast ratio against #000000. What differs is
-- purity, which is solved rather than maximised -- each accent carries the
-- chroma its own patch of the frame carries, as far as the display allows --
-- and the closest pair of adjacent-capable roles sits at 17.3 Delta E.

return {
  name = "observatory-cosmicbackgroundlegacy",
  about = "the last word on the oldest light, in eight colors",
  floor = 17.3,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#071011",
  bg_float = "#0a171a",
  bg_sel = "#122b35",
  bg_hl = "#153a42",
  border = "#1f4651",
  bg_search = "#275a70",
  nontext = "#203b41",

  -- the text ladder
  text = "#c4c8c9",
  dim = "#9daeb2",
  punct = "#87a6ac",
  comment = "#71797d",
  lnr = "#4a6973",
  lnr_cur = "#92abb0",

  -- syntax roles
  str = "#bee7c6",
  num = "#f9aa18",
  typ = "#ede9b2",
  mod = "#fbaf53",
  prop = "#7dd4ed",
  func = "#bee7c6",
  kw = "#ede9b2",
  op = "#f4d27f",
  macro = "#b8efef",
  esc = "#c95206",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#fbaf53",
  hint = "#bee7c6",
  ok = "#29b16d",
  accent = "#bee7c6",
  cursearch = "#ede9b2",
  subst = "#bee7c6",
  match = "#edc24a",
  title = "#bee7c6",
  dir = "#ede9b2",
  label = "#ede9b2",
  tag = "#ede9b2",
  h1 = "#ede9b2",
  h2 = "#bee7c6",
  h3 = "#bee7c6",
  h4 = "#ede9b2",
  h5 = "#fbaf53",
  h6 = "#f9aa18",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#271907",
  diff_text = "#432a0c",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#221506",
  vt_hint = "#051b09",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "cold", hue = 132, chroma = 22.8, cr = 15.44 },
    { key = "warm", hue = 39, chroma = 78.0, cr = 10.79 },
    { key = "sage", hue = 56, chroma = 28.2, cr = 16.90 },
    { key = "hottest", hue = 33, chroma = 60.1, cr = 11.36 },
    { key = "cool", hue = 193, chroma = 28.4, cr = 12.51 },
    { key = "hot", hue = 43, chroma = 45.3, cr = 14.37 },
    { key = "cyan", hue = 180, chroma = 18.2, cr = 16.63 },
    { key = "deep", hue = 23, chroma = 73.6, cr = 4.69 },
  },
}

-- observatory-mira -- the first variable, and the band that exaggerates it
--
-- Source: Mira, omicron Ceti, an M7 III pulsating giant between 2,918 K and
-- 3,192 K over a period of 332 days -- the first star other than a nova ever
-- recognised as variable, by David Fabricius in 1596, and the star every
-- long-period variable is now named after. Four rungs sample its cycle through
-- the Planck curve, ordered by brightness. Two more come from things around it:
-- the companion, Mira B, a hot accreting object of order 10,000 K, and the
-- thirteen-light-year hydrogen tail GALEX found streaming behind the star in
-- 2007, which is drawn at the blue that survey's far-ultraviolet channel is
-- always mapped to.
--
-- The bottom rung is the reason the scheme is worth building. Mira runs from
-- magnitude 2.0 to 10.1 and back -- a factor of about 1,700 in visible light,
-- the largest swing of any star an unaided eye can find -- while its total
-- output changes by something closer to a factor of two. The difference is
-- titanium oxide. As the star cools through the cycle, TiO forms in its
-- atmosphere and absorbs the blue and green so heavily that the visual band
-- collapses, while most of the star's light, which is infrared and invisible
-- anyway, carries on much as before. So the last rung is the absorber rather
-- than the star: the deep red left over when TiO has taken everything else.
--
-- Four phases spanning 274 kelvin move the hue by less than a degree, so the
-- cycle itself is a lightness-and-purity ladder, exactly as in
-- `observatory-cepheid` and for the same reason. What keeps this palette from
-- being another warm monochrome like `observatory-betelgeuse` is that two of
-- its seven colors are not the star: the companion is blue-white and the
-- ultraviolet tail is blue, so the scheme has a cool half that a red giant on
-- its own cannot supply.
--
-- The tail's blue is a false color and is used knowingly. Far-ultraviolet
-- light has no hue, and GALEX composites put its short channel in the blue
-- channel by convention; the palette follows the convention rather than
-- inventing a color for light nobody can see, which is the same choice
-- `observatory-nervia` makes for the Sun's gold.
--
-- Phases and neighbours, and the roles they take:
--
--   phase_max    hue  28   16.82 contrast   properties
--   companion    hue 222   13.46 contrast   strings, escapes
--   phase_rise   hue  28   12.80 contrast   functions
--   phase_mean   hue  28    8.44 contrast   modules
--   tio          hue  12    7.51 contrast   numbers, operators
--   phase_min    hue  28    6.49 contrast   keywords, macros, imports
--   tail         hue 210    5.94 contrast   types
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
-- 22.6 Delta E.

return {
  name = "observatory-mira",
  about = "the first variable, and the band that exaggerates it",
  floor = 22.6,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#140d08",
  bg_float = "#1d130b",
  bg_sel = "#362512",
  bg_hl = "#4f2d19",
  border = "#583b22",
  bg_search = "#714d28",
  nontext = "#4a3324",

  -- the text ladder
  text = "#bab5b2",
  dim = "#b3a9a1",
  punct = "#7e7672",
  comment = "#98704b",
  lnr = "#7a604a",
  lnr_cur = "#b2a397",

  -- syntax roles
  str = "#c0cff3",
  num = "#dc836c",
  typ = "#4b8cce",
  mod = "#e69046",
  prop = "#fee1c8",
  func = "#fabe8b",
  kw = "#e46d06",
  op = "#dc836c",
  macro = "#e46d06",
  esc = "#c0cff3",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#e69046",
  hint = "#c0cff3",
  ok = "#29b16d",
  accent = "#fabe8b",
  cursearch = "#e46d06",
  subst = "#c0cff3",
  match = "#edc24a",
  title = "#fabe8b",
  dir = "#4b8cce",
  label = "#e46d06",
  tag = "#e46d06",
  h1 = "#e46d06",
  h2 = "#fabe8b",
  h3 = "#c0cff3",
  h4 = "#4b8cce",
  h5 = "#e69046",
  h6 = "#dc836c",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#2a1707",
  diff_text = "#48280d",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#241406",
  vt_hint = "#091431",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "companion", hue = 222, chroma = 19.5, cr = 13.46 },
    { key = "tio", hue = 12, chroma = 41.8, cr = 7.51 },
    { key = "tail", hue = 210, chroma = 40.2, cr = 5.94 },
    { key = "phase_mean", hue = 28, chroma = 58.0, cr = 8.44 },
    { key = "phase_max", hue = 28, chroma = 17.0, cr = 16.82 },
    { key = "phase_rise", hue = 28, chroma = 37.4, cr = 12.80 },
    { key = "phase_min", hue = 28, chroma = 78.5, cr = 6.49 },
  },
}

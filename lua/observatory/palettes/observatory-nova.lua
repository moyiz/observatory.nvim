-- observatory-nova -- a white dwarf's surface igniting, hour by week
--
-- Source: a classical nova, which is not a star exploding but a star's surface
-- doing so. A white dwarf in a close binary accretes hydrogen from its
-- companion until the base of that layer is dense and hot enough to fuse, and
-- the resulting runaway blows the layer off at a few thousand kilometers a
-- second while leaving the dwarf intact -- which is why the same system can do
-- it again. V1500 Cygni in 1975 is the modern reference, rising nineteen
-- magnitudes to naked-eye brightness in about a day; T Coronae Borealis, the
-- Blaze Star, is the recurrent one that has gone off roughly every eighty years
-- and is overdue.
--
-- The ladder is time since eruption, and the palette changes derivation partway
-- down it because the object does. For the first hours the ejecta is optically
-- thick and radiates as a blackbody -- a fireball near 16,000 K, cooling to
-- around 8,000 K as it expands to maximum light, so those two rungs come through
-- the Planck curve. Then the iron curtain falls: thousands of Fe II lines in the
-- expanding shell absorb the ultraviolet and re-radiate it lower down, and the
-- nova reddens hard without cooling much. Once the shell thins the continuum is
-- gone altogether and what is left is nebular emission -- [O III] at 500.7 nm,
-- hydrogen-alpha at 656.3, He II at 468.6, [Ne III] at 386.9 -- each through
-- Bruton's conversion. Some novae then condense dust in their own ejecta and
-- fade at visible wavelengths a second time, which is the last rung.
--
-- So this is one of the few palettes in the collection that crosses the whole
-- spectrum for a physical reason rather than a compositional one: blue-white,
-- white, red, green, red, blue and violet, in that order, because a nova is a
-- blackbody for a day, an absorption spectrum for a fortnight and an emission
-- spectrum for a year. `observatory-kilonova` is built the same way, out of a
-- transient's color evolution rather than its portrait, and reaches the
-- opposite conclusion: that one reddens monotonically because it is powered by
-- the decay of heavy elements, where this one turns because the material in
-- front of the light keeps changing.
--
-- The rungs are a composite rather than any single nova. Speed classes differ
-- by an order of magnitude in how fast they run through these stages -- V1500
-- Cygni took days where slow novae take months -- and the dust phase happens in
-- some systems and not others. What is shared across the class is the sequence,
-- which is what the ladder is.
--
-- Stages, and the roles they take:
--
--   fireball     hue 221   16.92 contrast   properties
--   maximum      hue 224   11.71 contrast   functions
--   iron_curtain hue  16   11.59 contrast   modules
--   o_iii        hue 153   10.47 contrast   types
--   h_alpha      hue   0    8.44 contrast   strings, escapes
--   dust         hue  26    7.02 contrast   operators
--   he_ii        hue 202    6.82 contrast   keywords, macros, imports
--   ne_iii       hue 294    5.38 contrast   numbers
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
-- 17.8 Delta E.

return {
  name = "observatory-nova",
  about = "a white dwarf's surface igniting, hour by week",
  floor = 17.8,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#130e08",
  bg_float = "#1b140a",
  bg_sel = "#322511",
  bg_hl = "#4a3017",
  border = "#533d20",
  bg_search = "#6a5125",
  nontext = "#463423",

  -- the text ladder
  text = "#cfc9c1",
  dim = "#b2a99f",
  punct = "#9e9994",
  comment = "#86765d",
  lnr = "#766147",
  lnr_cur = "#b1a495",

  -- syntax roles
  str = "#ea8989",
  num = "#c44fd0",
  typ = "#56cc96",
  mod = "#e6b6a4",
  prop = "#dee7fa",
  func = "#b2c1ea",
  kw = "#499bc9",
  op = "#bc8b66",
  macro = "#499bc9",
  esc = "#ea8989",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#e6b6a4",
  hint = "#ea8989",
  ok = "#299961",
  accent = "#b2c1ea",
  cursearch = "#499bc9",
  subst = "#ea8989",
  match = "#edc24a",
  title = "#b2c1ea",
  dir = "#56cc96",
  label = "#499bc9",
  tag = "#499bc9",
  h1 = "#499bc9",
  h2 = "#b2c1ea",
  h3 = "#ea8989",
  h4 = "#56cc96",
  h5 = "#e6b6a4",
  h6 = "#c44fd0",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#301308",
  diff_text = "#52210e",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#2a1107",
  vt_hint = "#300808",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "h_alpha", hue = 0, chroma = 40.3, cr = 8.44 },
    { key = "ne_iii", hue = 294, chroma = 78.0, cr = 5.38 },
    { key = "o_iii", hue = 153, chroma = 48.9, cr = 10.47 },
    { key = "iron_curtain", hue = 16, chroma = 21.6, cr = 11.59 },
    { key = "fireball", hue = 221, chroma = 10.2, cr = 16.92 },
    { key = "maximum", hue = 224, chroma = 22.4, cr = 11.71 },
    { key = "he_ii", hue = 202, chroma = 32.9, cr = 6.82 },
    { key = "dust", hue = 26, chroma = 30.5, cr = 7.02 },
  },
}

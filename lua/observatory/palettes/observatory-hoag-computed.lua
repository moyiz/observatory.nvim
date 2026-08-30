-- observatory-hoag-computed -- an old core, a young ring, and nothing in between
--
-- Source: Hoag's Object, catalogued by Arthur Hoag in 1950 and still not
-- properly explained. It is a ring galaxy of an unusually clean kind: a
-- yellow, nearly featureless core of old stars, a detached ring of blue young
-- ones around it, and a dark space between the two that appears to contain
-- very little. Through the gap, in the Hubble image, there is a second ring
-- galaxy far behind it. Integrated colors for the two populations -- around
-- 0.85 to 1.05 in B-V for the core, near zero for the ring -- become
-- temperatures by Ballesteros' fit and then sRGB through the Planck curve, and
-- the ring's star-forming knots contribute hydrogen-alpha at 656.3 nm.
--
-- So the palette is a duotone with a reason: two populations, two hue
-- families about two hundred degrees apart, three values in each, and nothing
-- placed between them. Where `observatory-iapetus` splits one moon into a
-- light and a dark half, this is
-- an object that genuinely has two colors in it and no third. The ring takes
-- strings and the core types, in that order because that is the order of the
-- object: the ring is brighter, wider and the reason anyone catalogued it.
--
-- Both families are pale, and that is the derivation being honest rather than
-- the palette being timid. An integrated stellar population is a sum over
-- millions of stars of every type, so its color is always closer to white
-- than any single star's: the core computes to twenty chroma units and the
-- ring to nineteen, where a B star on its own would give sixty. The scheme
-- therefore separates on lightness within each family and on hue between them,
-- which is the arrangement a duotone wants in any case.
--
-- One saturated color breaks the scheme, and it is the ring's. Hydrogen-alpha
-- from the star-forming knots is line emission rather than starlight, so it is
-- not bound by the pale-population argument, and it goes at the bottom of the
-- ladder on numbers and operators -- the evidence that the ring is still
-- making the stars that make it blue.
--
-- Populations, and the roles they take:
--
--   core_outer   hue  28   16.89 contrast   properties
--   ring_outer   hue 222   13.86 contrast   functions
--   core_inner   hue  27   11.25 contrast   keywords, macros, imports
--   ring_mid     hue 223    9.85 contrast   strings, escapes
--   core_mid     hue  27    6.20 contrast   types
--   ring_inner   hue 230    5.05 contrast   modules
--   knots        hue   0    4.90 contrast   numbers, operators
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
-- 15.6 Delta E.

return {
  name = "observatory-hoag-computed",
  about = "an old core, a young ring, and nothing in between",
  floor = 15.6,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#0a0f17",
  bg_float = "#0e1426",
  bg_sel = "#1a254e",
  bg_hl = "#1e3561",
  border = "#2c3f71",
  bg_search = "#394fa3",
  nontext = "#293754",

  -- the text ladder
  text = "#bebfc4",
  dim = "#a6aab6",
  punct = "#94a0b7",
  comment = "#757781",
  lnr = "#56648c",
  lnr_cur = "#9fa6b6",

  -- syntax roles
  str = "#9eb1e3",
  num = "#e03d3d",
  typ = "#b38159",
  mod = "#717aa8",
  prop = "#eee5dd",
  func = "#c5d2f1",
  kw = "#d7b89f",
  op = "#e03d3d",
  macro = "#d7b89f",
  esc = "#9eb1e3",

  -- interface duties, following the syntax colors
  err = "#f56368",
  warn = "#edc24a",
  info = "#717aa8",
  hint = "#9eb1e3",
  ok = "#29b16d",
  accent = "#c5d2f1",
  cursearch = "#d7b89f",
  subst = "#9eb1e3",
  match = "#edc24a",
  title = "#c5d2f1",
  dir = "#b38159",
  label = "#d7b89f",
  tag = "#d7b89f",
  h1 = "#d7b89f",
  h2 = "#c5d2f1",
  h3 = "#9eb1e3",
  h4 = "#b38159",
  h5 = "#717aa8",
  h6 = "#e03d3d",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#0c1646",
  diff_text = "#152578",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#0b143f",
  vt_hint = "#091533",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "ring_mid", hue = 223, chroma = 27.7, cr = 9.85 },
    { key = "knots", hue = 0, chroma = 73.0, cr = 4.90 },
    { key = "core_mid", hue = 27, chroma = 32.6, cr = 6.20 },
    { key = "ring_inner", hue = 230, chroma = 26.8, cr = 5.05 },
    { key = "core_outer", hue = 28, chroma = 5.2, cr = 16.89 },
    { key = "ring_outer", hue = 222, chroma = 16.8, cr = 13.86 },
    { key = "core_inner", hue = 27, chroma = 18.3, cr = 11.25 },
  },
}

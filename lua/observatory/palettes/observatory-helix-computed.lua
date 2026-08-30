-- observatory-helix-computed -- the Eye of God, and the ten thousand knots in it
--
-- Source: NGC 7293 in Aquarius, about 650 light years away and the nearest
-- planetary nebula of its size -- a Sun-like star's outer atmosphere, thrown
-- off and lit from inside by the white dwarf left behind, which runs at
-- something like 110,000 K. A 2003 composite gave it the nickname that stuck.
-- The palette is its spectrum, through Bruton's approximation: [O III] at 500.7
-- nm from the hot interior, helium at 468.6 and 587.6, hydrogen-alpha at 656.3
-- and [N II] at 658.4 from the ring, and the central star's own continuum.
--
-- What this object has and no other nebula in the collection does is the knots.
-- There are thousands of them, each a globule about the size of the solar
-- system with a dusty head and an ionised tail streaming away from the star,
-- and they are resolved because the nebula is close. So the palette has an
-- absorbing family in it as well as an emitting one: the knot heads are
-- starlight through dust at optical depth 3, which is a warm tan, and they sit
-- at the bottom of the ladder on strings and escapes. Everything above them is
-- gas that emits.
--
-- The obvious comparison is `observatory-catseye`, which is also a planetary
-- nebula ordered outward from its star. That scheme orders by ionisation
-- energy, which in a nebula is nearly the same thing as radius, so the two
-- constructions overlap and the honest difference is the dust: Cat's Eye is
-- built entirely from emission, and this one spends its darkest rungs on
-- material that blocks light rather than making it.
--
-- Hydrogen-alpha and [N II] are two nanometers apart and sRGB gives everything
-- past 645 nm one hue, so they are separated by lightness, as in
-- `observatory-voorwerp` and `observatory-fraunhofer`. [S II] at 671.6 nm is
-- strong here too and is left out for the same reason as there: a third value
-- at that hue would crowd the error color.
--
-- The infrared excess is missing, and it is the interesting recent result about
-- this object -- dust around the central star, possibly a surviving debris
-- disc. It was found at wavelengths tens of times longer than anything a
-- display addresses.
--
-- Components, and the roles they take:
--
--   oiii         hue 153   15.60 contrast   properties, functions
--   heii         hue 201   12.88 contrast   types
--   halpha       hue   0    9.72 contrast   keywords
--   dwarf        hue 221    8.66 contrast   modules
--   hei          hue  54    6.91 contrast   macros, imports
--   nii          hue   0    6.02 contrast   numbers, operators
--   knot_head    hue  32    4.90 contrast   strings, escapes
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
-- 26.1 Delta E.

return {
  name = "observatory-helix-computed",
  about = "the Eye of God, and the ten thousand knots in it",
  floor = 26.1,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#07110d",
  bg_float = "#091813",
  bg_sel = "#0f2d25",
  bg_hl = "#133c2c",
  border = "#1c483a",
  bg_search = "#215f4e",
  nontext = "#1e3d31",

  -- the text ladder
  text = "#bcc2c0",
  dim = "#9dafa9",
  punct = "#52a684",
  comment = "#6f7a77",
  lnr = "#436d5f",
  lnr_cur = "#90aca2",

  -- syntax roles
  str = "#9f713c",
  num = "#db6464",
  typ = "#92d3f7",
  mod = "#86a6ea",
  prop = "#9cefc9",
  func = "#9cefc9",
  kw = "#e59e9e",
  op = "#db6464",
  macro = "#a1962c",
  esc = "#9f713c",

  -- interface duties, following the syntax colors
  err = "#ef3c42",
  warn = "#e9ae0f",
  info = "#86a6ea",
  hint = "#9f713c",
  ok = "#2ebd75",
  accent = "#9cefc9",
  cursearch = "#e59e9e",
  subst = "#9f713c",
  match = "#e9ae0f",
  title = "#9cefc9",
  dir = "#92d3f7",
  label = "#e59e9e",
  tag = "#e59e9e",
  h1 = "#e59e9e",
  h2 = "#9cefc9",
  h3 = "#9f713c",
  h4 = "#92d3f7",
  h5 = "#86a6ea",
  h6 = "#db6464",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#0a193a",
  diff_text = "#122d65",
  vt_error = "#390a0c",
  vt_warn = "#201906",
  vt_info = "#091633",
  vt_hint = "#201306",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "knot_head", hue = 32, chroma = 38.2, cr = 4.90 },
    { key = "nii", hue = 0, chroma = 51.9, cr = 6.02 },
    { key = "heii", hue = 201, chroma = 26.8, cr = 12.88 },
    { key = "dwarf", hue = 221, chroma = 38.2, cr = 8.66 },
    { key = "oiii", hue = 153, chroma = 34.9, cr = 15.60 },
    { key = "halpha", hue = 0, chroma = 28.5, cr = 9.72 },
    { key = "hei", hue = 54, chroma = 54.9, cr = 6.91 },
  },
}

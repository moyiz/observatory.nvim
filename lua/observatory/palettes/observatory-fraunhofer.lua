-- observatory-fraunhofer -- the Sun's own labelled absorption lines
--
-- Source: the Fraunhofer lines -- the dark gaps Joseph von Fraunhofer
-- catalogued across the solar spectrum in 1814 and labelled with letters,
-- decades before anyone knew what caused them. A and B are atmospheric
-- oxygen at 759.4 and 686.7 nm, C is hydrogen-alpha at 656.3, D the sodium
-- pair at 589.3, E iron at 527.0, b the magnesium triplet at 517.3, F
-- hydrogen-beta at 486.1, G iron and calcium at 430.8, and H and K ionised
-- calcium at 396.8 and 393.4. Wavelengths become sRGB by Dan Bruton's
-- approximation, as in `observatory-balmer` and `observatory-aurora`.
--
-- That scheme takes one element's series; this takes the whole catalogue, so
-- the palette spans the visible spectrum rather than one part of it. The
-- appeal is that every color here already has a name: the scheme is a set
-- of labels that happens to work as a palette.
--
-- The lines cluster, and the palette has to live with it. Ten lines occupy
-- six sRGB hues: A, B and C all lie beyond 650 nm where the display has one
-- red, E and b are ten nanometers apart in the green, and H and K three
-- apart in the violet. Each of those groups is therefore spread as far up
-- and down the ladder as it will go, so lightness separates what hue cannot
-- -- hydrogen-alpha near the top of the reds, atmospheric oxygen at the
-- bottom. That is the reverse of how the rest of the family works, where
-- hue carries the separation and brightness is comparatively free.
--
-- Sodium D takes properties, being both the most famous line and a workable
-- pale yellow at high contrast; hydrogen-alpha takes keywords.
--
-- Lines, and the roles they take:
--
--   D_sodium     hue  53   13.35 contrast   properties
--   K_calcium    hue 289   13.02 contrast   functions
--   C_halpha     hue   0   12.01 contrast   keywords
--   F_hbeta      hue 184   10.15 contrast   types
--   b_magnesium  hue 110    9.02 contrast   modules
--   G_iron       hue 253    6.91 contrast   strings
--   H_calcium    hue 286    5.64 contrast   numbers
--   A_oxygen     hue   0    4.97 contrast   macros, imports
--   E_iron       hue 101    4.79 contrast   escapes
--   B_oxygen     hue   0    4.77 contrast   operators
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
-- 29.7 Delta E.

return {
  name = "observatory-fraunhofer",
  about = "the Sun's own labelled absorption lines",
  floor = 29.7,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#120e08",
  bg_float = "#191409",
  bg_sel = "#2e280f",
  bg_hl = "#423315",
  border = "#4c401e",
  bg_search = "#615422",
  nontext = "#413620",

  -- the text ladder
  text = "#cbcac5",
  dim = "#b0aa9b",
  punct = "#7c7871",
  comment = "#917e41",
  lnr = "#716442",
  lnr_cur = "#aea590",

  -- syntax roles
  str = "#9a87df",
  num = "#bc5bd9",
  typ = "#37c6d0",
  mod = "#46c22d",
  prop = "#dad087",
  func = "#e7bef0",
  kw = "#fdb0b0",
  op = "#f00d0d",
  macro = "#bd5f5f",
  esc = "#4a872d",

  -- interface duties, following the syntax colors
  err = "#f85459",
  warn = "#f1ba21",
  info = "#46c22d",
  hint = "#9a87df",
  ok = "#51c48a",
  accent = "#e7bef0",
  cursearch = "#fdb0b0",
  subst = "#9a87df",
  match = "#f1ba21",
  title = "#e7bef0",
  dir = "#37c6d0",
  label = "#fdb0b0",
  tag = "#fdb0b0",
  h1 = "#fdb0b0",
  h2 = "#e7bef0",
  h3 = "#9a87df",
  h4 = "#37c6d0",
  h5 = "#46c22d",
  h6 = "#bc5bd9",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#0a1f06",
  diff_text = "#11380a",
  vt_error = "#390a0b",
  vt_warn = "#1f1906",
  vt_info = "#091c05",
  vt_hint = "#170b41",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "G_iron", hue = 253, chroma = 50.0, cr = 6.91 },
    { key = "H_calcium", hue = 286, chroma = 75.4, cr = 5.64 },
    { key = "F_hbeta", hue = 184, chroma = 36.9, cr = 10.15 },
    { key = "b_magnesium", hue = 110, chroma = 85.2, cr = 9.02 },
    { key = "D_sodium", hue = 53, chroma = 38.1, cr = 13.35 },
    { key = "K_calcium", hue = 289, chroma = 30.2, cr = 13.02 },
    { key = "C_halpha", hue = 0, chroma = 30.3, cr = 12.01 },
    { key = "B_oxygen", hue = 0, chroma = 97.1, cr = 4.77 },
    { key = "A_oxygen", hue = 0, chroma = 41.6, cr = 4.97 },
    { key = "E_iron", hue = 101, chroma = 55.0, cr = 4.79 },
  },
}

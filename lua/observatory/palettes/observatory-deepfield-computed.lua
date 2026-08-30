-- observatory-deepfield-computed -- ten thousand galaxies, sorted by how long the light took
--
-- Source: the Hubble Deep Field and the Ultra Deep Field -- a hundred hours
-- and then a million seconds pointed at an empty-looking patch of Fornax about
-- a tenth the width of the full moon, which turned out to hold ten thousand
-- galaxies. The palette is not a picture of it. It is what the same stellar
-- population looks like at six distances, which is what that image is: nearby
-- galaxies and distant ones side by side in one frame, sorted by nothing except
-- how long their light has been travelling.
--
-- Two things happen to a galaxy's light on the way. Expansion stretches every
-- wavelength by one plus the redshift, so a population that is blue-white at
-- rest arrives near-neutral at z of about 0.6, gold at 1.2, orange at 2. And
-- intervening hydrogen absorbs everything blueward of Lyman-alpha, so beyond z
-- of roughly 2 a hard edge climbs into the visible band and cuts the blue off
-- entirely: that is the Lyman break, it is how these galaxies are found, and it
-- is why a z of 4 dropout is the flat red at the bottom of this ladder. The
-- palette runs both a star-forming population at 8,500 K and a quiescent one at
-- 4,200 K down the same ladder, because the deep field contains both and they
-- are one step apart in color at every distance.
--
-- The interesting tension in this object is between number and brightness, and
-- the scheme puts it on screen. Rungs are surface brightness, which falls as the
-- fourth power of one plus the redshift -- an inverse-square law twice over,
-- once for distance and once for the stretch -- so the nearby galaxies are at
-- the top and the dropouts are at the floor. Roles are counts, and counts peak
-- around z of 1 to 2, so the middle of the ladder takes strings, properties and
-- functions while the two z of 0 rungs, which are the brightest colors here,
-- take modules and keywords -- a twelfth of the screen between them. Plain text
-- sits at the bottom of the collection's range here, three rungs down from the
-- top, because the field is mostly faint and a palette of it should be too.
--
-- The compression is the compromise. From the nearest rung to the dropouts the
-- real surface brightness falls by a factor of about six hundred and the ladder
-- renders it as three and a half, for the same reason as in
-- `observatory-magnitude`: a display has one order of magnitude to work with
-- and the sky has many. And a single blackbody is a poor stand-in for a galaxy's
-- integrated spectrum, which has a Balmer break in it and dust; the two
-- temperatures here reproduce the observed colors of the blue cloud and the red
-- sequence, which is as much as one number can do.
--
-- The crossing point is not white, which it should be. A population whose
-- light has been stretched until its peak sits in the middle of the visible
-- band ought to render as a neutral, and this one renders as a pale sage at 19
-- chroma units: Bruton's wavelength-to-RGB approximation is a poor guide at low
-- purity, and it puts the blue channel down before it brings the red up. The
-- hue is wrong by perhaps sixty degrees and the paleness is right, which is the
-- opposite of the trade the rest of this palette makes.
--
-- Two rungs are held under their computed purity by the gamut rather than by
-- choice: the z of 1.2 red sequence computes to 94 chroma units and reaches 55,
-- and the z of 0 blue population computes to 33 and reaches 21, both because a
-- color cannot be pure and bright at once. The dropouts, at the floor, come
-- through at 98 -- almost exactly the 104 they compute to, which is what the
-- bottom of a ladder is good for.
--
-- `observatory-extinction` reddens starlight with dust and `observatory-doppler`
-- shifts it with velocity, so all three are ramps from blue to red. The
-- mechanism here is neither absorption nor motion but the expansion itself, and
-- it is the only one of the three that ends by removing the blue rather than
-- attenuating it.
--
-- Populations and distances, and the roles they take:
--
--   elliptical   hue  46   16.50 contrast   modules
--   whitening    hue 105   12.19 contrast   properties
--   nearby       hue 214   11.71 contrast   keywords, macros, imports
--   red_seq      hue  16    9.00 contrast   functions
--   peak         hue  29    6.06 contrast   strings, escapes
--   dropout      hue   4    4.87 contrast   types, numbers, operators
--
-- Hues here are fixed by the source, since they are the part that
-- represents the world, and so is purity: every accent's saturation was
-- solved for the chroma its derivation computes, at the brightness its rung
-- asks for, rather than scaled from it. The solver was then left the contrast
-- ratios and three hundredths of latitude in saturation, and moved them until
-- every pair of colors that can appear together -- including every pair with
-- the error, warning and git colors, which sit beside code in the sign
-- column -- clears the family's separation limit.
--
-- Construction follows the rest of the family: every foreground is solved
-- by binary search for an exact contrast ratio against #000000, each accent
-- is the most chromatic form of its hue that still meets that ratio under a
-- per-role cap, and the closest pair of adjacent-capable roles sits at
-- 27.3 Delta E.

return {
  name = "observatory-deepfield-computed",
  about = "ten thousand galaxies, sorted by how long the light took",
  floor = 27.3,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#140d08",
  bg_float = "#1c140b",
  bg_sel = "#342511",
  bg_hl = "#4c2e18",
  border = "#563b21",
  bg_search = "#6d4f26",
  nontext = "#483324",

  -- the text ladder
  text = "#c3c0bd",
  dim = "#b2a9a1",
  punct = "#c39774",
  comment = "#7d7871",
  lnr = "#786049",
  lnr_cur = "#b1a498",

  -- syntax roles
  str = "#d96b06",
  num = "#f11707",
  typ = "#f11707",
  mod = "#f9e39d",
  prop = "#a9d09c",
  func = "#fa8c64",
  kw = "#a1c4f3",
  op = "#f11707",
  macro = "#a1c4f3",
  esc = "#d96b06",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#f9e39d",
  hint = "#d96b06",
  ok = "#29b16d",
  accent = "#fa8c64",
  cursearch = "#a1c4f3",
  subst = "#d96b06",
  match = "#edc24a",
  title = "#fa8c64",
  dir = "#f11707",
  label = "#a1c4f3",
  tag = "#a1c4f3",
  h1 = "#a1c4f3",
  h2 = "#fa8c64",
  h3 = "#d96b06",
  h4 = "#f11707",
  h5 = "#f9e39d",
  h6 = "#f11707",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#211a06",
  diff_text = "#3a2f0a",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#1d1705",
  vt_hint = "#211306",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "peak", hue = 29, chroma = 74.9, cr = 6.06 },
    { key = "dropout", hue = 4, chroma = 97.7, cr = 4.87 },
    { key = "elliptical", hue = 46, chroma = 37.0, cr = 16.50 },
    { key = "whitening", hue = 105, chroma = 31.3, cr = 12.19 },
    { key = "red_seq", hue = 16, chroma = 54.9, cr = 9.00 },
    { key = "nearby", hue = 214, chroma = 27.0, cr = 11.71 },
  },
}

-- observatory-noctilucent -- sunlight that has already gone below the horizon, seen from 83 km
--
-- Source: noctilucent cloud, the highest cloud there is -- water ice at about
-- 83 km, in the coldest air in the atmosphere, seen from the ground in deep
-- summer twilight when the sun is between six and sixteen degrees below the
-- horizon and everything lower has gone dark. The particles are tens of
-- nanometers across, small enough to scatter as Rayleigh's law says, so they
-- are almost neutral scatterers: the color of the cloud is the color of the
-- light reaching it, and that light has travelled a long way through the
-- atmosphere edge-on before it gets there.
--
-- So the palette has exactly one parameter, the altitude at which the beam
-- grazed the Earth, and every color is the same sunlight after a different
-- path. Two things take light out of that path and they take opposite ends of
-- the spectrum. Air scatters the blue out, as the inverse fourth power of
-- wavelength, and it is dense low down; ozone absorbs the yellow and orange in
-- the Chappuis band, and it peaks near 22 km. A beam grazing at 4 km has been
-- through the whole atmosphere and comes out the orange-red of the twilight
-- arch. A beam grazing at 40 km has been through almost no air and all of the
-- ozone, and comes out the blue that makes a noctilucent display look electric.
-- In between, near 15 km, the two effects cancel and leave a pale cyan. That is
-- 204 degrees of hue out of one number, and the ladder is not a decision either:
-- flux rises with grazing altitude by a factor of fifty across these six, so the
-- blue end is also the bright end.
--
-- Which color gets which role is settled by the display rather than by the
-- ladder. A noctilucent display is mostly the silvery blue band; the golden and
-- orange light is the twilight arch beneath it, a thin strip near the horizon.
-- So the blues take strings and properties, a third of the characters on
-- screen between them, and the orange takes numbers and operators.
--
-- The electric blue is the disappointment, and it is the display's fault rather
-- than the derivation's. It computes to 67 chroma units, the second purest
-- color in the palette, and it arrives on screen at 21, because it is also the
-- brightest and sRGB has no bright saturated blue: at this contrast ratio the
-- gamut stops at about 22 whatever saturation is asked for. The ladder is held
-- down to 14.5 rather than the family's usual 16.9 to recover what it can. Even
-- so, the scheme keeps the brightness and loses the purity, because the
-- brightness is what the flux measures.
--
-- The scattering exponent is the other weak point. Four is exact for particles much
-- smaller than the wavelength; real noctilucent particles are about a tenth of
-- a wavelength, which is close enough that the error is small but not zero, and
-- it pushes the whole palette slightly bluer than a photograph. The ozone band
-- is a single Gaussian rather than a measured cross-section, which costs a few
-- degrees of hue in the middle of the ladder where the two effects trade.
--
-- `observatory-nacreous` is the collection's other high-altitude cloud scheme
-- and stays inside one pale band. This one starts in the orange, and the reason
-- it can is that it never asks what color the cloud is, only what color the
-- light was when it arrived.
--
-- Grazing altitudes, and the roles they take:
--
--   electric     hue 224   14.48 contrast   properties
--   band         hue 212   10.26 contrast   strings, escapes
--   veil         hue 177    9.79 contrast   functions, modules
--   citron       hue  72    8.36 contrast   types
--   gold         hue  36    6.61 contrast   keywords, macros, imports
--   ember        hue  20    4.84 contrast   numbers, operators
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
-- 21.3 Delta E.

return {
  name = "observatory-noctilucent",
  about = "sunlight that has already gone below the horizon, seen from 83 km",
  floor = 21.3,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#090f14",
  bg_float = "#0c161f",
  bg_sel = "#162841",
  bg_hl = "#193850",
  border = "#254360",
  bg_search = "#305687",
  nontext = "#253a4a",

  -- the text ladder
  text = "#c1c4c6",
  dim = "#a3abb4",
  punct = "#82888e",
  comment = "#587ba3",
  lnr = "#4f6780",
  lnr_cur = "#9aa8b3",

  -- syntax roles
  str = "#80b9fc",
  num = "#d54b07",
  typ = "#99ac4d",
  mod = "#78bdba",
  prop = "#c7d6fe",
  func = "#78bdba",
  kw = "#ce7e06",
  op = "#d54b07",
  macro = "#ce7e06",
  esc = "#80b9fc",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#78bdba",
  hint = "#80b9fc",
  ok = "#29b16d",
  accent = "#78bdba",
  cursearch = "#ce7e06",
  subst = "#80b9fc",
  match = "#edc24a",
  title = "#78bdba",
  dir = "#99ac4d",
  label = "#ce7e06",
  tag = "#ce7e06",
  h1 = "#ce7e06",
  h2 = "#78bdba",
  h3 = "#80b9fc",
  h4 = "#99ac4d",
  h5 = "#78bdba",
  h6 = "#d54b07",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#051e1d",
  diff_text = "#093534",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#051c1b",
  vt_hint = "#071729",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "band", hue = 212, chroma = 38.8, cr = 10.26 },
    { key = "ember", hue = 20, chroma = 79.3, cr = 4.84 },
    { key = "citron", hue = 72, chroma = 50.4, cr = 8.36 },
    { key = "veil", hue = 177, chroma = 23.0, cr = 9.79 },
    { key = "electric", hue = 224, chroma = 21.4, cr = 14.48 },
    { key = "gold", hue = 36, chroma = 69.5, cr = 6.61 },
  },
}

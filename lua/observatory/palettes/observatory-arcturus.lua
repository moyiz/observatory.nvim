-- observatory-arcturus -- the reference K giant, and the gaps in its light
--
-- Source: Arcturus, alpha Bootis, a K1.5 III giant at 4,286 K and 36.7 light
-- years, the fourth brightest star in the sky at magnitude -0.05 and the
-- brightest north of the celestial equator. It is also the star cool-star
-- spectroscopy is calibrated against: the Hinkle and Wallace atlas of its
-- spectrum is the reference a K giant gets compared to, the way
-- `observatory-magnitude` notes Vega is the reference a brightness gets
-- compared to. The three warm rungs are its photosphere through the Planck
-- curve -- a granule center a little above the mean, the mean itself, the limb
-- a few hundred degrees below it -- and the five below are the strongest
-- absorption features in that atlas at their own wavelengths: ionised calcium
-- at 393.4 nm, the CH molecular band at 430.5, the magnesium triplet at 517.3,
-- the sodium pair at 589.3 and hydrogen-alpha at 656.3.
--
-- So the palette is a star's light on top and the holes in it underneath,
-- which is a different scheme from `observatory-fraunhofer` for the same
-- reason the two spectra are different. The Sun's catalogue is dominated by
-- lines of single atoms; Arcturus is cool enough and, at a third the Sun's
-- iron abundance, metal-poor enough that molecules survive in its atmosphere
-- and the CH band cuts a trough across the blue-violet that the solar
-- spectrum only hints at. The amber is the star; the violets and the green are
-- what a prism finds is not there.
--
-- Three degrees of hue separate the three thermal rungs, which is the usual
-- answer for a cool star, so the top of this palette works on purity and
-- lightness and everything below hue 300 is a feature rather than a color
-- the star has.
--
-- Two honest notes. The strengths that fix the order of the lower rungs are
-- equivalent widths from a giant's spectrum, so the ranking is Arcturus's
-- rather than any star's -- in the Sun, hydrogen-alpha would sit several rungs
-- higher and CH several lower. And the star is a halo interloper: it is moving
-- through the disc at 122 km/s, carries the metal deficiency of a much older
-- population, and has the largest proper motion of any first-magnitude star at
-- 2.28 arcseconds a year, which is why it was the first star ever shown to be
-- moving at all.
--
-- Light and lines, and the roles they take:
--
--   granule      hue  25   16.91 contrast   properties
--   photosphere  hue  27   11.81 contrast   functions
--   limb         hue  27   10.28 contrast   modules
--   k_calcium    hue 289    9.29 contrast   types
--   g_band       hue 254    8.36 contrast   keywords, macros, imports
--   b_magnesium  hue 110    7.18 contrast   strings, escapes
--   c_halpha     hue   0    6.97 contrast   operators
--   d_sodium     hue  53    6.05 contrast   numbers
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
-- 17.5 Delta E.

return {
  name = "observatory-arcturus",
  about = "the reference K giant, and the gaps in its light",
  floor = 17.5,

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
  text = "#bbb8b4",
  dim = "#b3a9a1",
  punct = "#8b847f",
  comment = "#95714e",
  lnr = "#7a604a",
  lnr_cur = "#b2a397",

  -- syntax roles
  str = "#43ac2e",
  num = "#968b37",
  typ = "#d993e8",
  mod = "#e5a979",
  prop = "#f3e4d9",
  func = "#debca1",
  kw = "#aa99e2",
  op = "#f06a6a",
  macro = "#aa99e2",
  esc = "#43ac2e",

  -- interface duties, following the syntax colors
  err = "#fa373e",
  warn = "#edc24a",
  info = "#e5a979",
  hint = "#43ac2e",
  ok = "#29b16d",
  accent = "#debca1",
  cursearch = "#aa99e2",
  subst = "#43ac2e",
  match = "#edc24a",
  title = "#debca1",
  dir = "#d993e8",
  label = "#aa99e2",
  tag = "#aa99e2",
  h1 = "#aa99e2",
  h2 = "#debca1",
  h3 = "#43ac2e",
  h4 = "#d993e8",
  h5 = "#e5a979",
  h6 = "#968b37",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#2a1707",
  diff_text = "#49280d",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#241406",
  vt_hint = "#081a05",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "b_magnesium", hue = 110, chroma = 75.0, cr = 7.18 },
    { key = "d_sodium", hue = 53, chroma = 45.6, cr = 6.05 },
    { key = "k_calcium", hue = 289, chroma = 51.8, cr = 9.29 },
    { key = "limb", hue = 27, chroma = 37.1, cr = 10.28 },
    { key = "granule", hue = 25, chroma = 7.9, cr = 16.91 },
    { key = "photosphere", hue = 27, chroma = 19.9, cr = 11.81 },
    { key = "g_band", hue = 254, chroma = 40.9, cr = 8.36 },
    { key = "c_halpha", hue = 0, chroma = 57.7, cr = 6.97 },
  },
}

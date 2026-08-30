-- observatory-betelgeuse -- a resolved supergiant, mid-dimming, in amber
--
-- Source: SPHERE on ESO's Very Large Telescope, December 2019, during the
-- campaign that set out to explain why Betelgeuse had faded to about a third of
-- its usual brightness. It is a single narrowband channel at H-alpha, so the
-- ambers are an intensity ramp rather than the star's own color, and the
-- lopsided brightness across the disc is the observation. The same instrument
-- had happened to photograph the star in January 2019, before the dimming, so
-- there is a genuine before-and-after pair. The Great Dimming was not the
-- prelude to a supernova: it was dust the star had thrown off, cooling in front
-- of it.
--
-- Image: Betelgeuse, the surface during the Great Dimming -- ESO's Very Large Telescope, SPHERE (December 2019).
-- ESO/M. Montargès et al..
-- Sampled at 816 x 816; 8% of the frame carried light.
--
-- Only seven and a half per cent of the frame is lit -- a small disc on a great
-- deal of black -- and every color in that disc is amber, from a white-gold
-- core out to a dark rust at the limb. This is the second most saturated frame
-- sampled anywhere in the collection, and it is one hue, so the palette is a
-- gold ladder and the ladder is doing all of the work.
--
-- Roles follow area over the eight sampled colors.
--
-- What is in the frame, and the roles it takes:
--
--   peak          hue  54  16.89 contrast   3.7% of frame   modules
--   core          hue  46  14.01 contrast  10.3% of frame   keywords, macros, imports
--   bright        hue  43  11.14 contrast   6.9% of frame   strings, functions
--   rust          hue  34  10.51 contrast  14.9% of frame   operators
--   disc          hue  27   7.48 contrast  30.5% of frame   properties
--   hotspot       hue  22   5.94 contrast  30.0% of frame   types, numbers
--   halo          hue  16   4.69 contrast   3.7% of frame   escapes
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
-- and the closest pair of adjacent-capable roles sits at 9.8 Delta E.
--
-- 1 of the 8 colors sampled from the frame were folded into their
-- nearest neighbour rather than kept: at this subject's hue span there is
-- not enough lightness left to hold that many apart at the family's
-- separation floor, and two colors a reader cannot distinguish are one
-- color. The folded share went to the neighbour, so the proportions of
-- the frame are still what the roles follow.
--
-- The frame also put two of its colors closer together than the family's
-- separation floor allows, so the ladder was spread to 7 points of
-- lightness between rungs rather than the three the picture asked for.
-- The order is still the picture's; the spacing is not.

return {
  name = "observatory-betelgeuse",
  about = "a resolved supergiant, mid-dimming, in amber",
  floor = 9.8,

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
  text = "#cbc6c3",
  dim = "#b4a99f",
  punct = "#a78f81",
  comment = "#8b7867",
  lnr = "#746152",
  lnr_cur = "#b3a396",

  -- syntax roles
  str = "#dbb965",
  num = "#ba7952",
  typ = "#ba7952",
  mod = "#ede8be",
  prop = "#d4894d",
  func = "#dbb965",
  kw = "#e7d28f",
  op = "#ebab5a",
  macro = "#e7d28f",
  esc = "#a06a56",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#ede8be",
  hint = "#dbb965",
  ok = "#29b16d",
  accent = "#dbb965",
  cursearch = "#e7d28f",
  subst = "#dbb965",
  match = "#edc24a",
  title = "#dbb965",
  dir = "#ba7952",
  label = "#e7d28f",
  tag = "#e7d28f",
  h1 = "#e7d28f",
  h2 = "#dbb965",
  h3 = "#dbb965",
  h4 = "#ba7952",
  h5 = "#ede8be",
  h6 = "#ba7952",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#1e1c05",
  diff_text = "#353109",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#1b1805",
  vt_hint = "#1c1605",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "bright", hue = 43, chroma = 46.7, cr = 11.14 },
    { key = "hotspot", hue = 22, chroma = 38.2, cr = 5.94 },
    { key = "peak", hue = 54, chroma = 21.7, cr = 16.89 },
    { key = "disc", hue = 27, chroma = 49.1, cr = 7.48 },
    { key = "core", hue = 46, chroma = 35.9, cr = 14.01 },
    { key = "rust", hue = 34, chroma = 52.4, cr = 10.51 },
    { key = "halo", hue = 16, chroma = 27.7, cr = 4.69 },
  },
}

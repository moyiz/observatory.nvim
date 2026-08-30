-- observatory-nacreous -- iridescent ice at 20 km, and the only pastel here
--
-- Source: nacreous clouds -- polar stratospheric clouds of the ice type, at
-- 15 to 25 km, in air below about 195 K, which is cold enough that the little
-- water the stratosphere has will freeze. They are far too high to be lit like
-- ordinary clouds: they are visible in deep twilight, glowing over a dark sky,
-- for an hour after everything below them has gone out. Their colors are not
-- pigment and not scattering but diffraction, from ice particles near 10
-- microns across that are unusually uniform in size -- which is why these are
-- the most strongly colored clouds in the sky, and why the colors are
-- nonetheless pale. Uniformity is what purity costs, and no cloud is uniform.
--
-- They are also where the ozone hole is made. Chlorine reservoirs from CFCs
-- react on the surfaces of these particles through the polar night, and come out
-- as the forms that destroy ozone the moment the sun returns. The prettiest
-- thing in a winter sky is a catalyst.
--
-- The palette is the Airy pattern: intensity (2 J1(x)/x) squared, with x set by
-- particle size, viewing angle and wavelength, integrated across the visible at
-- one angle six degrees from the sun, then averaged over a five per cent spread
-- of sizes within a parcel and over the sun's own half-degree disc. What varies
-- from band to band is particle size, because that is what varies across a real
-- cloud -- which is why iridescent bands follow the cloud's own shape instead of
-- ringing the sun, as a corona does. Sunlight arriving there has grazed the
-- atmosphere at a tangent height near 15 km and is reddened by it, and the
-- result is white-balanced against exactly that light, the way an eye or a
-- camera discounts a strong cast; what is left is the diffraction.
--
-- Saturation is derived here rather than chosen, which no other scheme in the
-- family can say. Purity is the distance of each band's chromaticity from the
-- illuminant's white, mapped by one affine rule shared by every band, so the
-- order and the ratios survive the mapping: the palest band in the cloud is the
-- palest color on screen. Nothing here passes 0.42 saturation, and the mean
-- chroma of 17 is the lowest of any scheme in this collection that has color
-- in it at all: the next is 20, the family's average is 38, and the only values
-- below are the zeroes of the two grayscales. The scheme is pastel because the
-- source is.
--
-- Role assignment was solved, not chosen, and this is the first scheme where
-- that is true. Integrating the pattern over the range of particle sizes a
-- cloud contains gives each color a share of the cloud's area: pink 53 per
-- cent, then peach, mint, orchid and lime near nine each, cyan 7.1 and blue
-- 3.5. The share of a screen each syntax role covers was measured the same
-- way -- characters of colored ink, over lua, python, go, c and bash trees,
-- each language weighted equally -- and roles were then handed to bands so that
-- the two sets of proportions agree. They agree to within 7.4 points of
-- screen area in total. Strings, comments and plain text are pink because pink
-- is over half the cloud, and blue -- the rarest band, and the palest -- lands
-- on macros, which are the rarest thing in the measurement that is still worth
-- coloring.
--
-- Lightness is the one quantity not taken from the source. At a single viewing
-- angle the model's bands span a factor of seventy-five in brightness, but that
-- number describes the geometry rather than the bands -- each band is seen at
-- whatever angle shows it -- so the ladder is set for legibility, and this
-- header would rather say so than dress it up.
--
-- Pastel was expected to cost separation and mostly did not. Low purity does
-- compress the palette -- almost none of the distance between these colors
-- comes from chroma, and three of the thirteen roles are one pink at three
-- brightnesses -- but seven hues spread around the whole circle, and the
-- separation figure below is wider than thirty-one of the other schemes manage
-- with far more saturation to spend. Two things did have to give. The affine map
-- from purity to saturation is steeper than the physics alone would justify,
-- because at the gentlest setting that preserved the ordering the palette fell
-- under the family's separation limit. And a band's rung had to be chosen with
-- one eye on its purity: chroma on screen is capped by lightness, so a pale band
-- parked on a dim rung comes out muddy -- pale yellow-green becomes olive, which
-- this cloud never shows -- and among assignments of equal proportion the search
-- prefers those that keep the bands in their own order of purity.
--
-- What pastel costs instead is emphasis. Nothing here can shout; a scheme with a
-- saturated red in it can.
--
-- A true blue-violet is missing, and it is missing from the object too. The
-- pattern's second cycle does reach it, but weakly: the blue band is both the
-- narrowest and the palest thing the model produces, and the palette shows it
-- that way rather than promoting it.
--
-- Bands, and the roles they take:
--
--   peach        hue  37   16.92 contrast   properties
--   mint         hue 142   14.17 contrast   functions
--   lime         hue  82   11.62 contrast   keywords, numbers
--   pink         hue 352   10.87 contrast   strings
--   cyan         hue 173   10.82 contrast   types, operators
--   blue         hue 221    9.10 contrast   macros, imports, modules, escapes
--
-- Hue and saturation are both fixed by the source here, so only the contrast
-- ladder was solved: every pair of colors that can appear together --
-- including every pair with the error, warning and git colors, which sit
-- beside code in the sign column -- was pushed as far apart as one dimension
-- allows.
--
-- Construction follows the rest of the family: every foreground is solved
-- by binary search for an exact contrast ratio against #000000, each accent
-- is the most chromatic form of its hue that still meets that ratio under a
-- per-role cap, and the closest pair of adjacent-capable roles sits at
-- 12.4 Delta E.

return {
  name = "observatory-nacreous",
  about = "iridescent ice at 20 km, and the only pastel here",
  floor = 12.4,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#190b0d",
  bg_float = "#260e11",
  bg_sel = "#47181b",
  bg_hl = "#601e2c",
  border = "#6d2b34",
  bg_search = "#93343a",
  nontext = "#562a33",

  -- the text ladder
  text = "#edd0d4",
  dim = "#dca9b2",
  punct = "#ca84ab",
  comment = "#c97a82",
  lnr = "#bc5b71",
  lnr_cur = "#d8a1ab",

  -- syntax roles
  str = "#ddafb5",
  num = "#b8c69f",
  typ = "#85c6be",
  mod = "#9eabc7",
  prop = "#ece6dc",
  func = "#bbdcc7",
  kw = "#b8c69f",
  op = "#85c6be",
  macro = "#9eabc7",
  esc = "#9eabc7",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#9eabc7",
  hint = "#ddafb5",
  ok = "#29b16d",
  accent = "#bbdcc7",
  cursearch = "#b8c69f",
  subst = "#ddafb5",
  match = "#edc24a",
  title = "#bbdcc7",
  dir = "#85c6be",
  label = "#b8c69f",
  tag = "#b8c69f",
  h1 = "#b8c69f",
  h2 = "#bbdcc7",
  h3 = "#ddafb5",
  h4 = "#85c6be",
  h5 = "#9eabc7",
  h6 = "#b8c69f",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#0a1a3a",
  diff_text = "#122d66",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#091633",
  vt_hint = "#2e080d",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "pink", hue = 352, chroma = 17.9, cr = 10.87 },
    { key = "lime", hue = 82, chroma = 21.4, cr = 11.62 },
    { key = "cyan", hue = 173, chroma = 22.5, cr = 10.82 },
    { key = "blue", hue = 221, chroma = 15.9, cr = 9.10 },
    { key = "peach", hue = 37, chroma = 5.6, cr = 16.92 },
    { key = "mint", hue = 142, chroma = 16.3, cr = 14.17 },
  },
}

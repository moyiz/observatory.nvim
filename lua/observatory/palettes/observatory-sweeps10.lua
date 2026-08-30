-- observatory-sweeps10 -- a Jupiter skimming a spotted red star, ten hours per year
--
-- Source: the 2006 SWEEPS artwork. The Sagittarius Window Eclipsing Extrasolar
-- Planet Search used Hubble to watch 180,000 stars towards the galactic bulge
-- for a week; SWEEPS-10 came out of it with a ten-hour orbit, one of the
-- shortest known, close enough that its star is drawn filling the sky.
--
-- Image: SWEEPS-10 -- artist impression, ESA/Hubble (heic0612c).
-- NASA, ESA and A. Schaller (for STScI).
-- Sampled at 1280 x 1097; 38% of the frame carried light.
--
-- The illustration is cream and tan across the planet's cloud tops with the
-- star's spotted red behind it, and the warm colors carry two thirds of the
-- lit frame. So the palette is a soft warm one rather than the furnace the
-- orbit suggests, which is how the artwork chose to render a planet that is
-- nearly touching its star.
--
-- Roles follow area.
--
-- What is in the frame, and the roles it takes:
--
--   band          hue  35  16.90 contrast  22.3% of frame   functions, macros, imports
--   haze          hue  30  12.74 contrast  20.5% of frame   properties, escapes
--   cloud         hue  23   9.34 contrast  34.5% of frame   strings
--   belt          hue  20   7.44 contrast  14.2% of frame   types, numbers
--   spot          hue   7   4.72 contrast   0.8% of frame   modules
--   shade         hue 353   4.68 contrast   7.6% of frame   keywords, operators
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
-- and the closest pair of adjacent-capable roles sits at 16.8 Delta E.
--
-- 1 of the 7 colors sampled from the frame were folded into their
-- nearest neighbour rather than kept: at this subject's hue span there is
-- not enough lightness left to hold that many apart at the family's
-- separation floor, and two colors a reader cannot distinguish are one
-- color. The folded share went to the neighbour, so the proportions of
-- the frame are still what the roles follow.
--
-- The frame also put two of its colors closer together than the family's
-- separation floor allows, so the ladder was spread to 9 points of
-- lightness between rungs rather than the three the picture asked for.
-- The order is still the picture's; the spacing is not.

return {
  name = "observatory-sweeps10",
  about = "a Jupiter skimming a spotted red star, ten hours per year",
  floor = 16.8,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#140d09",
  bg_float = "#1e130b",
  bg_sel = "#372312",
  bg_hl = "#502c19",
  border = "#5a3923",
  bg_search = "#744b29",
  nontext = "#4b3125",

  -- the text ladder
  text = "#cac7c4",
  dim = "#b2a99e",
  punct = "#ae9e8e",
  comment = "#7c7870",
  lnr = "#716250",
  lnr_cur = "#b1a394",

  -- syntax roles
  str = "#ed9963",
  num = "#c38e73",
  typ = "#c38e73",
  mod = "#b36055",
  prop = "#f0c191",
  func = "#f7e4c9",
  kw = "#9d696f",
  op = "#9d696f",
  macro = "#f7e4c9",
  esc = "#f0c191",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#b36055",
  hint = "#ed9963",
  ok = "#29b16d",
  accent = "#f7e4c9",
  cursearch = "#9d696f",
  subst = "#ed9963",
  match = "#edc24a",
  title = "#f7e4c9",
  dir = "#c38e73",
  label = "#9d696f",
  tag = "#9d696f",
  h1 = "#9d696f",
  h2 = "#f7e4c9",
  h3 = "#ed9963",
  h4 = "#c38e73",
  h5 = "#b36055",
  h6 = "#c38e73",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#350e09",
  diff_text = "#5a1910",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#2e0d08",
  vt_hint = "#231206",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "cloud", hue = 23, chroma = 48.8, cr = 9.34 },
    { key = "belt", hue = 20, chroma = 27.8, cr = 7.44 },
    { key = "spot", hue = 7, chroma = 38.8, cr = 4.72 },
    { key = "haze", hue = 30, chroma = 32.3, cr = 12.74 },
    { key = "band", hue = 35, chroma = 15.7, cr = 16.90 },
    { key = "shade", hue = 353, chroma = 22.3, cr = 4.68 },
  },
}

-- observatory-brightestofalltime -- the brightest burst ever recorded, in dust echoes
--
-- Source: Swift's X-Ray Telescope, 9 October 2022, a few hours after GRB
-- 221009A -- the Brightest Of All Time, as the people who study these things
-- immediately called it. A star of some tens of solar masses collapsed 2.4
-- billion light years away and fired a jet nearly along our line of sight; the
-- burst saturated every gamma-ray instrument in orbit, was recorded by
-- seismometers and lightning detectors, measurably ionised Earth's upper
-- atmosphere, and delivered one photon of 18 teraelectronvolts. Bursts this
-- bright arrive perhaps once in ten thousand years.
--
-- Image: GRB 221009A, the Brightest Of All Time -- Neil Gehrels Swift Observatory, X-Ray Telescope (9 October 2022).
-- NASA/Swift/A. Beardmore (University of Leicester).
-- Sampled at 1084 x 1080; 24% of the frame carried light.
--
-- The rings are not the burst. They are its light arriving late: X-rays that
-- scattered off sheets of dust inside our own galaxy took a slightly longer path
-- and reach the telescope hours afterwards, spread into a halo whose radius
-- gives the distance to each dust sheet. Nineteen of them were measured, which
-- turned a catastrophe two billion light years away into a survey of the
-- interstellar medium a few thousand light years away.
--
-- Roles follow area, and the palette is a warm monochrome because the frame is
-- one: X-ray counts on a single heat ramp, everything between a deep red at the
-- outside and a gold core, with no hue in it that the pipeline did not choose.
-- `observatory-nervia` and `observatory-betelgeuse` are the family's other
-- single-ramp frames, and they run into the same wall -- when a picture has one
-- hue, the ladder does all of the work.
--
-- What is in the frame, and the roles it takes:
--
--   core          hue  40  16.90 contrast   4.5% of frame   strings, functions
--   inner         hue  24  11.02 contrast   5.1% of frame   keywords
--   dust          hue  18   9.04 contrast   4.0% of frame   escapes
--   ring          hue  10   7.96 contrast  26.5% of frame   modules
--   echo          hue   4   5.89 contrast  22.9% of frame   properties
--   outer         hue   0   4.70 contrast  36.9% of frame   types, numbers, operators, macros, imports
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
-- and the closest pair of adjacent-capable roles sits at 9.7 Delta E.
--
-- The frame also put two of its colors closer together than the family's
-- separation floor allows, so the ladder was spread to 7 points of
-- lightness between rungs rather than the three the picture asked for.
-- The order is still the picture's; the spacing is not.

return {
  name = "observatory-brightestofalltime",
  about = "the brightest burst ever recorded, in dust echoes",
  floor = 9.7,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#190b0b",
  bg_float = "#260e0e",
  bg_sel = "#451a17",
  bg_hl = "#611f23",
  border = "#6f2b2b",
  bg_search = "#8f3932",
  nontext = "#562b2d",

  -- the text ladder
  text = "#cdc5c5",
  dim = "#b9a7a7",
  punct = "#ac8c8f",
  comment = "#917574",
  lnr = "#7a5e5e",
  lnr_cur = "#ba9fa0",

  -- syntax roles
  str = "#fce4b4",
  num = "#bd5858",
  typ = "#bd5858",
  mod = "#fa795e",
  prop = "#dd6057",
  func = "#fce4b4",
  kw = "#fba973",
  op = "#bd5858",
  macro = "#bd5858",
  esc = "#fa8d5e",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#fa795e",
  hint = "#fce4b4",
  ok = "#29b16d",
  accent = "#fce4b4",
  cursearch = "#fba973",
  subst = "#fce4b4",
  match = "#edc24a",
  title = "#fce4b4",
  dir = "#bd5858",
  label = "#fba973",
  tag = "#fba973",
  h1 = "#fba973",
  h2 = "#fce4b4",
  h3 = "#fce4b4",
  h4 = "#bd5858",
  h5 = "#fa795e",
  h6 = "#bd5858",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#331009",
  diff_text = "#581c0f",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#2d0f08",
  vt_hint = "#1c1505",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "core", hue = 40, chroma = 26.5, cr = 16.90 },
    { key = "outer", hue = 0, chroma = 45.1, cr = 4.70 },
    { key = "ring", hue = 10, chroma = 60.6, cr = 7.96 },
    { key = "echo", hue = 4, chroma = 56.6, cr = 5.89 },
    { key = "inner", hue = 24, chroma = 46.9, cr = 11.02 },
    { key = "dust", hue = 18, chroma = 56.7, cr = 9.04 },
  },
}

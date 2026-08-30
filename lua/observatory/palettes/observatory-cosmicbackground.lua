-- observatory-cosmicbackground -- the oldest light there is, as a temperature map
--
-- Source: ESA's Planck all-sky map of the cosmic microwave background, 2013:
-- the light released when the universe cooled enough for atoms to hold
-- together, three hundred and eighty thousand years in, stretched by the
-- fourteen billion years it has crossed since into microwaves at 2.725 K.
--
-- Image: Cosmic microwave background -- Planck, all-sky temperature map.
-- ESA and the Planck Collaboration.
-- Sampled at 4000 x 2000; 78% of the frame carried light.
--
-- There is no photograph here, only a scale. The real sky is one shade of
-- microwave to a part in a hundred thousand, and the blue and gold mottling
-- everyone recognises is those hundred-thousandths -- the seeds of every
-- galaxy -- rendered as cold and hot. So this palette is a color scale rather
-- than a picture of a thing, and it happens to be a good one: cyan and pale
-- green through tan to gold, evenly spread, the two halves of the wheel in
-- almost equal measure -- 42 per cent cool against 39 warm.
--
-- Roles follow area, and because a temperature scale is by construction even,
-- so is this palette: no color takes more than a quarter of the frame.
--
-- What is in the frame, and the roles it takes:
--
--   mean          hue  81  16.93 contrast  15.5% of frame   modules
--   warm          hue  48  15.42 contrast  18.6% of frame   properties
--   cold          hue 187  14.43 contrast  25.1% of frame   strings, functions
--   hot           hue  42  13.57 contrast  12.7% of frame   numbers, operators
--   hottest       hue 203  10.25 contrast   8.9% of frame   macros, imports
--   cool          hue  36   7.75 contrast   9.5% of frame   types
--   deepest       hue 209   7.02 contrast   4.0% of frame   escapes
--   coldest       hue 214   4.74 contrast   5.9% of frame   keywords
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
-- and the closest pair of adjacent-capable roles sits at 17.7 Delta E.

return {
  name = "observatory-cosmicbackground",
  about = "the oldest light there is, as a temperature map",
  floor = 17.7,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#070f10",
  bg_float = "#0a1719",
  bg_sel = "#112b32",
  bg_hl = "#133a3d",
  border = "#1e464c",
  bg_search = "#255c68",
  nontext = "#1f3d3e",

  -- the text ladder
  text = "#ccd1d1",
  dim = "#9caeb1",
  punct = "#98a1a1",
  comment = "#5c7e84",
  lnr = "#496a6f",
  lnr_cur = "#8eabae",

  -- syntax roles
  str = "#9fe1ea",
  num = "#fac95b",
  typ = "#d68e1f",
  mod = "#d7f0a9",
  prop = "#e7ddb7",
  func = "#9fe1ea",
  kw = "#3878cd",
  op = "#fac95b",
  macro = "#7abde6",
  esc = "#579ad8",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#e0c478",
  info = "#d7f0a9",
  hint = "#9fe1ea",
  ok = "#29b16d",
  accent = "#9fe1ea",
  cursearch = "#3878cd",
  subst = "#9fe1ea",
  match = "#e0c478",
  title = "#9fe1ea",
  dir = "#d68e1f",
  label = "#3878cd",
  tag = "#3878cd",
  h1 = "#3878cd",
  h2 = "#9fe1ea",
  h3 = "#9fe1ea",
  h4 = "#d68e1f",
  h5 = "#d7f0a9",
  h6 = "#fac95b",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#151e05",
  diff_text = "#253409",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#131b05",
  vt_hint = "#05191b",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "cold", hue = 187, chroma = 21.6, cr = 14.43 },
    { key = "hot", hue = 42, chroma = 60.3, cr = 13.57 },
    { key = "cool", hue = 36, chroma = 66.7, cr = 7.75 },
    { key = "mean", hue = 81, chroma = 37.4, cr = 16.93 },
    { key = "warm", hue = 48, chroma = 20.1, cr = 15.42 },
    { key = "coldest", hue = 214, chroma = 50.6, cr = 4.74 },
    { key = "hottest", hue = 203, chroma = 29.0, cr = 10.25 },
    { key = "deepest", hue = 209, chroma = 38.1, cr = 7.02 },
  },
}

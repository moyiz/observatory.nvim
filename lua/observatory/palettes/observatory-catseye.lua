-- observatory-catseye -- concentric shells in lilac and slate, eleven of them
--
-- Source: Hubble's 2004 ACS portrait of NGC 6543, the one that resolved the
-- nebula into eleven concentric shells and showed they are not shells at all
-- but the cross-sections of a series of expanding bubbles, each blown roughly
-- fifteen hundred years after the last. It is the image the name summons, and
-- it is a good deal cooler in color than the 1994 one most people remember.
--
-- Image: Cat's Eye Nebula (NGC 6543) -- Hubble Space Telescope, ACS.
-- ESA, NASA, HEIC and The Hubble Heritage Team (STScI/AURA).
-- Sampled at 1417 x 1417; 38% of the frame carried light.
--
-- The frame is lilac and slate almost throughout: a dying star's shells lit
-- from inside, where nitrogen and hydrogen emission arrive mapped to blue and
-- the structure comes from brightness rather than from hue. Only the outer
-- halo turns, and it turns dusty rose. So the palette is a lilac near-
-- monochrome with two warm colors held in reserve for the smallest roles,
-- which is the proportion the picture has: 78 per cent of the lit frame is
-- cool, and the rose and salmon between them cover eleven.
--
-- Roles follow area. The shells are 39 per cent of the lit frame and take
-- strings; the dark space between them is 21 and takes the dimmest role it
-- can legibly hold.
--
-- What is in the frame, and the roles it takes:
--
--   outer         hue 256  16.92 contrast  24.1% of frame   functions, numbers, escapes
--   jets          hue 230  12.71 contrast  14.1% of frame   properties
--   halo          hue 356  11.00 contrast   6.0% of frame   keywords, macros, imports
--   rim           hue 327   5.95 contrast   3.1% of frame   types
--   shells        hue 220   4.70 contrast  52.7% of frame   strings, operators, modules
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
-- and the closest pair of adjacent-capable roles sits at 17.4 Delta E.
--
-- The frame is faint: its colors average 11 chroma, where a palette
-- needs something nearer twenty-six to keep ten kinds of token apart.
-- So all of them were scaled by 2.3, uniformly. Every hue, every ratio
-- between the colors and every proportion of the frame is the picture's;
-- only the overall saturation is the display's, in the way that a print of
-- a photograph has its own.
--
-- 1 of the 6 colors sampled from the frame were folded into their
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
  name = "observatory-catseye",
  about = "concentric shells in lilac and slate, eleven of them",
  floor = 17.4,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#0a0e16",
  bg_float = "#0d1524",
  bg_sel = "#19264a",
  bg_hl = "#1d365c",
  border = "#2a406d",
  bg_search = "#37509b",
  nontext = "#283952",

  -- the text ladder
  text = "#c5c8ca",
  dim = "#a2acb6",
  punct = "#8ea4b4",
  comment = "#73787f",
  lnr = "#53687a",
  lnr_cur = "#98a8b4",

  -- syntax roles
  str = "#5c77ad",
  num = "#eae3fe",
  typ = "#a77c94",
  mod = "#5c77ad",
  prop = "#bdc7fa",
  func = "#eae3fe",
  kw = "#eeaaae",
  op = "#5c77ad",
  macro = "#eeaaae",
  esc = "#eae3fe",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#5c77ad",
  hint = "#5c77ad",
  ok = "#29b16d",
  accent = "#eae3fe",
  cursearch = "#eeaaae",
  subst = "#5c77ad",
  match = "#edc24a",
  title = "#eae3fe",
  dir = "#a77c94",
  label = "#eeaaae",
  tag = "#eeaaae",
  h1 = "#eeaaae",
  h2 = "#eae3fe",
  h3 = "#5c77ad",
  h4 = "#a77c94",
  h5 = "#5c77ad",
  h6 = "#eae3fe",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#0a1a3a",
  diff_text = "#112d63",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#091732",
  vt_hint = "#081530",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "shells", hue = 220, chroma = 32.2, cr = 4.70 },
    { key = "outer", hue = 256, chroma = 14.2, cr = 16.92 },
    { key = "rim", hue = 327, chroma = 21.6, cr = 5.95 },
    { key = "jets", hue = 230, chroma = 27.2, cr = 12.71 },
    { key = "halo", hue = 356, chroma = 26.7, cr = 11.00 },
  },
}

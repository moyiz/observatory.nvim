-- observatory-trifid -- three dust lanes across pink hydrogen, and a blue reflection
--
-- Source: ESO's GigaGalaxy Zoom frame of M20, taken with the Wide Field
-- Imager on the MPG/ESO 2.2-meter at La Silla. Unusually for this batch the
-- color is close to natural: broad filters, no narrowband mapping, so the
-- pink really is what hydrogen does and the blue really is scattered light.
--
-- Image: Trifid Nebula (M20) -- MPG/ESO 2.2 m, Wide Field Imager (GigaGalaxy Zoom).
-- ESO.
-- Sampled at 3497 x 5752; 84% of the frame carried light.
--
-- The Trifid is two nebulae in one frame. The pink is an emission nebula --
-- hydrogen recombining after being ionised by the young stars inside it --
-- and it fills two thirds of the lit area. The blue is a reflection nebula,
-- dust scattering starlight, and it holds a fifth. The three dark lanes that
-- give the object its name are dust in front, and they arrive in the palette
-- as the dim rose that the smallest roles carry. So: a pink scheme with one
-- substantial blue, in the proportion the photograph has.
--
-- Roles follow area. Pink at 23 per cent takes strings, the pale lilac haze at
-- 21 takes functions and keywords, and the slate reflection at 19 takes the
-- roles that need a cool color to sit against them.
--
-- What is in the frame, and the roles it takes:
--
--   reflection    hue 324  16.94 contrast  18.8% of frame   modules
--   emission      hue 343  13.34 contrast  26.8% of frame   functions, properties
--   hydrogen      hue 344  11.02 contrast  16.5% of frame   operators, macros, imports
--   haze          hue 218  10.32 contrast  25.8% of frame   keywords, types, numbers
--   lanes         hue 352   6.01 contrast   3.1% of frame   escapes
--   core          hue 214   4.70 contrast   9.1% of frame   strings
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
-- and the closest pair of adjacent-capable roles sits at 15.2 Delta E.
--
-- The frame is faint: its colors average 22 chroma, where a palette
-- needs something nearer twenty-six to keep ten kinds of token apart.
-- So all of them were scaled by 1.2, uniformly. Every hue, every ratio
-- between the colors and every proportion of the frame is the picture's;
-- only the overall saturation is the display's, in the way that a print of
-- a photograph has its own.
--
-- 1 of the 7 colors sampled from the frame were folded into their
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
  name = "observatory-trifid",
  about = "three dust lanes across pink hydrogen, and a blue reflection",
  floor = 15.2,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#190b10",
  bg_float = "#240e14",
  bg_sel = "#461722",
  bg_hl = "#5f1e35",
  border = "#6d2a3e",
  bg_search = "#933349",
  nontext = "#552a3a",

  -- the text ladder
  text = "#c6c0c1",
  dim = "#b9a6ab",
  punct = "#a0969a",
  comment = "#8e7078",
  lnr = "#795d66",
  lnr_cur = "#b99fa8",

  -- syntax roles
  str = "#5e799d",
  num = "#a0b7de",
  typ = "#a0b7de",
  mod = "#f9e0ef",
  prop = "#f8bfcf",
  func = "#f8bfcf",
  kw = "#a0b7de",
  op = "#fca2ba",
  macro = "#fca2ba",
  esc = "#d06a77",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#f9e0ef",
  hint = "#5e799d",
  ok = "#29b16d",
  accent = "#f8bfcf",
  cursearch = "#a0b7de",
  subst = "#5e799d",
  match = "#edc24a",
  title = "#f8bfcf",
  dir = "#a0b7de",
  label = "#a0b7de",
  tag = "#a0b7de",
  h1 = "#a0b7de",
  h2 = "#f8bfcf",
  h3 = "#5e799d",
  h4 = "#a0b7de",
  h5 = "#f9e0ef",
  h6 = "#a0b7de",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#350924",
  diff_text = "#5a103d",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#300820",
  vt_hint = "#08172b",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "core", hue = 214, chroma = 22.5, cr = 4.70 },
    { key = "haze", hue = 218, chroma = 22.2, cr = 10.32 },
    { key = "reflection", hue = 324, chroma = 11.8, cr = 16.94 },
    { key = "emission", hue = 343, chroma = 22.8, cr = 13.34 },
    { key = "hydrogen", hue = 344, chroma = 36.4, cr = 11.02 },
    { key = "lanes", hue = 352, chroma = 43.0, cr = 6.01 },
  },
}

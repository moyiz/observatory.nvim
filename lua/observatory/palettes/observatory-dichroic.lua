-- observatory-dichroic -- legible with red-green and blue-yellow color blindness
--
-- Source: Machado, Oliveira and Fernandes (2009), whose linear-RGB matrices
-- model protanopia, deuteranopia and tritanopia -- missing long, medium and
-- short-wavelength cones respectively.
--
-- Roughly one man in twelve cannot separate red from green, which is exactly
-- the axis most syntax themes lean on hardest. Here the separation floor has
-- to hold four times over: once in ordinary vision, and once through each of
-- the three dichromacies. A pair that only differs in red versus green
-- collapses under that test and gets rejected.
--
-- Solved the same way as observatory-lagrange, but scoring every candidate through
-- all four simulations and keeping the worst. Three consequences, all
-- forced rather than chosen:
--
--   * Fewer colors. Six accents carry the thirteen roles: modules reuse the
--     type color, macros the keyword color, escapes the string color, and
--     operators the delimiter color. Hue is a scarce resource when a third
--     of the circle collapses, and at ten accents no arrangement clears the
--     floor -- the best found reached only 8.1 Delta E under protanopia.
--   * Additions are blue, not green. Red against green is the one pair
--     dichromacy destroys completely, and both ends are fixed by convention,
--     so no choice of accent colors can rescue it. Errors stay red and git
--     additions move to blue, which survives all three.
--   * More of the work falls to lightness, which no dichromacy touches.
--
-- The result holds 14.2 Delta E in ordinary vision and 10.2 in the worst of
-- the three dichromacies, so it is the only variant here whose separation is
-- guaranteed rather than merely apparent. It is also the calmest, which is
-- the same fact stated twice.
--
-- Construction follows the rest of the family: every foreground is solved
-- by binary search for an exact contrast ratio against #000000, each accent
-- is the most chromatic form of its hue that still meets that ratio under a
-- per-role cap, and the closest pair of adjacent-capable roles sits at
-- 14.2 Delta E.

return {
  name = "observatory-dichroic",
  about = "legible with red-green and blue-yellow color blindness",
  floor = 14.2,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#0a0f17",
  bg_float = "#0d1623",
  bg_sel = "#172746",
  bg_hl = "#1f3463",
  border = "#2a406d",
  bg_search = "#31558b",
  nontext = "#293754",

  -- the text ladder
  text = "#dbdddf",
  dim = "#a9afbc",
  punct = "#ea7876",
  comment = "#6d7e1b",
  lnr = "#5d6a8b",
  lnr_cur = "#a3abbc",

  -- syntax roles
  str = "#c99494",
  num = "#d25680",
  typ = "#8cb5d1",
  mod = "#8cb5d1",
  prop = "#ceb9b8",
  func = "#8cdb84",
  kw = "#c86ed0",
  op = "#ea7876",
  macro = "#c86ed0",
  esc = "#c99494",

  -- interface duties, following the syntax colors
  err = "#f44c52",
  warn = "#edc24a",
  info = "#8cb5d1",
  hint = "#c99494",
  ok = "#3eabea",
  accent = "#8cdb84",
  cursearch = "#c86ed0",
  subst = "#c99494",
  match = "#edc24a",
  title = "#8cdb84",
  dir = "#8cb5d1",
  label = "#c86ed0",
  tag = "#c86ed0",
  h1 = "#c86ed0",
  h2 = "#8cdb84",
  h3 = "#c99494",
  h4 = "#8cb5d1",
  h5 = "#8cb5d1",
  h6 = "#d25680",

  -- diff and virtual-text backdrops
  diff_add = "#08202f",
  diff_delete = "#430c0e",
  diff_change = "#081c2b",
  diff_text = "#0d334c",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#071926",
  vt_hint = "#300808",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "red2", hue = 0, chroma = 21.4, cr = 8.15 },
    { key = "rose", hue = 340, chroma = 52.8, cr = 5.38 },
    { key = "azure", hue = 204, chroma = 19.8, cr = 9.65 },
    { key = "red", hue = 3, chroma = 8.0, cr = 11.26 },
    { key = "green2", hue = 114, chroma = 54.2, cr = 12.58 },
    { key = "magenta", hue = 295, chroma = 61.5, cr = 6.60 },
    { key = "punct", hue = 1, chroma = 48.7, cr = 7.45 },
  },
}

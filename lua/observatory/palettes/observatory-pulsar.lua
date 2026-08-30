-- observatory-pulsar -- maximum contrast, and pale because of it
--
-- Every contrast target pushed as high as it will go: a palette solved for
-- brightness rather than for a spectrum. Plain text sits at 19.4 against
-- black, where 21.0 is pure white, and the accents run 12.2 to 17.6 where the
-- rest of the family runs 6 to 12.
--
-- The interesting part is what that costs, because it is not free. Chroma and
-- contrast trade against each other on a black background: at 8.0 contrast the
-- most saturated blue available has chroma 49, at 12.0 it is 31, at 16.0 only 14
-- and at 18.0 just 9. So a maximum-contrast scheme cannot also be a colorful
-- one -- the palette is forced pale, and this file is bright rather than vivid.
-- Hues are spread as widely as possible to compensate, since with so little
-- chroma to work with, direction is all the separation there is.
--
-- Diagnostics run the other way here, deliberately. In a scheme where
-- everything is bright, the way to make an error stand out is to make it dark:
-- the error red sits at 6.60, the dimmest value in the file apart from line
-- numbers.
--
-- Construction follows the rest of the family: every foreground is solved
-- by binary search for an exact contrast ratio against #000000, each accent
-- is the most chromatic form of its hue that still meets that ratio under a
-- per-role cap, and the closest pair of adjacent-capable roles sits at
-- 10.3 Delta E.

return {
  name = "observatory-pulsar",
  about = "maximum contrast, and pale because of it",
  floor = 10.3,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#0b1019",
  bg_float = "#0f1826",
  bg_sel = "#1a2b4e",
  bg_hl = "#22386c",
  border = "#2f4779",
  bg_search = "#385d96",
  nontext = "#2f3f5f",

  -- the text ladder
  text = "#f5f6f6",
  dim = "#d0d3d8",
  punct = "#b4bcc9",
  comment = "#99a0af",
  lnr = "#7684a4",
  lnr_cur = "#dcdee2",

  -- syntax roles
  str = "#6ce6ef",
  num = "#f9b3c1",
  typ = "#b5cafb",
  mod = "#ead1fb",
  prop = "#faebb1",
  func = "#c4e7fc",
  kw = "#ead1fb",
  op = "#9da3cf",
  macro = "#b5cafb",
  esc = "#f9b3c1",

  -- interface duties, following the syntax colors
  err = "#f65b61",
  warn = "#ecb727",
  info = "#b5cafb",
  hint = "#6ce6ef",
  ok = "#26c671",
  accent = "#c4e7fc",
  cursearch = "#ead1fb",
  subst = "#f9b3c1",
  match = "#faebb1",
  title = "#c4e7fc",
  dir = "#b5cafb",
  label = "#ead1fb",
  tag = "#ead1fb",
  h1 = "#ead1fb",
  h2 = "#c4e7fc",
  h3 = "#faebb1",
  h4 = "#6ce6ef",
  h5 = "#f9b3c1",
  h6 = "#b5cafb",

  -- diff and virtual-text backdrops
  diff_add = "#062314",
  diff_delete = "#430c0e",
  diff_change = "#0b193c",
  diff_text = "#122c67",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#091635",
  vt_hint = "#05191a",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "cyan", hue = 184, chroma = 34.9, cr = 14.20 },
    { key = "rose", hue = 348, chroma = 27.6, cr = 12.25 },
    { key = "azure", hue = 222, chroma = 26.6, cr = 12.81 },
    { key = "lilac", hue = 276, chroma = 23.7, cr = 15.01 },
    { key = "cream", hue = 48, chroma = 30.2, cr = 17.58 },
    { key = "ice", hue = 202, chroma = 15.6, cr = 16.18 },
    { key = "steel", hue = 233, chroma = 24.3, cr = 8.57 },
  },
}

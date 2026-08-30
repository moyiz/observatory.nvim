-- observatory-enaiposha -- a steam world in silhouette against a red dwarf
--
-- Source: the 2012 Hubble release that announced GJ 1214 b as a new class of
-- planet: too light to be rocky, too dense to be a gas giant, with a spectrum
-- best matched by a thick steam atmosphere. Webb has since measured its
-- atmosphere directly and found it heavy in carbon dioxide and methane. The
-- planet was named Enaiposha in the IAU's 2022 campaign, by a team from Kenya,
-- after the Maa word for a large body of water -- given for the waterworld it
-- was thought to be -- and its red dwarf was named Orkaria, for red ochre.
--
-- Image: GJ 1214 b (IAU name Enaiposha) -- artist impression, ESA/Hubble (heic1204a).
-- NASA, ESA, and D. Aguilar (Harvard-Smithsonian Center for Astrophysics).
-- Sampled at 1280 x 1280; 52% of the frame carried light.
--
-- The frame is dominated by the red dwarf rather than the planet: coral and
-- flame red over most of it, with the planet a dark silhouette and a single
-- slate blue behind. That is the proportion the palette keeps -- red across the
-- syntax, one cool color held for a small role -- because in the picture the
-- planet is the smallest thing in view.
--
-- Roles follow area over the eight sampled colors.
--
-- What is in the frame, and the roles it takes:
--
--   star          hue   9  16.90 contrast  72.9% of frame   strings, functions, macros, imports
--   flare         hue   8  10.97 contrast   5.0% of frame   keywords, operators
--   glow          hue 219   7.95 contrast  19.0% of frame   properties, numbers, escapes
--   corona        hue 218   4.70 contrast   3.1% of frame   types, modules
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
-- and the closest pair of adjacent-capable roles sits at 9.6 Delta E.
--
-- 4 of the 8 colors sampled from the frame were folded into their
-- nearest neighbour rather than kept: at this subject's hue span there is
-- not enough lightness left to hold that many apart at the family's
-- separation floor, and two colors a reader cannot distinguish are one
-- color. The folded share went to the neighbour, so the proportions of
-- the frame are still what the roles follow.

return {
  name = "observatory-enaiposha",
  about = "a steam world in silhouette against a red dwarf",
  floor = 9.6,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#180b0a",
  bg_float = "#23100d",
  bg_sel = "#401e15",
  bg_hl = "#5e221e",
  border = "#673128",
  bg_search = "#86402f",
  nontext = "#552d2a",

  -- the text ladder
  text = "#ccc5c4",
  dim = "#b7a7a4",
  punct = "#ab8d8a",
  comment = "#92756f",
  lnr = "#7a5e5a",
  lnr_cur = "#b9a09e",

  -- syntax roles
  str = "#fee0db",
  num = "#88a0cc",
  typ = "#63789d",
  mod = "#63789d",
  prop = "#88a0cc",
  func = "#fee0db",
  kw = "#fca597",
  op = "#fca597",
  macro = "#fee0db",
  esc = "#88a0cc",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#63789d",
  hint = "#fee0db",
  ok = "#29b16d",
  accent = "#fee0db",
  cursearch = "#fca597",
  subst = "#fee0db",
  match = "#edc24a",
  title = "#fee0db",
  dir = "#63789d",
  label = "#fca597",
  tag = "#fca597",
  h1 = "#fca597",
  h2 = "#fee0db",
  h3 = "#fee0db",
  h4 = "#63789d",
  h5 = "#63789d",
  h6 = "#88a0cc",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#0a1b38",
  diff_text = "#112e60",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#091732",
  vt_hint = "#2b0d08",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "star", hue = 9, chroma = 11.4, cr = 16.90 },
    { key = "glow", hue = 219, chroma = 25.3, cr = 7.95 },
    { key = "corona", hue = 218, chroma = 22.5, cr = 4.70 },
    { key = "flare", hue = 8, chroma = 36.8, cr = 10.97 },
  },
}

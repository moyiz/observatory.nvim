-- observatory-tatooine -- two suns, one silhouette, and every color warm
--
-- Source: NASA/JPL-Caltech's 2011 concept for Kepler-16 b, drawn for the
-- announcement and drawn as a double sunset on purpose. The planet orbits two
-- stars at once -- a K dwarf and a red dwarf circling each other every 41 days,
-- with the planet going round both every 229 -- which is the arrangement
-- theorists had argued would be unstable, and Kepler found it by watching the
-- planet transit each star in turn. It is Saturn-sized, cold, and almost
-- certainly gaseous, so nobody is standing on it watching anything; the name is
-- entirely unofficial and completely established.
--
-- Image: Kepler-16 b, the first confirmed circumbinary planet -- artist's concept, NASA/JPL-Caltech (PIA14724, 2011).
-- NASA/JPL-Caltech.
-- Sampled at 8000 x 6000; 39% of the frame carried light.
--
-- The frame is the two stars rather than the planet: the K dwarf fills the
-- middle in cream and white inside a burnt-sienna corona, the red dwarf transits
-- across it as a small rust disc, and the planet is a hard black silhouette on
-- its lower edge. So the palette is every warm value there is and no cool one at
-- all -- more than half the lit frame is one near-white cream, with amber,
-- sienna and one saturated red for the second star -- and the planet
-- contributes nothing to it, because in this picture the planet is a hole.
--
-- Roles follow area. The scheme therefore has a bright top and a very warm
-- middle, which is a hazard the family has hit before: `observatory-dimidium`
-- is another warm hot-Jupiter concept and the two are held apart mainly by how
-- much of each frame is lit -- 39 per cent here against six.
--
-- What is in the frame, and the roles it takes:
--
--   primary       hue  41  16.93 contrast  51.5% of frame   strings, numbers
--   glow          hue  27   7.88 contrast  16.8% of frame   properties, macros, imports
--   corona        hue  27   6.02 contrast  28.0% of frame   functions, types, operators
--   secondary     hue  21   5.92 contrast   0.5% of frame   modules, escapes
--   inner         hue  12   4.72 contrast   3.3% of frame   keywords
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
-- and the closest pair of adjacent-capable roles sits at 9.4 Delta E.
--
-- 1 of the 6 colors sampled from the frame were folded into their
-- nearest neighbour rather than kept: at this subject's hue span there is
-- not enough lightness left to hold that many apart at the family's
-- separation floor, and two colors a reader cannot distinguish are one
-- color. The folded share went to the neighbour, so the proportions of
-- the frame are still what the roles follow.

return {
  name = "observatory-tatooine",
  about = "two suns, one silhouette, and every color warm",
  floor = 9.4,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#120e08",
  bg_float = "#1a150a",
  bg_sel = "#302710",
  bg_hl = "#453216",
  border = "#4e3e1e",
  bg_search = "#635323",
  nontext = "#433621",

  -- the text ladder
  text = "#c9c7c1",
  dim = "#b1aa9c",
  punct = "#9f927e",
  comment = "#847b67",
  lnr = "#6e6450",
  lnr_cur = "#afa591",

  -- syntax roles
  str = "#f8e5bd",
  num = "#f8e5bd",
  typ = "#b37e52",
  mod = "#ce6e3b",
  prop = "#d78e53",
  func = "#b37e52",
  kw = "#d9411c",
  op = "#b37e52",
  macro = "#d78e53",
  esc = "#ce6e3b",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#ce6e3b",
  hint = "#f8e5bd",
  ok = "#29b16d",
  accent = "#b37e52",
  cursearch = "#d9411c",
  subst = "#f8e5bd",
  match = "#edc24a",
  title = "#b37e52",
  dir = "#b37e52",
  label = "#d9411c",
  tag = "#d9411c",
  h1 = "#d9411c",
  h2 = "#b37e52",
  h3 = "#f8e5bd",
  h4 = "#b37e52",
  h5 = "#ce6e3b",
  h6 = "#f8e5bd",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#2c1508",
  diff_text = "#4d240e",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#281207",
  vt_hint = "#1c1505",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "primary", hue = 41, chroma = 21.9, cr = 16.93 },
    { key = "corona", hue = 27, chroma = 35.6, cr = 6.02 },
    { key = "secondary", hue = 21, chroma = 55.9, cr = 5.92 },
    { key = "glow", hue = 27, chroma = 47.7, cr = 7.88 },
    { key = "inner", hue = 12, chroma = 78.5, cr = 4.72 },
  },
}

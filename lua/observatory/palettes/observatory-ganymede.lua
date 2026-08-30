-- observatory-ganymede -- grooved terrain in tan, and the frost at its poles
--
-- Source: JunoCam's perijove 34 composite, June 2021, the closest look at
-- Ganymede since Galileo. It is the largest moon in the solar system, larger
-- than Mercury, and the only one with a magnetic field of its own.
--
-- Image: Ganymede -- Juno, JunoCam, perijove 34.
-- NASA/JPL-Caltech/SwRI/MSSS; processing Kevin M. Gill.
-- Sampled at 3445 x 3445; 58% of the frame carried light.
--
-- Ganymede is a two-tone world in every textbook -- dark ancient terrain
-- against pale grooved terrain -- and the frame agrees, but the two tones are
-- both tan and only a few points of chroma apart. Every sampled color lies
-- inside a thirty-degree wedge, the narrowest hue span of any world here after
-- Pluto and Arrokoth, so the scheme separates by lightness and lets the
-- polar frost provide the one bright note.
--
-- Roles follow area over the five largest sampled colors: the sixth is
-- another tan within a couple of points of the second, and keeping it produced
-- a pair too close to tell apart.
--
-- What is in the frame, and the roles it takes:
--
--   sulcus        hue  31  16.91 contrast  55.3% of frame   strings, keywords, operators, escapes
--   plain         hue  36  13.77 contrast  38.5% of frame   functions, properties, modules
--   frost         hue  40  11.49 contrast   2.4% of frame   types
--   dark          hue  24   4.75 contrast   3.9% of frame   numbers, macros, imports
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
-- and the closest pair of adjacent-capable roles sits at 16.7 Delta E.
--
-- The frame is faint: its colors average 8 chroma, where a palette
-- needs something nearer twenty-six to keep ten kinds of token apart.
-- So all of them were scaled by 3.3, uniformly. Every hue, every ratio
-- between the colors and every proportion of the frame is the picture's;
-- only the overall saturation is the display's, in the way that a print of
-- a photograph has its own.
--
-- 1 of the 5 colors sampled from the frame were folded into their
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
  name = "observatory-ganymede",
  about = "grooved terrain in tan, and the frost at its poles",
  floor = 16.7,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#140d08",
  bg_float = "#1c140b",
  bg_sel = "#342511",
  bg_hl = "#4b2f18",
  border = "#543c21",
  bg_search = "#6c5026",
  nontext = "#473423",

  -- the text ladder
  text = "#ceccc9",
  dim = "#b2aa9d",
  punct = "#b0a293",
  comment = "#817764",
  lnr = "#706350",
  lnr_cur = "#b0a493",

  -- syntax roles
  str = "#fae3ca",
  num = "#a16c48",
  typ = "#e3ba69",
  mod = "#efcc99",
  prop = "#efcc99",
  func = "#efcc99",
  kw = "#fae3ca",
  op = "#fae3ca",
  macro = "#a16c48",
  esc = "#fae3ca",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#efcc99",
  hint = "#fae3ca",
  ok = "#29b16d",
  accent = "#efcc99",
  cursearch = "#fae3ca",
  subst = "#fae3ca",
  match = "#edc24a",
  title = "#efcc99",
  dir = "#e3ba69",
  label = "#fae3ca",
  tag = "#fae3ca",
  h1 = "#fae3ca",
  h2 = "#efcc99",
  h3 = "#fae3ca",
  h4 = "#e3ba69",
  h5 = "#efcc99",
  h6 = "#a16c48",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#251907",
  diff_text = "#412c0c",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#211606",
  vt_hint = "#201406",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "sulcus", hue = 31, chroma = 15.6, cr = 16.91 },
    { key = "dark", hue = 24, chroma = 33.3, cr = 4.75 },
    { key = "frost", hue = 40, chroma = 46.5, cr = 11.49 },
    { key = "plain", hue = 36, chroma = 30.5, cr = 13.77 },
  },
}

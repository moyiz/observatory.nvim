-- observatory-triton -- cantaloupe terrain under a pink nitrogen cap
--
-- Source: Voyager 2's 1989 mosaic, the only close look anyone has had. Triton
-- orbits Neptune backwards, which means it was captured rather than formed
-- there, and it was found to be geologically active: Voyager caught plumes of
-- nitrogen rising eight kilometers from the polar cap.
--
-- Image: Triton -- Voyager 2, ISS mosaic, 1989.
-- NASA/JPL/USGS.
-- Sampled at 4700 x 4700; 50% of the frame carried light.
--
-- The mosaic is pale and barely colored -- a pinkish gray over the cap, a
-- neutral gray across the cantaloupe terrain, a faint blue-gray at the
-- northern limb -- so the pale path lifts the frame's warm-cool split rather
-- than leaving the scheme in monochrome. What comes out is a pink-and-slate
-- palette, which is the arrangement the mosaic has once it is strong enough to
-- see.
--
-- Roles follow area, and the amplification is uniform.
--
-- What is in the frame, and the roles it takes:
--
--   cap           hue  22  16.92 contrast  77.0% of frame   strings, functions, operators, modules
--   frost         hue 192  15.28 contrast   7.3% of frame   keywords, numbers
--   dimple        hue 104   6.06 contrast   5.8% of frame   types, macros, imports, escapes
--   terrain       hue  72   4.68 contrast  10.0% of frame   properties
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
-- and the closest pair of adjacent-capable roles sits at 8.5 Delta E.
--
-- The frame is faint: its colors average 5 chroma, where a palette
-- needs something nearer twenty-six to keep ten kinds of token apart.
-- So all of them were scaled by 1.9, uniformly. Every hue, every ratio
-- between the colors and every proportion of the frame is the picture's;
-- only the overall saturation is the display's, in the way that a print of
-- a photograph has its own.
--
-- 2 of the 6 colors sampled from the frame were folded into their
-- nearest neighbour rather than kept: at this subject's hue span there is
-- not enough lightness left to hold that many apart at the family's
-- separation floor, and two colors a reader cannot distinguish are one
-- color. The folded share went to the neighbour, so the proportions of
-- the frame are still what the roles follow.

return {
  name = "observatory-triton",
  about = "cantaloupe terrain under a pink nitrogen cap",
  floor = 8.5,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#150c09",
  bg_float = "#1e120b",
  bg_sel = "#382313",
  bg_hl = "#522b1a",
  border = "#5b3824",
  bg_search = "#754b29",
  nontext = "#4c3126",

  -- the text ladder
  text = "#cbc6c3",
  dim = "#b5a9a1",
  punct = "#a98e83",
  comment = "#8c7769",
  lnr = "#766054",
  lnr_cur = "#b5a399",

  -- syntax roles
  str = "#f7e3d7",
  num = "#d2dee1",
  typ = "#828d7e",
  mod = "#f7e3d7",
  prop = "#757965",
  func = "#f7e3d7",
  kw = "#d2dee1",
  op = "#f7e3d7",
  macro = "#828d7e",
  esc = "#828d7e",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#f7e3d7",
  hint = "#f7e3d7",
  ok = "#29b16d",
  accent = "#f7e3d7",
  cursearch = "#d2dee1",
  subst = "#f7e3d7",
  match = "#edc24a",
  title = "#f7e3d7",
  dir = "#828d7e",
  label = "#d2dee1",
  tag = "#d2dee1",
  h1 = "#d2dee1",
  h2 = "#f7e3d7",
  h3 = "#f7e3d7",
  h4 = "#828d7e",
  h5 = "#f7e3d7",
  h6 = "#d2dee1",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#2c1608",
  diff_text = "#4c250d",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#261307",
  vt_hint = "#241106",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "cap", hue = 22, chroma = 9.6, cr = 16.92 },
    { key = "frost", hue = 192, chroma = 4.5, cr = 15.28 },
    { key = "dimple", hue = 104, chroma = 9.6, cr = 6.06 },
    { key = "terrain", hue = 72, chroma = 11.7, cr = 4.68 },
  },
}

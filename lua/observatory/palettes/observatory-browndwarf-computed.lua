-- observatory-browndwarf-computed -- the failed stars, and the one honest purple here
--
-- Source: brown dwarfs -- objects under about seventy-five Jupiter masses,
-- which never get hot enough in the core to fuse hydrogen and so spend their
-- lives cooling. The sequence runs L, T, Y, from around 2,200 K at the top to
-- the coldest one known at roughly 250 K, which is colder than a summer
-- afternoon on Earth. What makes them interesting to a palette is sodium and
-- potassium: at these pressures their resonance lines are broadened into
-- troughs hundreds of nanometers wide, which shut the middle of the visible
-- spectrum. Two windows are left open, one in the blue near 470 nm and one in
-- the far red past 750, and the color of a brown dwarf is the sum of those
-- two. Each rung here is that sum, at the weighting its spectral type implies:
-- red-dominated for the dusty L dwarfs, balanced through the T sequence,
-- blue-dominated by Y.
--
-- Which produces the one hue the rest of this collection has no honest source
-- for. Red plus blue with the middle removed is magenta, and the ladder rotates
-- through it: pink-red at L0, magenta at L3, violet at L5, and then blue for
-- the coldest three as the red window closes. A hundred and forty-five degrees
-- of hue rotation driven by temperature alone, on objects that are all, by any
-- ordinary description, dark red.
--
-- The construction is a model, and it is worth being exact about why. Feed a
-- 900 K blackbody through this family's usual pipeline and it comes out red,
-- because at 900 K the blue flux is four orders of magnitude below the red.
-- That answer is wrong, and it is wrong for a documented reason: a brown dwarf
-- is not a blackbody. The depth you see into the atmosphere depends on opacity,
-- the blue window is where the opacity is lowest, and looking through it you
-- see hotter gas much deeper down. Synthetic spectra that account for this are
-- what put magenta in the literature, and the two-window mixture used here is a
-- transparent stand-in for them rather than a derivation from first principles.
--
-- The Y dwarf rung is the least defensible thing in the collection, and it is
-- kept for the shape of the sequence rather than for its color. An object at
-- 250 K emits essentially nothing in the visible band at all; you would not see
-- it, you would see through where it is. `observatory-tres2` has the same
-- problem with a planet, and solves it the same way -- by saying so.
--
-- Types, and the roles they take:
--
--   l0_dusty     hue 350   16.93 contrast   properties
--   l3           hue 332   12.38 contrast   functions
--   t8           hue 212    9.71 contrast   modules, strings
--   l5           hue 279    9.16 contrast   keywords, macros, imports
--   t2           hue 233    8.65 contrast   types
--   y1           hue 205    4.85 contrast   numbers, operators, escapes
--
-- Hues here are fixed by the source, since they are the part that
-- represents the world. Saturation and contrast were then solved within a
-- band around their authored values, so that every pair of colors that can
-- appear together -- including every pair with the error, warning and git
-- colors, which sit beside code in the sign column -- clears the family's
-- separation limit.
--
-- Construction follows the rest of the family: every foreground is solved
-- by binary search for an exact contrast ratio against #000000, each accent
-- is the most chromatic form of its hue that still meets that ratio under a
-- per-role cap, and the closest pair of adjacent-capable roles sits at
-- 17.5 Delta E.

return {
  name = "observatory-browndwarf-computed",
  about = "the failed stars, and the one honest purple here",
  floor = 17.5,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#0e0d1d",
  bg_float = "#15112d",
  bg_sel = "#2b1d58",
  bg_hl = "#30277d",
  border = "#413485",
  bg_search = "#5a3fb4",
  nontext = "#363163",

  -- the text ladder
  text = "#bcbbc1",
  dim = "#aba9b8",
  punct = "#787688",
  comment = "#7b71a3",
  lnr = "#675d98",
  lnr_cur = "#a6a4ba",

  -- syntax roles
  str = "#97b3d4",
  num = "#387fb3",
  typ = "#99a2e5",
  mod = "#97b3d4",
  prop = "#f9e1e5",
  func = "#ebb9d0",
  kw = "#cc97e8",
  op = "#387fb3",
  macro = "#cc97e8",
  esc = "#387fb3",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#97b3d4",
  hint = "#97b3d4",
  ok = "#29b16d",
  accent = "#ebb9d0",
  cursearch = "#cc97e8",
  subst = "#97b3d4",
  match = "#edc24a",
  title = "#ebb9d0",
  dir = "#99a2e5",
  label = "#cc97e8",
  tag = "#cc97e8",
  h1 = "#cc97e8",
  h2 = "#ebb9d0",
  h3 = "#97b3d4",
  h4 = "#99a2e5",
  h5 = "#97b3d4",
  h6 = "#387fb3",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#091b32",
  diff_text = "#0f3057",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#08182c",
  vt_hint = "#071629",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "t8", hue = 212, chroma = 19.9, cr = 9.71 },
    { key = "y1", hue = 205, chroma = 34.3, cr = 4.85 },
    { key = "t2", hue = 233, chroma = 36.9, cr = 8.65 },
    { key = "l0_dusty", hue = 350, chroma = 8.9, cr = 16.93 },
    { key = "l3", hue = 332, chroma = 22.1, cr = 12.38 },
    { key = "l5", hue = 279, chroma = 47.8, cr = 9.16 },
  },
}

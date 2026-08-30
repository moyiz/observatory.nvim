-- observatory-kilonova-computed -- a photosphere crossing the whole stellar locus in five days
--
-- Source: AT2017gfo, the optical counterpart of GW170817 -- two neutron stars
-- merging in NGC 4993, 130 million light years away, seen in gravitational
-- waves and then, eleven hours later, in visible light. It was blue on the first
-- night, at a photospheric temperature near 10,000 K, and red within three days,
-- and the reason is the one thing everybody wanted to know: the merger's ejecta
-- built heavy elements by rapid neutron capture, and lanthanides have such
-- enormous opacity that as soon as they formed the photosphere cooled and moved
-- into the infrared. Temperatures by epoch become sRGB through the Planck curve.
--
-- So the ladder is five days of one object, and it is the only scheme in the
-- collection that crosses the stellar locus from end to end. `observatory-hertzsprungrussell`,
-- `observatory-nightsky` and `observatory-albireo` all sample the locus at
-- several points; this one traverses it, and does so in the time it takes to
-- read a week's email.
--
-- The middle of that traverse is nearly colorless, and that is not a defect in
-- the palette. The Planckian locus runs from blue-white through white to orange:
-- at 10,000 K the computed chroma is 20, at 7,000 K it is 7, and by 1,800 K it
-- is 86. Night two of a kilonova genuinely looks like nothing in particular. The
-- palette therefore has one near-neutral accent in the middle of its ladder,
-- carrying function names, and the roles that want to be noticed are at the two
-- ends where the purity is.
--
-- What is missing is most of the event. The blue emission is thought to come
-- from a different part of the ejecta than the red, the whole thing was over in
-- the visible band within about a week, and the elements it made -- including,
-- on the usual accounting, a good fraction of the gold that exists -- are
-- inferred from infrared spectra that no display can show.
--
-- Epochs, and the roles they take:
--
--   half_day     hue 219   16.91 contrast   properties
--   day_one      hue 244   13.17 contrast   functions
--   day_one_half hue  26   10.13 contrast   types, modules
--   day_two_half hue  27    9.01 contrast   keywords, macros, imports
--   day_three_half hue  29    7.71 contrast   strings, escapes
--   day_five     hue  30    4.73 contrast   numbers, operators
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
-- 13.6 Delta E.

return {
  name = "observatory-kilonova-computed",
  about = "a photosphere crossing the whole stellar locus in five days",
  floor = 13.6,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#140d08",
  bg_float = "#1c140b",
  bg_sel = "#342511",
  bg_hl = "#4c2e18",
  border = "#563b21",
  bg_search = "#6d4f26",
  nontext = "#483324",

  -- the text ladder
  text = "#c9c6c4",
  dim = "#b2a9a1",
  punct = "#7d7772",
  comment = "#a18a6f",
  lnr = "#786049",
  lnr_cur = "#b1a498",

  -- syntax roles
  str = "#cf8f55",
  num = "#b26417",
  typ = "#c7b09e",
  mod = "#c7b09e",
  prop = "#e1e7f2",
  func = "#cccae7",
  kw = "#cea17c",
  op = "#b26417",
  macro = "#cea17c",
  esc = "#cf8f55",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#c7b09e",
  hint = "#cf8f55",
  ok = "#29b16d",
  accent = "#cccae7",
  cursearch = "#cea17c",
  subst = "#cf8f55",
  match = "#edc24a",
  title = "#cccae7",
  dir = "#c7b09e",
  label = "#cea17c",
  tag = "#cea17c",
  h1 = "#cea17c",
  h2 = "#cccae7",
  h3 = "#cf8f55",
  h4 = "#c7b09e",
  h5 = "#c7b09e",
  h6 = "#b26417",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#2a1607",
  diff_text = "#49280d",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#241406",
  vt_hint = "#211206",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "day_three_half", hue = 29, chroma = 44.2, cr = 7.71 },
    { key = "day_five", hue = 30, chroma = 58.8, cr = 4.73 },
    { key = "day_one_half", hue = 26, chroma = 13.4, cr = 10.13 },
    { key = "half_day", hue = 219, chroma = 6.0, cr = 16.91 },
    { key = "day_one", hue = 244, chroma = 15.4, cr = 13.17 },
    { key = "day_two_half", hue = 27, chroma = 28.2, cr = 9.01 },
  },
}

-- observatory-straggler -- one cluster's diagram, and the stars that break it
--
-- Source: the color-magnitude diagram of a globular cluster -- M3, where
-- Sandage found the anomaly in 1953. Every star in a cluster formed at the same
-- time out of the same material, so the diagram should be a single line: a main
-- sequence up to the turnoff where twelve billion years have burned the more
-- massive stars off it, a subgiant branch, a red giant branch to the tip, and a
-- horizontal branch of helium-burning stars running blue across the middle,
-- with the instability strip in it where the RR Lyrae variables sit. The rungs
-- are those populations: temperature through the Planck curve for the hue,
-- absolute magnitude for the contrast, so the ladder is the vertical axis of
-- the diagram.
--
-- The stragglers are the stars in the wrong place. They sit above and blueward
-- of the turnoff, where a cluster this old should have nothing at all, because
-- they are more massive than anything that has any business surviving. Two
-- things put them there: a close binary transferring mass onto its companion,
-- and -- in the crowded core, which is the one place in the galaxy where this
-- happens often enough to matter -- two stars colliding and merging. Either
-- way a straggler is a star that got fresh fuel long after the cluster stopped
-- making stars, so it is hotter and bluer than its own age allows.
--
-- The palette alternates warm and cool down the ladder because the diagram
-- does. The brightest thing in a globular cluster is the tip of the red giant
-- branch, at 4,000 K; the next brightest is the blue horizontal branch, at
-- 12,000; and the faintest is the white dwarf sequence, hotter than either.
-- Brightness and temperature are close to uncorrelated in an old population,
-- which is exactly what makes a cluster diagram worth reading -- and it is the
-- same inversion `observatory-sirius` is built on, here in seven populations
-- rather than in two stars.
--
-- Two rungs are nearly the same color and that is real: the RR Lyrae strip at
-- 7,200 K and the turnoff at 6,300 sit either side of white, so they separate
-- on lightness and on very little else. `observatory-hertzsprungrussell` takes the field
-- populations and derives both axes the same way; this takes one cluster, where
-- age and composition are fixed and every difference on the diagram has to be
-- mass.
--
-- Populations, and the roles they take:
--
--   giant_tip    hue  27   16.85 contrast   properties
--   horizontal   hue 223   16.49 contrast   functions
--   rr_lyrae     hue 234   10.86 contrast   modules
--   turnoff      hue  36    9.05 contrast   keywords, macros, imports
--   straggler    hue 224    7.88 contrast   types
--   lower_ms     hue  27    6.85 contrast   strings, escapes
--   dwarfs       hue 221    4.77 contrast   numbers, operators
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
-- 17.8 Delta E.

return {
  name = "observatory-straggler",
  about = "one cluster's diagram, and the stars that break it",
  floor = 17.8,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#090f16",
  bg_float = "#0d1524",
  bg_sel = "#19264a",
  bg_hl = "#1d365b",
  border = "#2a406d",
  bg_search = "#36509a",
  nontext = "#283951",

  -- the text ladder
  text = "#b7babe",
  dim = "#a5aab6",
  punct = "#818fa3",
  comment = "#6477a6",
  lnr = "#53658a",
  lnr_cur = "#9da6b7",

  -- syntax roles
  str = "#c08758",
  num = "#4775d5",
  typ = "#849de0",
  mod = "#b4b8df",
  prop = "#f6e3d3",
  func = "#dbe4fa",
  kw = "#b9a88e",
  op = "#4775d5",
  macro = "#b9a88e",
  esc = "#c08758",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#b4b8df",
  hint = "#c08758",
  ok = "#29b16d",
  accent = "#dbe4fa",
  cursearch = "#b9a88e",
  subst = "#c08758",
  match = "#edc24a",
  title = "#dbe4fa",
  dir = "#849de0",
  label = "#b9a88e",
  tag = "#b9a88e",
  h1 = "#b9a88e",
  h2 = "#dbe4fa",
  h3 = "#c08758",
  h4 = "#849de0",
  h5 = "#b4b8df",
  h6 = "#4775d5",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#0e134d",
  diff_text = "#172182",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#0c1144",
  vt_hint = "#221306",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "lower_ms", hue = 27, chroma = 37.6, cr = 6.85 },
    { key = "dwarfs", hue = 221, chroma = 56.3, cr = 4.77 },
    { key = "straggler", hue = 224, chroma = 37.6, cr = 7.88 },
    { key = "rr_lyrae", hue = 234, chroma = 21.1, cr = 10.86 },
    { key = "giant_tip", hue = 27, chroma = 10.9, cr = 16.85 },
    { key = "horizontal", hue = 223, chroma = 11.8, cr = 16.49 },
    { key = "turnoff", hue = 36, chroma = 15.8, cr = 9.05 },
  },
}

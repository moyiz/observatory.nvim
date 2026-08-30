-- observatory-blackdwarf -- the coldest thing there will ever be, and its last light
--
-- Source: the end of `observatory-cooling`. A white dwarf that keeps radiating
-- eventually has nothing left to radiate: it drops below the temperature of the
-- microwave background, crystallises through, and becomes a black dwarf --
-- Earth-sized, roughly a solar mass, and emitting nothing anyone could detect.
-- None exists. The oldest dwarfs in the galaxy are still near 3,000 K after ten
-- billion years and the process takes of order a quadrillion, so like
-- `observatory-bluedwarf` this is a palette of a predicted object rather than
-- an observed one. The four thermal rungs are its residual heat on the way
-- there -- 1,800 K, 1,500, 1,200, 1,000 -- through the Planck curve, and the
-- last is what is left when the Wien tail has retreated out of the visible band
-- entirely.
--
-- The bright rung is the interesting one, and it is an explosion. Caplan showed
-- in 2020 that pycnonuclear fusion -- fusion by quantum tunnelling at near zero
-- temperature, so slow that a black dwarf might manage one reaction in a
-- million years -- will grind the interiors of the heaviest black dwarfs to
-- iron-56. Iron lowers the electron fraction, a lower electron fraction lowers
-- the Chandrasekhar limit, and eventually the limit drops below the star's own
-- mass and it collapses. About one per cent of the stars that exist today,
-- something like 10^21 of them, end this way: the first at around 10^1100
-- years, the last at 10^32000, and after that nothing happens ever again. So
-- the top of this palette is the last supernova in the universe, and no one
-- will see it -- by then expansion has put every remaining object beyond every
-- other object's horizon.
--
-- Five of the six colors are one color. Below about 2,000 K a blackbody has
-- nothing but a red tail to show -- the four thermal rungs span hue 16 to hue
-- 30 and lose purity as they cool rather than changing direction -- and the
-- sixth rung is drawn at a fixed dim ember because 800 K is genuinely not a
-- color: the object is radiating, in the infrared, and vision has no access to
-- it. This is therefore the darkest-intentioned scheme in the collection, held
-- at usable contrast only because a display has a floor that physics does not.
-- `observatory-plate` and `observatory-shadow` are dimmer in chroma; nothing is
-- dimmer in principle.
--
-- One caveat, and it is the whole scheme's caveat. If the proton decays at all,
-- black dwarfs evaporate long before pycnonuclear fusion can finish its work,
-- the supernova at the top of this ladder never happens, and the palette is
-- five reds and no accent. Nobody knows.
--
-- Temperatures, and the roles they take:
--
--   crust        hue  30   15.94 contrast   functions
--   transient    hue 222   14.26 contrast   properties
--   surface      hue  25   11.80 contrast   modules, types
--   iron_core    hue  20    8.70 contrast   strings, escapes
--   residual     hue  16    5.62 contrast   keywords, macros, imports
--   dark         hue  18    5.11 contrast   numbers, operators
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
-- 21.5 Delta E.

return {
  name = "observatory-blackdwarf",
  about = "the coldest thing there will ever be, and its last light",
  floor = 21.5,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#160c09",
  bg_float = "#1f120c",
  bg_sel = "#392213",
  bg_hl = "#542a1a",
  border = "#5e3824",
  bg_search = "#784a2a",
  nontext = "#4d3126",

  -- the text ladder
  text = "#c5c1be",
  dim = "#b5a8a1",
  punct = "#d1a190",
  comment = "#87746a",
  lnr = "#805d4b",
  lnr_cur = "#b5a299",

  -- syntax roles
  str = "#fa884f",
  num = "#b86846",
  typ = "#fcb27d",
  mod = "#fcb27d",
  prop = "#c6d5f7",
  func = "#fbdbba",
  kw = "#e6531e",
  op = "#b86846",
  macro = "#e6531e",
  esc = "#fa884f",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#fcb27d",
  hint = "#fa884f",
  ok = "#29b16d",
  accent = "#fbdbba",
  cursearch = "#e6531e",
  subst = "#fa884f",
  match = "#edc24a",
  title = "#fbdbba",
  dir = "#fcb27d",
  label = "#e6531e",
  tag = "#e6531e",
  h1 = "#e6531e",
  h2 = "#fbdbba",
  h3 = "#fa884f",
  h4 = "#fcb27d",
  h5 = "#fcb27d",
  h6 = "#b86846",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#2b1608",
  diff_text = "#4a260d",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#251307",
  vt_hint = "#251106",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "iron_core", hue = 20, chroma = 62.6, cr = 8.70 },
    { key = "dark", hue = 18, chroma = 43.7, cr = 5.11 },
    { key = "surface", hue = 25, chroma = 43.3, cr = 11.80 },
    { key = "transient", hue = 222, chroma = 18.4, cr = 14.26 },
    { key = "crust", hue = 30, chroma = 21.2, cr = 15.94 },
    { key = "residual", hue = 16, chroma = 79.4, cr = 5.62 },
  },
}

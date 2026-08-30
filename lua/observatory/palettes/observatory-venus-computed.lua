-- observatory-venus-computed -- the cloud deck above, the surface nobody sees below
--
-- Source: two sets of images that disagree completely. From orbit Venus is a
-- featureless cream deck of 75% sulfuric acid cloud; from the surface, in
-- the Venera 13 and 14 panoramas, everything is orange-brown basalt under an
-- orange sky, because the cloud only passes long wavelengths.
--
-- So the palette runs top to bottom rather than across a hue circle: pale
-- sulfur cream at the cloud tops, through the deepening amber of the
-- absorber bands, to Venera's rust at the ground. It is a warm monochrome
-- with a gradient that means something -- brightness is altitude.
--
-- One color breaks the family, and it is the interesting one. In ultraviolet
-- the cloud deck is streaked dark by an absorber nobody has identified, and
-- that violet-gray is the only cool value here. Keywords take it, so the
-- vocabulary of the language is the one thing on screen that is not
-- sulfur. Numbers and operators are deliberately dim: the surface is barely
-- lit, about as bright as an overcast day on Earth.--
-- Units, and the roles they take:
--
--   cloudtop     hue  51   15.77 contrast   properties
--   sulfur      hue  48   15.28 contrast   functions
--   haze         hue  39    9.96 contrast   modules
--   absorber     hue  32    8.81 contrast   types
--   venera       hue  22    7.32 contrast   strings, escapes
--   basalt       hue  18    6.04 contrast   numbers
--   uvdark       hue 268    5.21 contrast   keywords, macros, imports
--   scarp        hue  35    4.59 contrast   operators
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
-- 15.5 Delta E.

return {
  name = "observatory-venus-computed",
  about = "the cloud deck above, the surface nobody sees below",
  floor = 15.5,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#120e08",
  bg_float = "#191409",
  bg_sel = "#2e280f",
  bg_hl = "#423315",
  border = "#4c401e",
  bg_search = "#615422",
  nontext = "#413620",

  -- the text ladder
  text = "#ceccc9",
  dim = "#b2ad9d",
  punct = "#a4a096",
  comment = "#7a786f",
  lnr = "#6f6341",
  lnr_cur = "#b0a993",

  -- syntax roles
  str = "#df8048",
  num = "#b37d65",
  typ = "#d29e62",
  mod = "#c6b086",
  prop = "#e5e0c2",
  func = "#ebdca1",
  kw = "#946dc0",
  op = "#897251",
  macro = "#946dc0",
  esc = "#df8048",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#c6b086",
  hint = "#df8048",
  ok = "#29b16d",
  accent = "#ebdca1",
  cursearch = "#946dc0",
  subst = "#df8048",
  match = "#edc24a",
  title = "#ebdca1",
  dir = "#d29e62",
  label = "#946dc0",
  tag = "#946dc0",
  h1 = "#946dc0",
  h2 = "#ebdca1",
  h3 = "#df8048",
  h4 = "#d29e62",
  h5 = "#c6b086",
  h6 = "#b37d65",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#241a06",
  diff_text = "#3e2c0b",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#1f1706",
  vt_hint = "#241106",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "venera", hue = 22, chroma = 55.6, cr = 7.32 },
    { key = "basalt", hue = 18, chroma = 28.0, cr = 6.04 },
    { key = "absorber", hue = 32, chroma = 40.6, cr = 8.81 },
    { key = "haze", hue = 39, chroma = 24.5, cr = 9.96 },
    { key = "cloudtop", hue = 51, chroma = 15.6, cr = 15.77 },
    { key = "sulfur", hue = 48, chroma = 31.1, cr = 15.28 },
    { key = "uvdark", hue = 268, chroma = 49.6, cr = 5.21 },
    { key = "scarp", hue = 35, chroma = 22.0, cr = 4.59 },
  },
}

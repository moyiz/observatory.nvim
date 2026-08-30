-- observatory-callisto-computed -- the oldest surface, and the least to say about it
--
-- Source: Callisto is the most heavily cratered object known. Its surface is
-- saturated -- new craters can only land on old ones -- and has been for
-- something like four billion years, with no tectonics, no volcanism and no
-- resurfacing of any kind. Dirty ice, dark for an icy moon at about a fifth
-- of the light reflected, with bright rays where impacts have dug fresh
-- material out and the concentric rings of Valhalla.
--
-- A dead world gets a nearly unvaried palette: 6 accents covering ten
-- syntax roles, alternating between the blue-gray of ice and the brown of
-- dirty ground at roughly even steps up the ladder. Functions share with
-- types, keywords with macros, strings with escapes, numbers with operators.
--
-- 9 distinct colors across the whole syntax map, where eleven is the
-- usual number here. `observatory-dichroic` is equally sparing and gets there for
-- the opposite reason: that scheme is short of colors because it has to stay
-- legible to three kinds of color blindness at once, this one because there
-- is nothing to depict. Compare `observatory-ganymede`, its neighbour and near twin
-- in composition, which has tectonics and therefore something to look at.
--
-- Units, and the roles they take:
--
--   ray          hue 197   17.00 contrast   properties
--   valhalla     hue  31   12.92 contrast   functions, types
--   ice_rock     hue 206   11.57 contrast   modules
--   dark_ice     hue 210    7.72 contrast   strings, escapes
--   regolith     hue  26    7.02 contrast   keywords, macros, imports
--   dust         hue  22    4.68 contrast   numbers, operators
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
  name = "observatory-callisto-computed",
  about = "the oldest surface, and the least to say about it",
  floor = 17.5,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#090f14",
  bg_float = "#0c1620",
  bg_sel = "#162843",
  bg_hl = "#1a3852",
  border = "#264263",
  bg_search = "#31558b",
  nontext = "#25394b",

  -- the text ladder
  text = "#b3b7bb",
  dim = "#a3abb5",
  punct = "#82888d",
  comment = "#617a9a",
  lnr = "#4e6783",
  lnr_cur = "#9aa7b5",

  -- syntax roles
  str = "#6fa1d4",
  num = "#a66844",
  typ = "#dfc7ae",
  mod = "#9fc5e3",
  prop = "#e3e8ea",
  func = "#dfc7ae",
  kw = "#da7e37",
  op = "#a66844",
  macro = "#da7e37",
  esc = "#6fa1d4",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#9fc5e3",
  hint = "#6fa1d4",
  ok = "#29b16d",
  accent = "#dfc7ae",
  cursearch = "#da7e37",
  subst = "#6fa1d4",
  match = "#edc24a",
  title = "#dfc7ae",
  dir = "#dfc7ae",
  label = "#da7e37",
  tag = "#da7e37",
  h1 = "#da7e37",
  h2 = "#dfc7ae",
  h3 = "#6fa1d4",
  h4 = "#dfc7ae",
  h5 = "#9fc5e3",
  h6 = "#a66844",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#081c2d",
  diff_text = "#0e314e",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#071a28",
  vt_hint = "#071627",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "dark_ice", hue = 210, chroma = 31.3, cr = 7.72 },
    { key = "dust", hue = 22, chroma = 37.1, cr = 4.68 },
    { key = "valhalla", hue = 31, chroma = 16.2, cr = 12.92 },
    { key = "ice_rock", hue = 206, chroma = 19.9, cr = 11.57 },
    { key = "ray", hue = 197, chroma = 2.0, cr = 17.00 },
    { key = "regolith", hue = 26, chroma = 60.3, cr = 7.02 },
  },
}

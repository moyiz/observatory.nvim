-- observatory-plate -- no color at all, and the five grays that leaves
--
-- Source: photographic plates, and specifically the Palomar Observatory Sky
-- Survey -- fourteen-inch glass squares exposed at the 48-inch Schmidt from
-- 1949, two per field, one on blue-sensitive emulsion and one on red. Every
-- object in this collection that was catalogued before about 1980 was found on
-- a plate, in silver grains, with no color recorded at any point. What a plate
-- gives you instead is a characteristic curve: density against the logarithm of
-- exposure, a shallow toe at the faint end, a straight portion in the middle,
-- and a shoulder where the emulsion saturates and every brighter star records
-- as the same white blob.
--
-- So the palette is that curve, and there is nothing else in it. No hue, no
-- saturation, five levels of gray from the shoulder at pure white down to the
-- legibility floor, with the line numbers below that as everywhere else in the
-- family. Roles are grouped by how much emphasis they want rather than by what
-- they mean: properties and function names at the top, plain text under them,
-- keywords and types and macros next, literals and punctuation in the middle,
-- operators and comments at the bottom. The italic and bold toggles do more
-- work here than in any other scheme, because they are the only distinctions
-- left.
--
-- Five is not a taste, it is the arithmetic. Perceptual distance between two
-- grays is just their difference in lightness, so the whole palette has to fit
-- in one dimension: from 50.4 in L*, which is the WCAG AA floor against black,
-- to 100, which is white. That is 49.6 units, and this family requires ten
-- between any two colors that can appear side by side, so five values fit and
-- six do not. Every scheme with hue available spends that dimension on
-- brightness alone and gets the other two for free; this one shows the bill.
--
-- What it gains is the other side of the same coin. Gray is as far from a
-- saturated red as anything can be, so the distance from every one of these
-- values to the error, warning and git colors runs from 57 to 83 Delta E,
-- against 0 to 60 across the rest of the collection -- 0 because four schemes
-- deliberately hand a syntax role a diagnostic's exact color. The three
-- colors that must never be mistaken for code are, in this scheme, the only
-- colors on screen.
--
-- The toe and the shoulder of the real curve cannot be sampled. Both compress
-- density into a small range -- that is what makes them a toe and a shoulder --
-- so rungs taken from either would sit under the separation floor. The palette
-- uses the straight portion, which is also the part photographers expose for.
--
-- Levels, and the roles they take:
--
--   clip         gray      21.00 contrast   properties, functions
--   dense        gray      10.70 contrast   keywords, types, modules, macros, imports
--   punct        gray       7.28 contrast   strings, numbers, escapes
--   comment      gray       4.69 contrast   operators
--
-- Nothing here was searched for. A palette with no hue and no saturation
-- has only lightness to arrange, and the arrangement came from the source,
-- so this ladder was written out and then audited rather than solved: every
-- pair of colors that can appear together -- including every pair with the
-- error, warning and git colors, which sit beside code in the sign column --
-- was measured against the family's separation limit.
--
-- Construction otherwise follows the rest of the family: every foreground
-- is solved by binary search for an exact contrast ratio against #000000,
-- and the closest pair of adjacent-capable roles sits at 12.2 Delta E.

return {
  name = "observatory-plate",
  about = "no color at all, and the five grays that leaves",
  floor = 12.2,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#0f0f0f",
  bg_float = "#161616",
  bg_sel = "#272727",
  bg_hl = "#353535",
  border = "#414141",
  bg_search = "#555555",
  nontext = "#373737",

  -- the text ladder
  text = "#dcdcdc",
  dim = "#b9b9b9",
  punct = "#989898",
  comment = "#777777",
  lnr = "#626262",
  lnr_cur = "#989898",

  -- syntax roles
  str = "#989898",
  num = "#989898",
  typ = "#b9b9b9",
  mod = "#b9b9b9",
  prop = "#ffffff",
  func = "#ffffff",
  kw = "#b9b9b9",
  op = "#777777",
  macro = "#b9b9b9",
  esc = "#989898",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#b9b9b9",
  hint = "#b9b9b9",
  ok = "#29b16d",
  accent = "#ffffff",
  cursearch = "#b9b9b9",
  subst = "#b9b9b9",
  match = "#edc24a",
  title = "#ffffff",
  dir = "#b9b9b9",
  label = "#b9b9b9",
  tag = "#b9b9b9",
  h1 = "#b9b9b9",
  h2 = "#ffffff",
  h3 = "#b9b9b9",
  h4 = "#b9b9b9",
  h5 = "#b9b9b9",
  h6 = "#b9b9b9",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#390a0a",
  diff_text = "#601111",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#330909",
  vt_hint = "#300808",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "punct", hue = 0, chroma = 0.0, cr = 7.28 },
    { key = "dense", hue = 0, chroma = 0.0, cr = 10.70 },
    { key = "clip", hue = 0, chroma = 0.0, cr = 21.00 },
    { key = "comment", hue = 0, chroma = 0.0, cr = 4.69 },
  },
}

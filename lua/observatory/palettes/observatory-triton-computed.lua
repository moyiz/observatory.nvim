-- observatory-triton-computed -- cantaloupe terrain and pink nitrogen frost
--
-- Source: Triton, whose surface is nitrogen and methane frost slowly turned
-- pink by radiation -- the same tholin chemistry that colors Titan, but
-- spread thin over ice instead of hanging in a haze. The cantaloupe terrain
-- is unique to it, the south polar cap is bright, and dark wind streaks
-- record plumes venting downwind.
--
-- Pink is a hue the rest of this family never reaches, so Triton earns a
-- scheme on color alone. The cantaloupe terrain the scheme is named for
-- carries strings, the frost carries functions, the deeper tholin types and
-- the nitrogen pink keywords. The bright polar cap and the methane blue are
-- the only cool values, and the methane is now the smallest of them, because
-- there is no cyan on Triton to spend.
--
-- Note how little separates this from `observatory-titan` in origin and how much
-- in appearance: same chemistry, same parent process, but Titan's haze is
-- optically thick and admits one orange, while Triton's frost is thin and
-- lets ice show through underneath. Thin deposits keep their substrate
-- visible, which is why this palette has cool values and Titan's has none.--
-- Units, and the roles they take:
--
--   cap          hue 202   16.88 contrast   properties
--   frost        hue 352   14.47 contrast   functions
--   cantaloupe   hue   9    9.94 contrast   strings, escapes
--   tholin       hue  12    8.62 contrast   types
--   nitrogen     hue 340    7.28 contrast   keywords, macros, imports
--   methane      hue 196    6.26 contrast   modules
--   streak       hue   5    5.34 contrast   numbers
--   plume        hue 208    4.64 contrast   operators
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
-- 12.9 Delta E.

return {
  name = "observatory-triton-computed",
  about = "cantaloupe terrain and pink nitrogen frost",
  floor = 12.9,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#190b0e",
  bg_float = "#240e12",
  bg_sel = "#47181d",
  bg_hl = "#5f1e2d",
  border = "#6d2b36",
  bg_search = "#93343d",
  nontext = "#562a35",

  -- the text ladder
  text = "#cdc6c6",
  dim = "#b9a5a7",
  punct = "#c39099",
  comment = "#a19898",
  lnr = "#8c565c",
  lnr_cur = "#b99fa2",

  -- syntax roles
  str = "#ccaba5",
  num = "#aa726d",
  typ = "#df937f",
  mod = "#4096b6",
  prop = "#dee8ee",
  func = "#f3cdd2",
  kw = "#d87c9b",
  op = "#567a99",
  macro = "#d87c9b",
  esc = "#ccaba5",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#4096b6",
  hint = "#ccaba5",
  ok = "#29b16d",
  accent = "#f3cdd2",
  cursearch = "#d87c9b",
  subst = "#ccaba5",
  match = "#edc24a",
  title = "#f3cdd2",
  dir = "#df937f",
  label = "#d87c9b",
  tag = "#d87c9b",
  h1 = "#d87c9b",
  h2 = "#f3cdd2",
  h3 = "#ccaba5",
  h4 = "#df937f",
  h5 = "#4096b6",
  h6 = "#aa726d",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#071e26",
  diff_text = "#0c3442",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#061b22",
  vt_hint = "#2b0d08",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "cantaloupe", hue = 9, chroma = 13.4, cr = 9.94 },
    { key = "streak", hue = 5, chroma = 24.5, cr = 5.34 },
    { key = "tholin", hue = 12, chroma = 34.6, cr = 8.62 },
    { key = "methane", hue = 196, chroma = 29.0, cr = 6.26 },
    { key = "cap", hue = 202, chroma = 4.6, cr = 16.88 },
    { key = "frost", hue = 352, chroma = 14.3, cr = 14.47 },
    { key = "nitrogen", hue = 340, chroma = 39.4, cr = 7.28 },
    { key = "plume", hue = 208, chroma = 21.1, cr = 4.64 },
  },
}

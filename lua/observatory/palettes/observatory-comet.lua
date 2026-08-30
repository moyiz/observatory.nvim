-- observatory-comet -- two tails, two hue families, nothing in between
--
-- A comet has two tails pointing different ways, made of different things, and
-- they are the only two colors here. The ion tail fluoresces: CO+ at 425.0 nm
-- and N2+ at 450.0 nm, giving hues 260 and 224. The dust tail merely reflects
-- sunlight, reddened by the dust, which is 580 nm at hue 60 falling to 620 nm at
-- hue 28. Between hue 60 and hue 224 -- all the greens, teals and cyans -- there
-- is nothing, because a comet emits nothing there.
--
-- So the scheme is a strict pair of families with a gap. Gold and amber dust
-- take functions, strings and numbers; the ion blues take keywords, types and
-- modules. Every adjacent pair in a line of code is therefore either the same
-- family or maximally far from it, which makes structure unusually easy to scan.
--
-- The gap has to be paid for somewhere: git's green sits in the empty region
-- and is invented, as is the error crimson, since no cometary emission is red.
-- Those two and the warning amber are the only values that break the pair.
--
-- Construction follows the rest of the family: every foreground is solved
-- by binary search for an exact contrast ratio against #000000, each accent
-- is the most chromatic form of its hue that still meets that ratio under a
-- per-role cap, and the closest pair of adjacent-capable roles sits at
-- 10.7 Delta E.

return {
  name = "observatory-comet",
  about = "two tails, two hue families, nothing in between",
  floor = 10.7,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#0f0b21",
  bg_float = "#160f32",
  bg_sel = "#271b64",
  bg_hl = "#312486",
  border = "#403091",
  bg_search = "#4c3fc2",
  nontext = "#382e6c",

  -- the text ladder
  text = "#dddce1",
  dim = "#afadc3",
  punct = "#9b9abe",
  comment = "#7f7ca0",
  lnr = "#6b639f",
  lnr_cur = "#a9a9c4",

  -- syntax roles
  str = "#d7a41b",
  num = "#de7b25",
  typ = "#9a97e7",
  mod = "#9bb4f4",
  prop = "#bfc4e0",
  func = "#c9c910",
  kw = "#9bb4f4",
  op = "#977ecb",
  macro = "#9a97e7",
  esc = "#de7b25",

  -- interface duties, following the syntax colors
  err = "#f04248",
  warn = "#d7a41b",
  info = "#9a97e7",
  hint = "#9bb4f4",
  ok = "#2cae6d",
  accent = "#c9c910",
  cursearch = "#9bb4f4",
  subst = "#d7a41b",
  match = "#c9c910",
  title = "#c9c910",
  dir = "#9bb4f4",
  label = "#9bb4f4",
  tag = "#9bb4f4",
  h1 = "#9bb4f4",
  h2 = "#c9c910",
  h3 = "#d7a41b",
  h4 = "#de7b25",
  h5 = "#9a97e7",
  h6 = "#977ecb",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#110f53",
  diff_text = "#1d198d",
  vt_error = "#390a0c",
  vt_warn = "#201906",
  vt_info = "#0f0d4b",
  vt_hint = "#091432",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "amber", hue = 44, chroma = 69.8, cr = 9.22 },
    { key = "orange", hue = 28, chroma = 68.0, cr = 6.97 },
    { key = "ion_deep", hue = 242, chroma = 44.5, cr = 7.95 },
    { key = "ion", hue = 223, chroma = 35.2, cr = 10.23 },
    { key = "pale", hue = 231, chroma = 15.0, cr = 12.19 },
    { key = "gold", hue = 60, chroma = 79.4, cr = 11.85 },
    { key = "ion_violet", hue = 259, chroma = 44.7, cr = 6.16 },
  },
}

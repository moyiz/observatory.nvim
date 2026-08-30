-- observatory-extinction -- one blue star behind seven columns of dust
--
-- Source: interstellar extinction. Dust scatters blue light out of a
-- starbeam more efficiently than red, so a star seen through more of it
-- arrives both redder and fainter. How much redder per magnitude of dimming
-- is set by the ratio R_V, about 3.1 on average in this galaxy, so a star of
-- intrinsic color index -0.30 behind A_V magnitudes of dust is observed at
-- -0.30 + A_V/3.1. Color index becomes temperature by Ballesteros' fit and
-- temperature becomes sRGB through the Planck curve, as in `observatory-hertzsprungrussell`.
--
-- The scheme is one B star at A_V of 0, 2, 3, 4, 5.5, 7 and 9: seven values
-- running blue-white through white and yellow to deep red, dimming as they
-- redden, because a single quantity drives both. This is the effect that
-- makes raw astronomical colors untrustworthy, which seemed worth a color
-- scheme.
--
-- Companion to `observatory-doppler` and `observatory-horizon`, the family's other
-- one-source gradients -- velocity there, gravity there, dust here. It is
-- the only one of the three where the reddening and the dimming are the same
-- event rather than two consequences of one cause.
--
-- Reddening turns out to be mostly not a change of hue. Above eight thousand
-- kelvin blackbody color barely moves, and below six thousand it barely
-- moves again -- every rung from A_V = 3 down sits within three degrees of
-- hue 27 -- so what actually happens across the sequence is a loss and then a
-- gain of purity. Saturation here is therefore derived too, from the computed
-- chroma of each reddened color, and it is doing most of the work that hue
-- appears to be doing. Seven columns rather than ten, and none below A_V = 2,
-- for the same reason: a lightly reddened blue star is the same blue.
--
-- Around A_V = 3 the star passes through white, chroma near zero and hue
-- meaningless, and those two rungs are left as near-grays rather than nudged
-- off-white. Passing through white is what reddening does.
--
-- Dust columns, and the roles they take:
--
--   av_00        hue 218   16.90 contrast   properties
--   av_30        hue  28   15.42 contrast   modules
--   av_20        hue 233   12.77 contrast   functions
--   av_40        hue  26   11.30 contrast   types
--   av_55        hue  27    8.60 contrast   strings, escapes
--   av_70        hue  28    7.61 contrast   keywords, macros, imports
--   av_90        hue  29    4.76 contrast   numbers, operators
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
  name = "observatory-extinction",
  about = "one blue star behind seven columns of dust",
  floor = 15.5,

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
  text = "#bbb7b4",
  dim = "#b4a99f",
  punct = "#aa8e7a",
  comment = "#957249",
  lnr = "#7a6047",
  lnr_cur = "#b3a496",

  -- syntax roles
  str = "#db975e",
  num = "#be5d05",
  typ = "#e0b696",
  mod = "#ebdacb",
  prop = "#e1e7f1",
  func = "#c4c8e8",
  kw = "#df863a",
  op = "#be5d05",
  macro = "#df863a",
  esc = "#db975e",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#ebdacb",
  hint = "#db975e",
  ok = "#29b16d",
  accent = "#c4c8e8",
  cursearch = "#df863a",
  subst = "#db975e",
  match = "#edc24a",
  title = "#c4c8e8",
  dir = "#e0b696",
  label = "#df863a",
  tag = "#df863a",
  h1 = "#df863a",
  h2 = "#c4c8e8",
  h3 = "#db975e",
  h4 = "#e0b696",
  h5 = "#ebdacb",
  h6 = "#be5d05",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#2a1707",
  diff_text = "#48280d",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#241406",
  vt_hint = "#221206",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "av_55", hue = 27, chroma = 44.5, cr = 8.60 },
    { key = "av_90", hue = 29, chroma = 67.7, cr = 4.76 },
    { key = "av_40", hue = 26, chroma = 24.5, cr = 11.30 },
    { key = "av_30", hue = 28, chroma = 10.1, cr = 15.42 },
    { key = "av_00", hue = 218, chroma = 5.6, cr = 16.90 },
    { key = "av_20", hue = 233, chroma = 17.0, cr = 12.77 },
    { key = "av_70", hue = 28, chroma = 60.5, cr = 7.61 },
  },
}

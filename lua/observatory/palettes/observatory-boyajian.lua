-- observatory-boyajian -- a dip in a light curve, measured filter by filter
--
-- Source: KIC 8462852 -- Boyajian's star, or Tabby's star -- an ordinary F3
-- dwarf at about 6750 K that Kepler caught doing something no other star does.
-- Its brightness drops irregularly, by a per cent or two most times and by
-- twenty-two per cent once, on no schedule anyone has found. When it dipped
-- again in 2017 the events were watched in several filters at once and named:
-- Elsie, Celeste, Skara Brae, Angkor. The measurement that mattered was that
-- the dips are not gray. They are deeper in blue light than in red, by roughly
-- a factor of two across the optical, which rules out anything solid passing
-- in front and points at fine dust.
--
-- So the palette is a dip spectrum. Each rung is a photometric band at its
-- effective wavelength -- 445, 477, 551, 623 and 763 nm -- which fixes the
-- hue, and the depth of the dip in that band fixes the brightness, scaled from
-- a twenty-two per cent dip in V with depth going as one over wavelength. Hue
-- is which filter you looked through; lightness is how much light the dust
-- left you.
--
-- The ladder therefore runs backwards. Red is at the top and violet at the
-- bottom, because the dust takes blue first, and that inversion is the whole
-- result of the chromatic measurement rather than a decision about how
-- palettes should look. `observatory-sirius` inverts its ladder too, and for a
-- comparable reason: in both, the physics fixes brightness and the palette is
-- not allowed to argue.
--
-- Two things are missing. The deepest measurement of all is in u', around 355
-- nm, which is outside the range a display addresses -- the most informative
-- band in the entire result cannot appear. And the shallow dips, which are the
-- ones that happen often, are only a per cent or two deep: put on this ladder
-- they would all sit within a rounding error of the top rung, so the palette
-- shows one deep event and mentions the rest here.
--
-- Five accents cover ten roles, which with the diagnostics makes eight distinct
-- colors -- the fewest of any scheme with hues in it, tied with
-- `observatory-alphacentauri`, `observatory-cepheid` and `observatory-tres2`, and
-- above only the two grayscales at five and four. That is the honest count of
-- what five filters give you. The neutrals are
-- the star itself out of dip: 6750 K is a pale yellow-white, so the text is
-- what you would be reading by if nothing were passing in front.
--
-- `observatory-extinction` is the same dust seen the other way round -- the
-- color of what got through, at increasing depths, rather than the depth of
-- what was
-- taken, filter by filter.
--
-- Bands, and the roles they take:
--
--   i_763        hue   0   13.77 contrast   properties, functions
--   r_623        hue  26   11.28 contrast   keywords, macros, imports
--   v_551        hue  81    9.84 contrast   types, modules
--   g_477        hue 193    7.22 contrast   strings, escapes
--   b_445        hue 230    4.89 contrast   numbers, operators
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
-- 18.7 Delta E.

return {
  name = "observatory-boyajian",
  about = "a dip in a light curve, measured filter by filter",
  floor = 18.7,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#100f07",
  bg_float = "#161509",
  bg_sel = "#2a2a0e",
  bg_hl = "#3b3513",
  border = "#45421b",
  bg_search = "#58581f",
  nontext = "#3c381e",

  -- the text ladder
  text = "#c2c2b4",
  dim = "#adab9a",
  punct = "#a29964",
  comment = "#79786b",
  lnr = "#696740",
  lnr_cur = "#a9a78d",

  -- syntax roles
  str = "#2ea4c4",
  num = "#5c71e0",
  typ = "#8fc133",
  mod = "#8fc133",
  prop = "#f2c7c7",
  func = "#f2c7c7",
  kw = "#ecb287",
  op = "#5c71e0",
  macro = "#ecb287",
  esc = "#2ea4c4",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#8fc133",
  hint = "#2ea4c4",
  ok = "#29b16d",
  accent = "#f2c7c7",
  cursearch = "#ecb287",
  subst = "#2ea4c4",
  match = "#edc24a",
  title = "#f2c7c7",
  dir = "#8fc133",
  label = "#ecb287",
  tag = "#ecb287",
  h1 = "#ecb287",
  h2 = "#f2c7c7",
  h3 = "#2ea4c4",
  h4 = "#8fc133",
  h5 = "#8fc133",
  h6 = "#5c71e0",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#151e05",
  diff_text = "#253409",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#131b05",
  vt_hint = "#05191e",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "g_477", hue = 193, chroma = 33.2, cr = 7.22 },
    { key = "b_445", hue = 230, chroma = 64.3, cr = 4.89 },
    { key = "v_551", hue = 81, chroma = 72.1, cr = 9.84 },
    { key = "i_763", hue = 0, chroma = 16.3, cr = 13.77 },
    { key = "r_623", hue = 26, chroma = 34.0, cr = 11.28 },
  },
}

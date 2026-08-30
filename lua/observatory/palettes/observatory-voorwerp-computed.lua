-- observatory-voorwerp-computed -- the one green thing, and it is gas rather than a star
--
-- Source: Hanny's Voorwerp, the object a Dutch schoolteacher found in 2007
-- while classifying galaxies for Galaxy Zoo and asked about on a forum, which
-- is how it got a name meaning Hanny's thing. It is a cloud of ionised gas
-- beside the galaxy IC 2497, and it is lit by a quasar that is no longer
-- there: the nucleus has faded since the light now crossing the cloud left it,
-- so the Voorwerp is an echo of an outburst that has already ended. Its
-- spectrum is the palette -- [O III] at 500.7 nm, helium at 587.6 and 468.6,
-- hydrogen-beta at 486.1 and hydrogen-alpha at 656.3, [Ne III] at 386.9 and
-- [N II] at 658.4 -- through Dan Bruton's wavelength approximation, as in
-- `observatory-balmer`, `observatory-fraunhofer` and `observatory-aurora`.
--
-- The reason to build it is one line. `observatory-albireo` explains at
-- length why no star is green: a blackbody peaking in the green still emits
-- at both ends of
-- the visible band and comes out white, so the stellar locus never passes
-- through green at all. Gas is not a blackbody. Doubly ionised oxygen emits at
-- one wavelength and nowhere else, that wavelength is 500.7 nm, and clouds
-- like this one are genuinely, measurably green. So the green line takes the
-- top of the ladder and the two roles that fill a buffer, properties and
-- function names, and this is the only scheme in the collection built around
-- a color the sky supplies exactly once.
--
-- Two compromises, both in the red. Hydrogen-alpha and [N II] are two
-- nanometers apart and the approximation gives everything past 645 nm the same
-- hue, so the two of them are pushed to opposite ends of the ladder and
-- lightness separates what hue cannot -- the same trick, for the same reason,
-- as the Fraunhofer scheme's three reds. [S II] at 671.6 nm is a third strong
-- line of this cloud and it is left out, because a third value at that hue
-- would have to sit within a few points of contrast of the error color. What
-- is left is very widely spaced: 32.5 Delta E between the closest pair of
-- colors, the largest separation floor of the eighty-four.
--
-- One line is deliberately absent. [O III] has a second line at 495.9 nm, 4.8
-- nanometers from the first, and the approximation puts the pair thirteen
-- degrees of hue apart because its green segment turns steeply. That would be
-- free separation, and it would be an artefact of the fit rather than
-- something an observer could see, so the palette declines it.
--
-- Lines, and the roles they take:
--
--   oiii         hue 152   15.41 contrast   properties, functions
--   hei          hue  54   12.75 contrast   keywords, macros, imports
--   hbeta        hue 183   12.74 contrast   types
--   halpha       hue   0    9.82 contrast   strings
--   heii         hue 202    9.19 contrast   modules
--   neiii        hue 294    6.19 contrast   operators, escapes
--   nii          hue   0    4.77 contrast   numbers
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
-- 27.3 Delta E.

return {
  name = "observatory-voorwerp-computed",
  about = "the one green thing, and it is gas rather than a star",
  floor = 27.3,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#07110d",
  bg_float = "#091813",
  bg_sel = "#0f2d26",
  bg_hl = "#133c2d",
  border = "#1c483b",
  bg_search = "#215f50",
  nontext = "#1e3d32",

  -- the text ladder
  text = "#c9cecd",
  dim = "#9dafaa",
  punct = "#6f7a77",
  comment = "#4a9e8b",
  lnr = "#436d62",
  lnr_cur = "#90aca4",

  -- syntax roles
  str = "#e69f9f",
  num = "#c15757",
  typ = "#55dce4",
  mod = "#69b4df",
  prop = "#94efc5",
  func = "#94efc5",
  kw = "#d6cc75",
  op = "#cc5fd7",
  macro = "#d6cc75",
  esc = "#cc5fd7",

  -- interface duties, following the syntax colors
  err = "#e13439",
  warn = "#f4b609",
  info = "#69b4df",
  hint = "#e69f9f",
  ok = "#29b16d",
  accent = "#94efc5",
  cursearch = "#d6cc75",
  subst = "#e69f9f",
  match = "#f4b609",
  title = "#94efc5",
  dir = "#55dce4",
  label = "#d6cc75",
  tag = "#d6cc75",
  h1 = "#d6cc75",
  h2 = "#94efc5",
  h3 = "#e69f9f",
  h4 = "#55dce4",
  h5 = "#69b4df",
  h6 = "#c15757",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#071d2a",
  diff_text = "#0d3248",
  vt_error = "#390a0b",
  vt_warn = "#1f1906",
  vt_info = "#061924",
  vt_hint = "#300808",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "halpha", hue = 0, chroma = 28.5, cr = 9.82 },
    { key = "nii", hue = 0, chroma = 47.4, cr = 4.77 },
    { key = "hbeta", hue = 183, chroma = 36.9, cr = 12.74 },
    { key = "heii", hue = 202, chroma = 30.9, cr = 9.19 },
    { key = "oiii", hue = 152, chroma = 38.2, cr = 15.41 },
    { key = "hei", hue = 54, chroma = 45.2, cr = 12.75 },
    { key = "neiii", hue = 294, chroma = 73.4, cr = 6.19 },
  },
}

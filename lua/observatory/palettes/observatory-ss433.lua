-- observatory-ss433 -- one line, two jets, and the half that is invisible
--
-- Source: SS 433, the first microquasar found and still the loudest. A compact
-- object is being fed by a companion and throwing two jets out at about a
-- quarter of the speed of light, and those jets precess with a period of
-- roughly 162 days. The effect on the spectrum is the famous part: alongside
-- the stationary hydrogen and helium emission from the disc there are moving
-- lines, copies of hydrogen-alpha that wander back and forth across weeks as
-- the jets swing. Wavelengths here come from the relativistic Doppler formula
-- at the standard kinematics -- 0.2647c, a jet axis 78.8 degrees from the line
-- of sight, a precession cone 19.8 degrees wide -- sampled at phases of the
-- cycle, then turned into sRGB by Bruton's approximation.
--
-- The structure is symmetry. Two jets at one speed means every shift comes in
-- a pair, one for the approaching side and one for the receding, and the pair
-- brackets the rest wavelength of the line they are both copies of. So the
-- ladder runs approaching, approaching, stationary helium and hydrogen, the
-- rest wavelength of hydrogen-alpha, then receding, receding: the palette is
-- one emission line seen from both sides at once.
--
-- Working the geometry out spoils the textbook picture, which is the most
-- interesting thing here. The quoted quarter of light speed suggests
-- hydrogen-alpha shifted to about 500 nm on the approaching side, which would
-- be green, and 861 nm on the receding side, which would be nothing. That is
-- the axis case, and it is not what is observed, because the jets lie nearly
-- in the plane of the sky: at 78.8 degrees the line-of-sight component is
-- small, and across the precession the approaching line only reaches 588 nm --
-- yellow, not green -- while the receding one runs from 654 nm out past 770.
--
-- Which means most of the receding half of this palette does not exist. Past
-- about 700 nm the display has one red at a falling intensity and past 780 it
-- has nothing at all, so the two receding rungs kept here are the two least
-- shifted ones, and they are the palette's dimmest and least pure colors by
-- construction rather than by choice. The scheme is asymmetric because the
-- screen is, not because the star is.
--
-- `observatory-doppler` takes one line at seven velocities and is free to
-- choose them; this takes the velocities a real object supplies and lives
-- with the result.
--
-- Lines, and the roles they take:
--
--   jet_a_00     hue  53   15.98 contrast   properties
--   jet_a_45     hue  40   11.92 contrast   functions
--   stat_hbeta   hue 184   10.81 contrast   types, escapes
--   stat_heii    hue 202    8.96 contrast   modules, strings
--   rest_halpha  hue   0    8.82 contrast   keywords
--   jet_b_90     hue   0    4.86 contrast   numbers
--   jet_b_45     hue   0    4.83 contrast   macros, imports, operators
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
-- 21.3 Delta E.

return {
  name = "observatory-ss433",
  about = "one line, two jets, and the half that is invisible",
  floor = 21.3,

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
  text = "#cecbc9",
  dim = "#b3a9a0",
  punct = "#97918c",
  comment = "#99744b",
  lnr = "#796048",
  lnr_cur = "#b2a397",

  -- syntax roles
  str = "#63b2df",
  num = "#c35858",
  typ = "#4ecbd3",
  mod = "#63b2df",
  prop = "#e7e2b9",
  func = "#e0bf7d",
  kw = "#e89090",
  op = "#a36a6a",
  macro = "#a36a6a",
  esc = "#4ecbd3",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#63b2df",
  hint = "#63b2df",
  ok = "#29b16d",
  accent = "#e0bf7d",
  cursearch = "#e89090",
  subst = "#63b2df",
  match = "#edc24a",
  title = "#e0bf7d",
  dir = "#4ecbd3",
  label = "#e89090",
  tag = "#e89090",
  h1 = "#e89090",
  h2 = "#e0bf7d",
  h3 = "#63b2df",
  h4 = "#4ecbd3",
  h5 = "#63b2df",
  h6 = "#c35858",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#071e2a",
  diff_text = "#0d3248",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#061924",
  vt_hint = "#061822",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "stat_heii", hue = 202, chroma = 32.2, cr = 8.96 },
    { key = "jet_b_90", hue = 0, chroma = 47.7, cr = 4.86 },
    { key = "stat_hbeta", hue = 184, chroma = 34.7, cr = 10.81 },
    { key = "jet_a_00", hue = 53, chroma = 21.3, cr = 15.98 },
    { key = "jet_a_45", hue = 40, chroma = 37.7, cr = 11.92 },
    { key = "rest_halpha", hue = 0, chroma = 36.2, cr = 8.82 },
    { key = "jet_b_45", hue = 0, chroma = 24.7, cr = 4.83 },
  },
}

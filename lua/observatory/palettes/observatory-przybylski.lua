-- observatory-przybylski -- a spectrum full of elements that should not be there
--
-- Source: HD 101065, found by Antoni Przybylski in 1961 and still the
-- strangest spectrum on the sky. It is a cool magnetic Ap star, around 6600 K,
-- and its lines are almost all rare earths -- holmium, dysprosium,
-- praseodymium, neodymium -- with iron and nickel so weak they are hard to
-- find, which is the reverse of every other star's spectrum. Several groups
-- have gone further and identified actinides in it, including short-lived ones
-- like promethium, which has no stable isotope and cannot have been sitting
-- there since the star formed.
--
-- The palette is those elements, at the wavelengths a laboratory certifies
-- them at: holmium oxide is a wavelength standard, with sharp peaks at 385.7,
-- 416.3, 451.3, 485.3, 536.6 and 640.5 nm, and didymium glass -- neodymium and
-- praseodymium together -- absorbs near 444, 521 and 575. Nine peaks, nine
-- hues, spread from violet to red across 282 degrees -- sixth widest of the
-- eighty-four, widest of any scheme built from a star, and the only palette
-- here whose colors can be ordered from a catalogue.
--
-- The substitution is the compromise, and it is a real one. The star's own
-- lines number in the thousands, they are blended past separating, and they
-- crowd into the violet and near-ultraviolet where a display has almost
-- nothing to give. A palette drawn from the actual stellar spectrum would
-- therefore be a narrow violet monochrome, which would be honest and would
-- also waste the one interesting fact about the object. So this takes the
-- element list from the star and the wavelengths from the bench, and says so
-- rather than implying the colors were measured in Centaurus.
--
-- The one thing it cannot show is the reason anybody argues about this star.
-- Promethium's lines are in the ultraviolet, and so is most of the evidence
-- for every actinide claimed here.
--
-- Peaks, and the roles they take:
--
--   ho_536       hue  93   15.26 contrast   properties
--   nd_575       hue  64   12.54 contrast   functions
--   ho_451       hue 222   11.22 contrast   types
--   ho_485       hue 184   10.23 contrast   modules
--   ho_640       hue   7    8.76 contrast   keywords
--   nd_521       hue 106    8.31 contrast   strings, escapes
--   pr_444       hue 232    5.74 contrast   numbers
--   ho_416       hue 269    5.54 contrast   macros, imports
--   ho_385       hue 295    4.78 contrast   operators
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
-- 28.3 Delta E.

return {
  name = "observatory-przybylski",
  about = "a spectrum full of elements that should not be there",
  floor = 28.3,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#120c1b",
  bg_float = "#1b1029",
  bg_sel = "#361a4f",
  bg_hl = "#422471",
  border = "#52307a",
  bg_search = "#7139a1",
  nontext = "#422e5e",

  -- the text ladder
  text = "#d3cfd8",
  dim = "#afa8b7",
  punct = "#87838e",
  comment = "#9477b1",
  lnr = "#745a92",
  lnr_cur = "#aba2b8",

  -- syntax roles
  str = "#4fb930",
  num = "#6c7de8",
  typ = "#a3bdfa",
  mod = "#43c6d0",
  prop = "#cce3b9",
  func = "#c6d122",
  kw = "#ec8e82",
  op = "#ad56b5",
  macro = "#a560f1",
  esc = "#4fb930",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#43c6d0",
  hint = "#4fb930",
  ok = "#29b16d",
  accent = "#c6d122",
  cursearch = "#ec8e82",
  subst = "#4fb930",
  match = "#edc24a",
  title = "#c6d122",
  dir = "#a3bdfa",
  label = "#ec8e82",
  tag = "#ec8e82",
  h1 = "#ec8e82",
  h2 = "#c6d122",
  h3 = "#4fb930",
  h4 = "#a3bdfa",
  h5 = "#43c6d0",
  h6 = "#6c7de8",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#061e20",
  diff_text = "#0a3539",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#051b1c",
  vt_hint = "#091a05",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "nd_521", hue = 106, chroma = 78.9, cr = 8.31 },
    { key = "pr_444", hue = 232, chroma = 61.1, cr = 5.74 },
    { key = "ho_451", hue = 222, chroma = 33.4, cr = 11.22 },
    { key = "ho_485", hue = 184, chroma = 35.3, cr = 10.23 },
    { key = "ho_536", hue = 93, chroma = 23.5, cr = 15.26 },
    { key = "nd_575", hue = 64, chroma = 79.0, cr = 12.54 },
    { key = "ho_640", hue = 7, chroma = 40.6, cr = 8.76 },
    { key = "ho_385", hue = 295, chroma = 60.6, cr = 4.78 },
    { key = "ho_416", hue = 269, chroma = 83.5, cr = 5.54 },
  },
}

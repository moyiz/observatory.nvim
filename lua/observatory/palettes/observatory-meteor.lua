-- observatory-meteor -- what the rock was made of, while it lasted
--
-- Source: meteor spectra. A fireball's color is an ablation spectrum -- the
-- metals boiling off the rock, each at its own lines. Sodium at 589.3 nm
-- gives the familiar yellow-orange, the magnesium triplet at 518.4 the
-- blue-green, iron a thicket of lines around 526, calcium at 422.7 and its
-- ionised pair at 393.4 the violets, potassium at 766.5 the deep red. The
-- 557.7 nm green and the red beyond 650 belong to the atmosphere rather than
-- the meteoroid, excited by its passage.
--
-- So a meteor's color tells you what it was made of, and this palette is
-- that readout. Sodium takes properties, being the color most fireballs
-- actually are; magnesium takes functions; the two atmospheric lines take
-- strings and keywords, since they are the part that is not the rock.
--
-- Related to `observatory-aurora`, also built from atmospheric emission, but lit
-- from the other side: aurora is the upper atmosphere excited from above by
-- the solar wind, this is the atmosphere excited from within by something
-- falling through it. The overlap between the two palettes is exactly the
-- two atmospheric lines.
--
-- One honest weakness. The calcium lines are what spectroscopy cares about
-- most and what the eye sees worst, sitting at the violet edge where
-- sensitivity is collapsing. They are here at full strength, which is truer
-- to the spectrum than to the view.
--
-- Lines, and the roles they take:
--
--   sodium       hue  52   16.86 contrast   properties
--   nitrogen     hue   0   11.52 contrast   keywords, macros, imports
--   calcium_ii   hue 289   11.18 contrast   modules
--   magnesium    hue 109   11.06 contrast   functions
--   oxygen       hue  76    6.85 contrast   strings, escapes
--   calcium_i    hue 262    6.02 contrast   types
--   iron         hue 101    4.79 contrast   numbers
--   potassium    hue   0    4.77 contrast   operators
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
-- 30.4 Delta E.

return {
  name = "observatory-meteor",
  about = "what the rock was made of, while it lasted",
  floor = 30.4,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#120e08",
  bg_float = "#1a150a",
  bg_sel = "#302710",
  bg_hl = "#453216",
  border = "#4e3f1f",
  bg_search = "#645223",
  nontext = "#433521",

  -- the text ladder
  text = "#d0cfcb",
  dim = "#b2aa9c",
  punct = "#a27d44",
  comment = "#7b776f",
  lnr = "#736344",
  lnr_cur = "#b0a591",

  -- syntax roles
  str = "#7d9f1e",
  num = "#5b8349",
  typ = "#9e71eb",
  mod = "#deace9",
  prop = "#f1e8a9",
  func = "#40d81e",
  kw = "#f9acac",
  op = "#bd5a5a",
  macro = "#f9acac",
  esc = "#7d9f1e",

  -- interface duties, following the syntax colors
  err = "#fa4c52",
  warn = "#edc24a",
  info = "#deace9",
  hint = "#7d9f1e",
  ok = "#2fc278",
  accent = "#40d81e",
  cursearch = "#f9acac",
  subst = "#7d9f1e",
  match = "#edc24a",
  title = "#40d81e",
  dir = "#9e71eb",
  label = "#f9acac",
  tag = "#f9acac",
  h1 = "#f9acac",
  h2 = "#40d81e",
  h3 = "#7d9f1e",
  h4 = "#9e71eb",
  h5 = "#deace9",
  h6 = "#5b8349",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#2f0a38",
  diff_text = "#50105d",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#2a0931",
  vt_hint = "#131804",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "oxygen", hue = 76, chroma = 64.6, cr = 6.85 },
    { key = "iron", hue = 101, chroma = 37.0, cr = 4.79 },
    { key = "calcium_i", hue = 262, chroma = 70.3, cr = 6.02 },
    { key = "calcium_ii", hue = 289, chroma = 37.1, cr = 11.18 },
    { key = "sodium", hue = 52, chroma = 32.4, cr = 16.86 },
    { key = "magnesium", hue = 109, chroma = 98.7, cr = 11.06 },
    { key = "nitrogen", hue = 0, chroma = 30.5, cr = 11.52 },
    { key = "potassium", hue = 0, chroma = 44.1, cr = 4.77 },
  },
}

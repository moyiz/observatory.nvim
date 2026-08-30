-- observatory-aurora -- the green aurora, on its own night sky
--
-- Not from a photograph -- from the aurora's emission spectrum. Every accent
-- here is one of its lines, converted to sRGB and then solved for contrast:
-- atomic oxygen at 557.7 nm for the dominant green, its 630.0 nm line for the
-- red, N2+ at 470.9, 427.8 and 391.4 nm for the blue through violet, H-beta at
-- 486.1 nm for the teal, and the sodium airglow layer at 589.3 nm for the
-- yellow. The pink is the one color that is not a line: it is the additive mix
-- of N2 at 661.1 nm with N2+ at 427.8 nm, which is physically what the pink
-- lower fringe of a bright aurora is.
--
-- Green leads, as it does in the sky, and the palette climbs the same sequence
-- an aurora does with altitude: red oxygen high up, green oxygen through the
-- middle, nitrogen blues and the pink fringe at the bottom. The grays are tinted
-- toward airglow rather than neutral, and the darks are the night sky behind it
-- all, which is why they are blue and not green.
--
-- One honest correction. sRGB cannot contain a monochromatic stimulus, so the
-- 557.7 nm line converts to hue 76 -- a chartreuse nothing like an aurora -- and
-- 630.0 nm converts to 19, an orange. Both are used at their photographed hues
-- instead, 140 and 6. Every other line is used exactly as converted. The 520 nm
-- N2 band at hue 107 is kept unadjusted, which is why numbers here are genuinely
-- yellow-green.
--
-- Construction follows the rest of the family: every foreground is solved
-- by binary search for an exact contrast ratio against #000000, each accent
-- is the most chromatic form of its hue that still meets that ratio under a
-- per-role cap, and the closest pair of adjacent-capable roles sits at
-- 12.5 Delta E.

return {
  name = "observatory-aurora",
  about = "the green aurora, on its own night sky",
  floor = 12.5,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#0a0d1f",
  bg_float = "#0e132f",
  bg_sel = "#172456",
  bg_hl = "#1d3072",
  border = "#293b83",
  bg_search = "#304fa6",
  nontext = "#2a3466",

  -- the text ladder
  text = "#d8dedc",
  dim = "#99b5b1",
  punct = "#76a8a1",
  comment = "#5e8785",
  lnr = "#437373",
  lnr_cur = "#8cb3ab",

  -- syntax roles
  str = "#29a674",
  num = "#42be20",
  typ = "#2cbfc8",
  mod = "#35a6da",
  prop = "#acc7cc",
  func = "#19d257",
  kw = "#da8ae9",
  op = "#9580c9",
  macro = "#e863d8",
  esc = "#e863d8",

  -- interface duties, following the syntax colors
  err = "#ef4734",
  warn = "#e1c91c",
  info = "#35a6da",
  hint = "#2cbfc8",
  ok = "#29a674",
  accent = "#19d257",
  cursearch = "#da8ae9",
  subst = "#e863d8",
  match = "#e1c91c",
  title = "#19d257",
  dir = "#2cbfc8",
  label = "#da8ae9",
  tag = "#da8ae9",
  h1 = "#da8ae9",
  h2 = "#19d257",
  h3 = "#e863d8",
  h4 = "#2cbfc8",
  h5 = "#35a6da",
  h6 = "#42be20",

  -- diff and virtual-text backdrops
  diff_add = "#062317",
  diff_delete = "#40110b",
  diff_change = "#071e28",
  diff_text = "#0c3446",
  vt_error = "#350e09",
  vt_warn = "#1c1a05",
  vt_info = "#061a23",
  vt_hint = "#05181a",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "emerald", hue = 156, chroma = 48.3, cr = 6.80 },
    { key = "chartreuse", hue = 107, chroma = 87.1, cr = 8.62 },
    { key = "teal", hue = 183, chroma = 36.9, cr = 9.39 },
    { key = "azure", hue = 199, chroma = 38.0, cr = 7.62 },
    { key = "glow", hue = 189, chroma = 9.7, cr = 11.80 },
    { key = "green", hue = 140, chroma = 83.1, cr = 10.40 },
    { key = "violet", hue = 291, chroma = 57.9, cr = 8.79 },
    { key = "indigo", hue = 257, chroma = 42.2, cr = 6.21 },
    { key = "pink", hue = 307, chroma = 74.6, cr = 7.21 },
  },
}

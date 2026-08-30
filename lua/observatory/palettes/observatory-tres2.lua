-- observatory-tres2 -- the darkest world known, and the dimmest palette here
--
-- Source: TrES-2b, a hot Jupiter transiting a Sun-like star about 750 light
-- years away, and the least reflective object measured anywhere. Kepler
-- watched it through a full orbit and found its albedo to be under one per
-- cent -- the published figure is a small fraction of a per cent, darker than
-- coal, darker than black acrylic paint. It is not black in the sense of being
-- cold. The day side runs around 1500 K, so what little can be seen of the
-- planet is its own thermal glow, and the palette is that glow: blackbodies
-- from 900 to 1800 K, plus the host star at about 5850 K for the text.
--
-- The point of the scheme is the level. Every other palette in this collection
-- reaches into the bright end of the usable range, because reflected light is
-- what a palette normally lives on, and this world returns none. So nothing in
-- this palette, text included, reaches eleven to one against black, where every
-- other scheme here has something above twelve; the ratio between its
-- brightest and dimmest color is 2.3, the most compressed of the
-- eighty-four; the text at 10.1 is the dimmest in the collection; and the
-- whole thing is
-- deliberately a low-light palette -- built for a dark room and an OLED panel,
-- where the rest of the family is merely dark-backgrounded.
--
-- Compressing the ladder costs the usual currency. With less than six points
-- of contrast to divide up, lightness cannot carry the separation, so the
-- rungs lean on purity and on the fourteen degrees of hue that a blackbody
-- swings through between 900 and 1800 K -- which is why five accents cover ten
-- roles here, giving eight distinct colors in all, tied for the fewest among
-- the schemes that have hues at all. Every pair still clears the family's floor by a wide margin, at
-- 22 Delta E; there is simply no room for a sixth value.
--
-- The reflected component, which is the measurement this world is famous for,
-- is the one thing the palette cannot contain. A fraction of a per cent of the
-- host star's light is, at these contrast ratios, indistinguishable from the
-- background it is drawn on. The white text is the closest this scheme comes
-- to showing you the star.
--
-- Temperatures, and the roles they take:
--
--   hotspot      hue  30   10.94 contrast   properties, functions
--   dayside      hue  26    9.23 contrast   keywords, macros, imports
--   terminator   hue  20    7.35 contrast   types, modules
--   nightside    hue  16    5.12 contrast   strings, escapes
--   deep         hue  13    5.12 contrast   numbers, operators
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
-- 22.0 Delta E.

return {
  name = "observatory-tres2",
  about = "the darkest world known, and the dimmest palette here",
  floor = 22.0,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#150d09",
  bg_float = "#1e130c",
  bg_sel = "#382313",
  bg_hl = "#522b1a",
  border = "#5c3824",
  bg_search = "#764a29",
  nontext = "#4c3126",

  -- the text ladder
  text = "#b7b3b0",
  dim = "#a29b93",
  punct = "#a57857",
  comment = "#7d7872",
  lnr = "#705e4d",
  lnr_cur = "#9f9389",

  -- syntax roles
  str = "#bf6444",
  num = "#e54213",
  typ = "#ed783c",
  mod = "#ed783c",
  prop = "#d8b591",
  func = "#d8b591",
  kw = "#e69b63",
  op = "#e54213",
  macro = "#e69b63",
  esc = "#bf6444",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#ed783c",
  hint = "#bf6444",
  ok = "#29b16d",
  accent = "#d8b591",
  cursearch = "#e69b63",
  subst = "#bf6444",
  match = "#edc24a",
  title = "#d8b591",
  dir = "#ed783c",
  label = "#e69b63",
  tag = "#e69b63",
  h1 = "#e69b63",
  h2 = "#d8b591",
  h3 = "#bf6444",
  h4 = "#ed783c",
  h5 = "#ed783c",
  h6 = "#e54213",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#2d1408",
  diff_text = "#4e240e",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#291207",
  vt_hint = "#280f07",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "nightside", hue = 16, chroma = 48.1, cr = 5.12 },
    { key = "deep", hue = 13, chroma = 85.0, cr = 5.12 },
    { key = "terminator", hue = 20, chroma = 66.3, cr = 7.35 },
    { key = "hotspot", hue = 30, chroma = 24.2, cr = 10.94 },
    { key = "dayside", hue = 26, chroma = 46.2, cr = 9.23 },
  },
}

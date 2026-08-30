-- observatory-nervia-computed -- the star Eburonia orbits, by its own temperatures
--
-- Source: HD 49674, named Nervia by Belgium in the IAU's 2019 campaign, at the
-- same time its planet was named Eburonia. It is a G3 V dwarf 134 light years
-- away in Auriga, 5,620 K, a little heavier than the Sun and one of the most
-- metal-rich stars with a known planet -- iron at roughly twice the solar
-- abundance, which is the correlation that made hot-Jupiter surveys look at
-- metal-rich stars first. Nothing about its surface has ever been resolved, so
-- the structure is the Sun's, scaled to Nervia's effective temperature: faculae
-- run a little above the mean, granule centers sit at it, the intergranular
-- lanes a few hundred degrees below, and a spot's penumbra and umbra below that
-- again. Each becomes sRGB through the Planck curve. The two features that are
-- not thermal enter as wavelengths: the green coronal line of Fe XIV at 530.3
-- nm and hydrogen-alpha at 656.3, the chromosphere's own red.
--
-- So this is a star taken apart rather than a star as a color, and the point
-- of it is the comparison: `observatory-nervia` is the same star from a
-- photograph, and every color in that one lies within three degrees of hue 41,
-- because the picture is a false-color ramp on a single ultraviolet line.
-- Derived from what the star is made of instead, the same object spans from a
-- 4,000 K umbral brown through the photospheric creams to a green and a red
-- that a photograph in visible light would show and the gold one cannot.
--
-- The thermal rungs move very little in hue -- 1,800 K of range across a
-- solar-type photosphere is about eight degrees -- so the ladder is carried by
-- lightness and purity, and the separation that makes the palette workable
-- comes from the two emission lines sitting off it. That is the same shape as
-- `observatory-wolfrayet`, where the continuum is one color and everything
-- interesting is a line, at the other end of the temperature scale.
--
-- Layers, and the roles they take:
--
--   facula       hue  28   16.84 contrast   properties
--   granule      hue  29   14.16 contrast   functions
--   corona       hue  97   13.88 contrast   keywords, macros, imports
--   photosphere  hue  28    9.95 contrast   modules
--   lane         hue  27    8.94 contrast   types
--   chromosphere hue   0    7.62 contrast   strings
--   penumbra     hue  27    6.45 contrast   escapes
--   umbra        hue  27    4.92 contrast   numbers, operators
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
-- 12.3 Delta E.

return {
  name = "observatory-nervia-computed",
  about = "the star Eburonia orbits, by its own temperatures",
  floor = 12.3,

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
  text = "#c6c4c1",
  dim = "#b0aa9f",
  punct = "#927344",
  comment = "#867a61",
  lnr = "#726446",
  lnr_cur = "#aea594",

  -- syntax roles
  str = "#e57e7e",
  num = "#b66624",
  typ = "#cba17f",
  mod = "#c3af9e",
  prop = "#ece5df",
  func = "#e8d0ba",
  kw = "#a8e285",
  op = "#b66624",
  macro = "#a8e285",
  esc = "#be8150",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#c3af9e",
  hint = "#e57e7e",
  ok = "#29b16d",
  accent = "#e8d0ba",
  cursearch = "#a8e285",
  subst = "#e57e7e",
  match = "#edc24a",
  title = "#e8d0ba",
  dir = "#cba17f",
  label = "#a8e285",
  tag = "#a8e285",
  h1 = "#a8e285",
  h2 = "#e8d0ba",
  h3 = "#e57e7e",
  h4 = "#cba17f",
  h5 = "#c3af9e",
  h6 = "#b66624",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#2a1707",
  diff_text = "#48280d",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#241406",
  vt_hint = "#300808",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "chromosphere", hue = 0, chroma = 43.4, cr = 7.62 },
    { key = "umbra", hue = 27, chroma = 55.9, cr = 4.92 },
    { key = "lane", hue = 27, chroma = 26.0, cr = 8.94 },
    { key = "photosphere", hue = 28, chroma = 12.2, cr = 9.95 },
    { key = "facula", hue = 28, chroma = 4.0, cr = 16.84 },
    { key = "granule", hue = 29, chroma = 14.8, cr = 14.16 },
    { key = "corona", hue = 97, chroma = 52.7, cr = 13.88 },
    { key = "penumbra", hue = 27, chroma = 40.3, cr = 6.45 },
  },
}

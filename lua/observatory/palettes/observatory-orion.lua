-- observatory-orion -- the sharpest view of the nebula, in brick and rose
--
-- Source: Hubble's 2006 ACS mosaic of M42, built from 520 exposures taken
-- across 2004 and 2005 and blended at the edges with wide-field data from the
-- MPG/ESO 2.2-meter at La Silla. Five filters went into it -- broadband B, V, I
-- and Z plus narrowband H-alpha -- mapped to red, green and blue, which is why
-- the ionised hydrogen reads as rose and brick rather than deep crimson. The
-- frame spans about half a degree, the apparent width of the full Moon, and
-- resolves more than three thousand stars, including the first brown dwarfs
-- picked out in the nebula in visible light.
--
-- Image: The Orion Nebula (M42 and M43) -- Hubble Space Telescope, ACS mosaic with MPG/ESO 2.2 m WFI.
-- NASA, ESA, M. Robberto (Space Telescope Science Institute/ESA) and the Hubble Space Telescope Orion Treasury Project Team.
-- Sampled at 4000 x 4000; 67% of the frame carried light.
--
-- More than half of the lit frame is one dusty rose, and everything else is a
-- variation on it: a brighter salmon where the Trapezium's ultraviolet strikes
-- the gas, an umber where the dust lanes cut across, a near-neutral slate in
-- the shadows. So the palette is a warm near-monochrome with nothing cool in
-- it, which is the surprise of the actual mosaic: the nebula everybody pictures
-- as pink and teal is, in the sharpest version of it, almost entirely pink.
--
-- Roles follow area.
--
-- What is in the frame, and the roles it takes:
--
--   dust          hue 350  16.89 contrast  14.9% of frame   properties
--   gas           hue   4  11.55 contrast  49.7% of frame   strings
--   rose          hue 354  10.40 contrast   6.5% of frame   types, operators
--   ember         hue  13   5.66 contrast  10.2% of frame   keywords, numbers
--   lane          hue   7   4.77 contrast   1.6% of frame   macros, imports, modules
--   glow          hue 330   4.71 contrast  17.1% of frame   functions, escapes
--
-- Hues here are the picture's, taken from it unaltered, since they are what
-- makes a palette recognisable as its subject. Each color's purity was then
-- solved for rather than chosen -- the saturation is whatever puts the frame's
-- own chroma on screen at that rung -- and saturation and contrast were both
-- allowed to move within a narrow band until every pair of colors that can
-- appear together, including every pair with the error, warning and git
-- colors that sit beside code in the sign column, cleared the family's
-- separation limit.
--
-- Construction follows the rest of the family: every foreground is solved by
-- binary search for an exact contrast ratio against #000000. What differs is
-- purity, which is solved rather than maximised -- each accent carries the
-- chroma its own patch of the frame carries, as far as the display allows --
-- and the closest pair of adjacent-capable roles sits at 16.2 Delta E.
--
-- The frame is faint: its colors average 17 chroma, where a palette
-- needs something nearer twenty-six to keep ten kinds of token apart.
-- So all of them were scaled by 1.6, uniformly. Every hue, every ratio
-- between the colors and every proportion of the frame is the picture's;
-- only the overall saturation is the display's, in the way that a print of
-- a photograph has its own.

return {
  name = "observatory-orion",
  about = "the sharpest view of the nebula, in brick and rose",
  floor = 16.2,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#190b0b",
  bg_float = "#240f0e",
  bg_sel = "#431c16",
  bg_hl = "#611f1f",
  border = "#6c2e2a",
  bg_search = "#8b3c31",
  nontext = "#562b2b",

  -- the text ladder
  text = "#c6c1c0",
  dim = "#b9a6a5",
  punct = "#b59898",
  comment = "#817674",
  lnr = "#7b5e5c",
  lnr_cur = "#b9a09f",

  -- syntax roles
  str = "#ecb2ae",
  num = "#be705b",
  typ = "#fb9ca5",
  mod = "#e1371f",
  prop = "#fedfe4",
  func = "#986a81",
  kw = "#be705b",
  op = "#fb9ca5",
  macro = "#e1371f",
  esc = "#986a81",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#e1371f",
  hint = "#ecb2ae",
  ok = "#29b16d",
  accent = "#986a81",
  cursearch = "#be705b",
  subst = "#ecb2ae",
  match = "#edc24a",
  title = "#986a81",
  dir = "#fb9ca5",
  label = "#be705b",
  tag = "#be705b",
  h1 = "#be705b",
  h2 = "#986a81",
  h3 = "#ecb2ae",
  h4 = "#fb9ca5",
  h5 = "#e1371f",
  h6 = "#be705b",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#340f09",
  diff_text = "#5a1910",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#2e0d08",
  vt_hint = "#2d0a08",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "gas", hue = 4, chroma = 22.9, cr = 11.55 },
    { key = "ember", hue = 13, chroma = 38.0, cr = 5.66 },
    { key = "rose", hue = 354, chroma = 37.9, cr = 10.40 },
    { key = "lane", hue = 7, chroma = 82.7, cr = 4.77 },
    { key = "dust", hue = 350, chroma = 11.6, cr = 16.89 },
    { key = "glow", hue = 330, chroma = 22.7, cr = 4.71 },
  },
}

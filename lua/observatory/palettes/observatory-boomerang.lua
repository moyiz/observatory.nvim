-- observatory-boomerang -- the coldest known place, and it photographs as warm gray
--
-- Source: Hubble's 2005 image of the Boomerang Nebula, a young planetary
-- nebula five thousand light years away in Centaurus whose outflow expands so
-- fast that it has cooled to one kelvin -- colder than the cosmic microwave
-- background, which makes it the coldest naturally occurring place known.
--
-- Image: Boomerang Nebula -- Hubble Space Telescope.
-- NASA, ESA and The Hubble Heritage Team STScI/AURA.
-- Sampled at 1456 x 1351; 7% of the frame carried light.
--
-- The physics says one kelvin and the picture says warm gray, and the picture
-- wins here: this is reflected starlight off dust, not emission, so there is
-- no line spectrum to give it a color of its own. What the frame has is a
-- pale bowtie of two lobes, rose where the dust is thickest, khaki and olive
-- at the edges, and it is faint -- only a sixteenth of the frame carries
-- enough light to sample at all. The palette is therefore the quietest in the
-- collection by chroma, and that is the honest reading of it.
--
-- Roles follow area. The pale lobes are 36 per cent and the rose bowtie 23,
-- between them three fifths of the lit frame, so they carry the roles that
-- cover a buffer and everything else is trim.
--
-- What is in the frame, and the roles it takes:
--
--   lobes         hue  15  14.44 contrast  27.9% of frame   properties, modules
--   rim           hue  32   9.26 contrast   5.2% of frame   operators
--   dust          hue  17   8.71 contrast   2.7% of frame   functions
--   outflow       hue  82   7.72 contrast  15.4% of frame   keywords
--   throat        hue   2   6.01 contrast  11.6% of frame   escapes
--   veil          hue  28   5.71 contrast  12.2% of frame   numbers, macros, imports
--   bowtie        hue 340   4.73 contrast  16.9% of frame   strings
--   mauve         hue 355   4.68 contrast   8.1% of frame   types
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
-- and the closest pair of adjacent-capable roles sits at 18.2 Delta E.
--
-- The frame is faint: its colors average 18 chroma, where a palette
-- needs something nearer twenty-six to keep ten kinds of token apart.
-- So all of them were scaled by 1.4, uniformly. Every hue, every ratio
-- between the colors and every proportion of the frame is the picture's;
-- only the overall saturation is the display's, in the way that a print of
-- a photograph has its own.

return {
  name = "observatory-boomerang",
  about = "the coldest known place, and it photographs as warm gray",
  floor = 18.2,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#160b09",
  bg_float = "#21110c",
  bg_sel = "#3d2114",
  bg_hl = "#59271c",
  border = "#623426",
  bg_search = "#7f462c",
  nontext = "#512f28",

  -- the text ladder
  text = "#d3d0ce",
  dim = "#b7a7a3",
  punct = "#b89f9a",
  comment = "#807572",
  lnr = "#796058",
  lnr_cur = "#b7a19c",

  -- syntax roles
  str = "#bd5578",
  num = "#af7a4b",
  typ = "#ca4c56",
  mod = "#faccbd",
  prop = "#faccbd",
  func = "#ea906d",
  kw = "#92a375",
  op = "#caa67d",
  macro = "#af7a4b",
  esc = "#bb7775",

  -- interface duties, following the syntax colors
  err = "#f0060e",
  warn = "#edc24a",
  info = "#faccbd",
  hint = "#bd5578",
  ok = "#29b16d",
  accent = "#ea906d",
  cursearch = "#92a375",
  subst = "#bd5578",
  match = "#edc24a",
  title = "#ea906d",
  dir = "#ca4c56",
  label = "#92a375",
  tag = "#92a375",
  h1 = "#92a375",
  h2 = "#ea906d",
  h3 = "#bd5578",
  h4 = "#ca4c56",
  h5 = "#faccbd",
  h6 = "#af7a4b",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#311209",
  diff_text = "#531f0f",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#2b1008",
  vt_hint = "#2d0815",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "bowtie", hue = 340, chroma = 45.4, cr = 4.73 },
    { key = "veil", hue = 28, chroma = 37.1, cr = 5.71 },
    { key = "mauve", hue = 355, chroma = 54.9, cr = 4.68 },
    { key = "lobes", hue = 15, chroma = 19.5, cr = 14.44 },
    { key = "dust", hue = 17, chroma = 44.9, cr = 8.71 },
    { key = "outflow", hue = 82, chroma = 26.2, cr = 7.72 },
    { key = "rim", hue = 32, chroma = 27.3, cr = 9.26 },
    { key = "throat", hue = 2, chroma = 29.1, cr = 6.01 },
  },
}

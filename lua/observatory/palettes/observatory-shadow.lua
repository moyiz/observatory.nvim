-- observatory-shadow -- the black hole picture as recorded, which is gray
--
-- Source: the Event Horizon Telescope image of M87*, released in April 2019,
-- and its companion of Sagittarius A* three years later. What the array
-- measures is interferometric visibilities at 1.3 mm, reconstructed into a map
-- of brightness on the sky: a ring about 42 microarcseconds across, brighter
-- along one side because the material there is coming towards us, and a
-- depression in the middle where the photons that would have reached us went
-- into the hole instead. Four levels in that map are worth naming -- the bright
-- side of the ring, the dim side, the depression, and the background -- and
-- brightness is the only quantity in the file.
--
-- `observatory-eventhorizon` is the published picture: the orange-and-black colormap
-- that everyone has seen, and its header says plainly that the color is an
-- assignment rather than a measurement. This is the same data with nothing
-- applied to it. Intensities become lightness through a square-root stretch,
-- which is the standard way to show an astronomical image with a large dynamic
-- range, and lightness is the entire palette: the ring carries properties,
-- functions and keywords, plain text sits just below it, the interior carries
-- everything else in the code, and operators and comments are at the floor.
--
-- The structure is the depression. Between the ring and the interior the
-- palette leaves twenty units of L* empty -- two rungs' worth, deliberately
-- unused -- because that gap is the measurement the image was taken to make.
-- `observatory-iapetus` does the same thing with a moon's two hemispheres; this
-- one has the better excuse.
--
-- Four values carry every syntax role, which is the fewest in the collection,
-- and they are dark: nothing here reaches the pure white that
-- `observatory-plate` ends on, because in the data almost nothing is bright.
-- The intensity ratio from the ring to the interior is about ten to one and the
-- palette renders it as under four to one in contrast, so, as with
-- `observatory-trappist`, the ordering survives and the scale does not.
--
-- Levels, and the roles they take:
--
--   ring         gray      17.94 contrast   properties, functions, keywords
--   punct        gray       6.92 contrast   types, modules, strings, numbers, macros, imports, escapes
--   comment      gray       4.69 contrast   operators
--
-- Nothing here was searched for. A palette with no hue and no saturation
-- has only lightness to arrange, and the arrangement came from the source,
-- so this ladder was written out and then audited rather than solved: every
-- pair of colors that can appear together -- including every pair with the
-- error, warning and git colors, which sit beside code in the sign column --
-- was measured against the family's separation limit.
--
-- Construction otherwise follows the rest of the family: every foreground
-- is solved by binary search for an exact contrast ratio against #000000,
-- and the closest pair of adjacent-capable roles sits at 11.3 Delta E.

return {
  name = "observatory-shadow",
  about = "the black hole picture as recorded, which is gray",
  floor = 11.3,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#0f0f0f",
  bg_float = "#161616",
  bg_sel = "#272727",
  bg_hl = "#353535",
  border = "#414141",
  bg_search = "#555555",
  nontext = "#373737",

  -- the text ladder
  text = "#cacaca",
  dim = "#949494",
  punct = "#949494",
  comment = "#777777",
  lnr = "#626262",
  lnr_cur = "#949494",

  -- syntax roles
  str = "#949494",
  num = "#949494",
  typ = "#949494",
  mod = "#949494",
  prop = "#ededed",
  func = "#ededed",
  kw = "#ededed",
  op = "#777777",
  macro = "#949494",
  esc = "#949494",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#ededed",
  hint = "#ededed",
  ok = "#29b16d",
  accent = "#ededed",
  cursearch = "#ededed",
  subst = "#ededed",
  match = "#edc24a",
  title = "#ededed",
  dir = "#ededed",
  label = "#ededed",
  tag = "#ededed",
  h1 = "#ededed",
  h2 = "#ededed",
  h3 = "#ededed",
  h4 = "#ededed",
  h5 = "#ededed",
  h6 = "#ededed",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#390a0a",
  diff_text = "#601111",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#330909",
  vt_hint = "#300808",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "punct", hue = 0, chroma = 0.0, cr = 6.92 },
    { key = "ring", hue = 0, chroma = 0.0, cr = 17.94 },
    { key = "comment", hue = 0, chroma = 0.0, cr = 4.69 },
  },
}

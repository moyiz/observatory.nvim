-- observatory-deneb -- one line, in emission and in absorption
--
-- Source: Deneb, alpha Cygni, an A2 Ia supergiant at 8,525 K, around 200 solar
-- radii and something like 196,000 solar luminosities -- one of the most
-- luminous stars a naked eye can reach, and the prototype of the Alpha Cygni
-- variables, which pulsate non-radially and refuse to keep a period. The
-- photosphere comes through the Planck curve; the features come through
-- Bruton's conversion. Nitrogen at 568.0 nm is in the palette because it is
-- diagnostic: the surface of an A supergiant is CNO-processed material dredged
-- up from a shell that has been fusing hydrogen through the carbon cycle, so it
-- is nitrogen-rich in a way an unevolved star of the same temperature is not.
--
-- The scheme is built around what Deneb's wind does to hydrogen-alpha. The
-- star loses roughly a hundred-thousandth of a solar mass a year -- about a
-- hundred thousand times the solar wind -- and gas expanding towards the
-- observer absorbs on the blue side of the line while the rest of the shell
-- emits across all of it. That is a P Cygni profile, and it means the same
-- wavelength is both the brightest and the darkest thing in the spectrum. So
-- 656.3 nm appears twice here, once as a bright rung and once as a dark one,
-- and they are not two colors: they are one line seen through gas coming and
-- gas going.
--
-- The two halves of that profile are separated by lightness alone, because the
-- Doppler shift that separates them in a spectrograph is far too small to be a
-- color. Deneb's wind runs at a few hundred kilometers a second, which moves
-- 656.3 nm by about a nanometer -- a shift the display cannot show, where
-- `observatory-doppler` and `observatory-ss433` work because their jets move
-- at a quarter of the speed of light. The absorption rung is therefore drawn as
-- the same hue held down the ladder and desaturated, which is what the trough
-- looks like rather than what it is.
--
-- One number in the source paragraph is not really known. Deneb's distance has
-- resisted measurement -- the original Hipparcos reduction put it beyond 3,000
-- light years, the 2007 reduction near 1,550, and Gaia cannot use it because it
-- is too bright to observe -- and luminosity goes as the square of distance, so
-- the figure above is uncertain by a factor of several. The temperature, which
-- is what the palette is actually built from, is not in doubt.
--
-- Lines, and the roles they take:
--
--   photosphere  hue 220   16.94 contrast   properties
--   n_ii         hue  68   13.60 contrast   functions
--   he_i         hue  54   11.53 contrast   modules, types
--   wind_emission hue   0    7.82 contrast   strings, escapes
--   wind_trough  hue   0    7.55 contrast   keywords, macros, imports
--   k_calcium    hue 289    5.99 contrast   numbers
--   fe_ii        hue 110    4.81 contrast   operators
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
-- 13.9 Delta E.

return {
  name = "observatory-deneb",
  about = "one line, in emission and in absorption",
  floor = 13.9,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#0a0f17",
  bg_float = "#0e1524",
  bg_sel = "#1a264d",
  bg_hl = "#1e355d",
  border = "#2b3f6f",
  bg_search = "#38509e",
  nontext = "#293852",

  -- the text ladder
  text = "#bfc0c5",
  dim = "#a6aab6",
  punct = "#738095",
  comment = "#989ba2",
  lnr = "#54658a",
  lnr_cur = "#9fa6b6",

  -- syntax roles
  str = "#f07b7b",
  num = "#bd66d1",
  typ = "#d4c21e",
  mod = "#d4c21e",
  prop = "#e3e7ef",
  func = "#c9d966",
  kw = "#d68585",
  op = "#3c892d",
  macro = "#d68585",
  esc = "#f07b7b",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#d4c21e",
  hint = "#f07b7b",
  ok = "#29b16d",
  accent = "#c9d966",
  cursearch = "#d68585",
  subst = "#f07b7b",
  match = "#edc24a",
  title = "#c9d966",
  dir = "#d4c21e",
  label = "#d68585",
  tag = "#d68585",
  h1 = "#d68585",
  h2 = "#c9d966",
  h3 = "#f07b7b",
  h4 = "#d4c21e",
  h5 = "#d4c21e",
  h6 = "#bd66d1",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#1e1b05",
  diff_text = "#353009",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#1b1805",
  vt_hint = "#300808",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "wind_emission", hue = 0, chroma = 49.5, cr = 7.82 },
    { key = "k_calcium", hue = 289, chroma = 65.6, cr = 5.99 },
    { key = "he_i", hue = 54, chroma = 75.2, cr = 11.53 },
    { key = "photosphere", hue = 220, chroma = 4.4, cr = 16.94 },
    { key = "n_ii", hue = 68, chroma = 58.2, cr = 13.60 },
    { key = "wind_trough", hue = 0, chroma = 33.8, cr = 7.55 },
    { key = "fe_ii", hue = 110, chroma = 58.5, cr = 4.81 },
  },
}

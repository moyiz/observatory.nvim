-- observatory-catseye-computed -- a planetary nebula's shells, ordered by ionisation energy
--
-- Source: the emission lines of a planetary nebula, which is not one glowing
-- gas but a set of nested shells. The dying central star's ultraviolet
-- strips electrons from the inner gas and arrives at the outer gas already
-- spent, so each ion lives at the radius where photons still have the energy
-- to make it: Fe VII needs 99 eV, He II 54.4, Ne III 41, Cl III 39.6, O III
-- 35.1, He I 24.6, N II 14.5, hydrogen 13.6, and neutral oxygen none at all.
--
-- So hue here is wavelength and brightness is ionisation energy, which means
-- reading the palette from top to bottom is reading the nebula from the
-- inside out. Nothing is chosen twice: where a color sits in the ladder is
-- the energy it takes to produce the ion that emits it.
--
-- The energies bunch, and the palette shows it. Three strata fall within six
-- electron-volts of one another, a fourth is not far above them, and since
-- the mapping from energy to brightness flattens at the top, all four arrive
-- within about one contrast step -- violet, green, teal and blue at nearly a
-- single lightness, where hue is left to do all of the separating. At the far
-- end neutral oxygen has no ionisation energy at all and drops well clear of
-- everything else.
--
-- Two absences are the display's fault rather than the nebula's. [S II] at
-- 671.6 nm is thirteen nanometers from [N II], which sRGB renders as the same
-- red, and its stratum would have sat close by. Hydrogen appears as H-gamma
-- at 434.0 rather than H-alpha or H-beta for the same reason: the first is
-- that same red and the second the same cyan as [O III], and hydrogen's
-- stratum is next to both. The ladder cannot separate what the display
-- cannot show.
--
-- Strata, and the roles they take:
--
--   fe_vii       hue  38   16.93 contrast   properties
--   cl_iii       hue  80   15.40 contrast   types
--   he_i         hue  54   12.21 contrast   escapes
--   o_iii        hue 153   12.09 contrast   strings
--   he_ii        hue 202   12.08 contrast   functions
--   h_gamma      hue 249   11.21 contrast   numbers
--   ne_iii       hue 294   11.21 contrast   modules
--   n_ii         hue   0   11.02 contrast   keywords, macros, imports
--   o_i          hue  19    4.81 contrast   operators
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
-- 23.4 Delta E.

return {
  name = "observatory-catseye-computed",
  about = "a planetary nebula's shells, ordered by ionisation energy",
  floor = 23.4,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#081012",
  bg_float = "#0b171c",
  bg_sel = "#132b3a",
  bg_hl = "#163a46",
  border = "#214556",
  bg_search = "#2a5979",
  nontext = "#223b45",

  -- the text ladder
  text = "#b3b8bb",
  dim = "#9fadb3",
  punct = "#4691ac",
  comment = "#72797d",
  lnr = "#486a7a",
  lnr_cur = "#95a9b2",

  -- syntax roles
  str = "#82d5af",
  num = "#bfb7ed",
  typ = "#cfe5a4",
  mod = "#eea3f6",
  prop = "#f5e5c9",
  func = "#86cdf6",
  kw = "#f2a9a9",
  op = "#c45928",
  macro = "#f2a9a9",
  esc = "#d3c863",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#e5b223",
  info = "#eea3f6",
  hint = "#82d5af",
  ok = "#29b16d",
  accent = "#86cdf6",
  cursearch = "#f2a9a9",
  subst = "#82d5af",
  match = "#e5b223",
  title = "#86cdf6",
  dir = "#cfe5a4",
  label = "#f2a9a9",
  tag = "#f2a9a9",
  h1 = "#f2a9a9",
  h2 = "#86cdf6",
  h3 = "#82d5af",
  h4 = "#cfe5a4",
  h5 = "#eea3f6",
  h6 = "#bfb7ed",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#300935",
  diff_text = "#52105a",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#2b082f",
  vt_hint = "#051a10",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "o_iii", hue = 153, chroma = 35.5, cr = 12.09 },
    { key = "h_gamma", hue = 249, chroma = 29.3, cr = 11.21 },
    { key = "cl_iii", hue = 80, chroma = 34.5, cr = 15.40 },
    { key = "ne_iii", hue = 294, chroma = 51.0, cr = 11.21 },
    { key = "fe_vii", hue = 38, chroma = 15.7, cr = 16.93 },
    { key = "he_ii", hue = 202, chroma = 29.5, cr = 12.08 },
    { key = "n_ii", hue = 0, chroma = 29.0, cr = 11.02 },
    { key = "o_i", hue = 19, chroma = 61.7, cr = 4.81 },
    { key = "he_i", hue = 54, chroma = 52.0, cr = 12.21 },
  },
}

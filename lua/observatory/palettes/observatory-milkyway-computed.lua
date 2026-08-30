-- observatory-milkyway-computed -- our own galaxy, whose color was the hardest to measure
--
-- Source: the Milky Way, which is the one galaxy nobody could see. Every
-- external galaxy can be pointed at and measured; ours has to be inferred from
-- inside, through its own dust, from a position two thirds of the way out. The
-- integrated color was finally pinned down in 2015 by comparing the Galaxy's
-- mass and star formation rate against a large sample of galaxies that could be
-- measured directly, and the answer -- near white, very slightly warm -- was
-- described in the paper's press release as the color of fresh spring snow in
-- early morning light. Components and their colors go through the same channel
-- mapping as `observatory-bimodal`: u, g and r into blue, green and red,
-- balanced so that a Sun-colored object comes out white.
--
-- The structure follows from that. Plain text is the integrated color of the
-- whole Galaxy -- the thing the measurement produced -- and every accent is one
-- of its parts, ordered by stellar age: H II regions and spiral arms at the top
-- where the young blue stars are, the thin disc, the thick disc, the bulge, the
-- globular clusters, and the dust lanes at the bottom. Reading down the palette
-- is reading the Galaxy's history backwards, and the average of it is what you
-- type in. Which part takes which role is settled by area rather than by the
-- ladder, though: the thin disc makes something like seventy per cent of the
-- Galaxy's light, so it takes strings, and the globular clusters make about one
-- per cent, so they take types.
--
-- Two colors here are held below their computed chroma, for one reason. The
-- integrated color calculates to 22 chroma units, which is a visible pink, and
-- no palette should put a visible pink under every character on screen, so
-- plain text keeps under a quarter of it. The thin disc is the population that
-- produces most of that integrated light, and once it took strings it was
-- under a fifth of the characters rather than a twentieth, so it is pinned the
-- same way -- about half the purity the channel mapping asks for. Both hues
-- are untouched, and both are the reason the measured color of the Galaxy is
-- nearly white.
--
-- It is worth knowing where the Galaxy lands in `observatory-bimodal`. Not in
-- the blue cloud, where its spiral arms would suggest, and not on the red
-- sequence: in the green valley between them, which is the sparse region those
-- two populations leave, and which that scheme shows is not green either.
--
-- `observatory-galaxy` is the collection's other galactic-population scheme and
-- covers the same ground -- color as age, across a spiral -- for a generic
-- galaxy seen from outside, and derives its colors from stellar temperatures
-- rather than from survey filters. This one is about the difficulty of
-- measuring the galaxy you are standing in.
--
-- Components, and the roles they take:
--
--   hii          hue 230   15.92 contrast   properties
--   arms         hue 232   10.66 contrast   functions
--   thick_disc   hue   4    9.43 contrast   modules
--   thin_disc    hue 253    8.64 contrast   strings, escapes
--   bulge        hue  18    7.64 contrast   keywords, macros, imports
--   globulars    hue  21    6.36 contrast   types
--   dust         hue  21    4.76 contrast   numbers, operators
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
-- 15.9 Delta E.

return {
  name = "observatory-milkyway-computed",
  about = "our own galaxy, whose color was the hardest to measure",
  floor = 15.9,

  -- backgrounds, borders and listchars
  bg = "#000000",
  bg_alt = "#0c0d1d",
  bg_float = "#11112e",
  bg_sel = "#231e5b",
  bg_hl = "#262c79",
  border = "#36368a",
  bg_search = "#4a42bd",
  nontext = "#303362",

  -- the text ladder
  text = "#d4cfd1",
  dim = "#a9a9b9",
  punct = "#7f8198",
  comment = "#7473a5",
  lnr = "#5f5f95",
  lnr_cur = "#a3a3bf",

  -- syntax roles
  str = "#a7a5ae",
  num = "#c05b23",
  typ = "#ca794e",
  mod = "#d0a3a0",
  prop = "#d9dffd",
  func = "#afb6e6",
  kw = "#ca8e75",
  op = "#c05b23",
  macro = "#ca8e75",
  esc = "#a7a5ae",

  -- interface duties, following the syntax colors
  err = "#f24e54",
  warn = "#edc24a",
  info = "#d0a3a0",
  hint = "#a7a5ae",
  ok = "#29b16d",
  accent = "#afb6e6",
  cursearch = "#ca8e75",
  subst = "#a7a5ae",
  match = "#edc24a",
  title = "#afb6e6",
  dir = "#ca794e",
  label = "#ca8e75",
  tag = "#ca8e75",
  h1 = "#ca8e75",
  h2 = "#afb6e6",
  h3 = "#a7a5ae",
  h4 = "#ca794e",
  h5 = "#d0a3a0",
  h6 = "#c05b23",

  -- diff and virtual-text backdrops
  diff_add = "#062315",
  diff_delete = "#430c0e",
  diff_change = "#370c0a",
  diff_text = "#5c1510",
  vt_error = "#390a0c",
  vt_warn = "#1f1906",
  vt_info = "#310b09",
  vt_hint = "#170b41",

  -- Accent sources: hue, chroma and contrast, for the docs
  -- and for anything that wants to sort or filter these.
  units = {
    { key = "thin_disc", hue = 253, chroma = 5.0, cr = 8.64 },
    { key = "dust", hue = 21, chroma = 61.4, cr = 4.76 },
    { key = "globulars", hue = 21, chroma = 45.9, cr = 6.36 },
    { key = "thick_disc", hue = 4, chroma = 18.0, cr = 9.43 },
    { key = "hii", hue = 230, chroma = 15.7, cr = 15.92 },
    { key = "arms", hue = 232, chroma = 26.0, cr = 10.66 },
    { key = "bulge", hue = 18, chroma = 29.8, cr = 7.64 },
  },
}

# observatory.nvim :night_with_stars: <!-- toc omit heading -->

A huge collection of space related colorschemes, all on a true black background,
each one's palette derived from an emission spectrum, a blackbody temperature, a
planetary albedo, a light curve, a color index, a photographic characteristic
curve, or an optimiser.

> [!NOTE]
> All color palettes where selected, measured and computed carefully by Opus 5,
> each one having its own constraints. See the head comments in each palette for
> more info.

## Table of Contents <!-- toc omit heading -->

- [:stars: Features](#stars-features)
- [:hammer: Installation](#hammer-installation)
- [:gear: Options](#gear-options)
  - [:wheel: Overrides](#wheel-overrides)
  - [:desktop_computer: Terminal colors](#desktop_computer-terminal-colors)
  - [:nut_and_bolt: Integrations](#nut_and_bolt-integrations)
- [:art: Colorschemes](#art-colorschemes)
  - [Sky](#sky)
  - [Solar system](#solar-system)
  - [Stars](#stars)
  - [Exoplanets](#exoplanets)
  - [Nebulae](#nebulae)
  - [Galaxies and deep fields](#galaxies-and-deep-fields)
  - [Events](#events)
  - [Readings](#readings)
  - [Constructions](#constructions)
- [:notebook: Recipes](#notebook-recipes)
- [:scroll: License](#scroll-license)

## :stars: Features

- 150+ colorschemes.
- `#000000` background (optional transparency).
- Opt-in integrations with 27+ plugins.
- Optional terminal colors supporting 3 modes.
- A detailed and structured index for colorscheme filtering.

## :hammer: Installation

Requires Neovim >= 0.9 and a true-color terminal.

```lua
{
  "moyiz/observatory.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme "observatory-milkyway"
  end,
}
```

With options:

```lua
{
  "moyiz/observatory.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    transparent = true,
    terminal_colors = "diagnostic",
  },
  config = function(_, opts)
    require("observatory").setup(opts)
    vim.cmd.colorscheme "observatory-crab"
  end,
}
```

## :gear: Options

```lua
require("observatory").setup {
  transparent = false,      -- clear the editor background
  italic = true,            -- comments and builtins
  bold = true,              -- keywords, functions, titles
  undercurl = true,         -- diagnostics and spelling; off means underline
  terminal_colors = false,  -- true | "nearest" | "diagnostic" | "synth"
  integrations = {},        -- opt in per plugin, e.g. { telescope = true }
  overrides = {},           -- highlight groups of your own, keyed by scheme
}
```

### :wheel: Overrides

Highlight groups of your own, keyed by the scheme they apply to:

```lua
require("observatory").setup {
  overrides = {
    ["*"] = { Comment = { italic = false } },
    ["observatory-plate"] = function(c)
      return { ["@keyword"] = { fg = c.text, bold = true }, WinBar = { link = "StatusLine" } }
    end,
  },
}
```

`"*"` is every scheme and is applied first, so a per-scheme tweak layers on a
shared one. A value can be a function of the palette, which is how to write an
override against the scheme's own colors instead of a hex literal. It is the
palette keyed by role - `bg`, `text`, `comment`, `kw`, `str`, `func` and so on -
and `require("observatory").palette()` returns the same table for use elsewhere.

A spec is merged into the scheme's own, so naming one attribute keeps the color
the palette chose - `{ italic = false }` above leaves `Comment` the color it
was. A spec that links replaces outright, since `nvim_set_hl` ignores everything
else once `link` is present.

Overrides are applied in the same pass as the rest of the scheme rather than from
an autocmd on `ColorScheme`, which matters in three ways: they take effect when
you set them, even if the scheme was already loaded before your config ran; they
do not compete for ordering with the other plugins listening to that event; and
`require("observatory").groups()` reports what is actually on screen.

### :desktop_computer: Terminal colors

This plugins supports setting `vim.g.terminal_color_0` through `15` for
`:terminal` buffers.

Off by default. When you turn it on, the question is what to do about missing
colorscheme colors.

| Method         | Description                                                                                                                                          |
| -------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------- |
| `"nearest"`    | Never invents a color. Uses the closest one the scheme owns (default).                                                                               |
| `"diagnostic"` | Red, yellow and green come from the scheme's own error, warning and git colors. Others come from the nearest accent within 40 degrees, or are built. |
| `"synth"`      | Builds all six at canonical hues, using the scheme's own mean saturation and a contrast its ladder already uses.                                     |

For schemes that have no hue:

- `"nearest"` takes red, yellow and green from the diagnostic colors and
  collapses others onto them.
- `"synth"` builds all six at canonical hues on a saturation ladder of zero, so
  they come out as six barely tinted grays. Both are the right answer for a
  palette that never contained those colors.

### :nut_and_bolt: Integrations

Opt-in.

Plugins mostly declare their groups with `hi default link` onto core groups.
Each integration covers the remainder - hardcoded colors, missing links or links
I disagree with.

Available integrations:

- `aerial`
- `blink`
- `cmp`
- `dap`
- `diffview`
- `flash`
- `gitsigns`
- `illuminate`
- `indent_blankline`
- `lazy`
- `mason`
- `mini`
- `navic`
- `neo_tree`
- `noice`
- `notify`
- `nvim_tree`
- `rainbow_delimiters`
- `render_markdown`
- `snacks`
- `telescope`
- `todo_comments`
- `treesitter_context`
- `trouble`
- `which_key`
- `window_picker`

## :art: Colorschemes

158 schemes in 9 families, 75 sampled from an image, 77 computed from a measurement and 6 solved for separation alone. Their floors run 8.1 to 30.4 ΔE.

`from` is where the colors came from: an `image`, a `measured` quantity, or `solved` for separation alone. `ΔE` is the closest pair of colors that can appear adjacent -- higher is easier to read. `hue` is the width in degrees of the band the accents occupy, so a small number means a near-monochrome. `n` is how many distinct accents carry the ten syntax roles; fewer means roles deliberately share.

### Sky

Things that happen in Earth's own sky, none of which hold still long enough to be photographed the way a planet is. Most convert emission lines to hues; three of them convert a diffraction pattern, a temperature, and the path a sunbeam took through the atmosphere.

| Scheme                    |                                                                   | from     | ΔE   | n   | hue |
| ------------------------- | ----------------------------------------------------------------- | -------- | ---- | --- | --- |
| `observatory-aurora`      | the green aurora, on its own night sky                            | measured | 12.5 | 9   | 200 |
| `observatory-aurora-red`  | the rare all-red aurora, green demoted to an accent               | measured | 12.0 | 8   | 232 |
| `observatory-comet`       | two tails, two hue families, nothing in between                   | measured | 10.7 | 7   | 197 |
| `observatory-eclipse`     | the corona, almost colorless, with one ruby line                  | measured | 11.4 | 8   | 194 |
| `observatory-hubble`      | the Hubble palette, which lands on the corners of the RGB cube    | measured | 13.5 | 8   | 300 |
| `observatory-nacreous`    | iridescent ice at 20 km, and the only pastel here                 | measured | 12.4 | 6   | 229 |
| `observatory-nightsky`    | star colors by spectral class, on a deep blue sky                 | measured | 10.7 | 7   | 170 |
| `observatory-noctilucent` | sunlight that has already gone below the horizon, seen from 83 km | measured | 21.3 | 6   | 204 |

### Solar system

Eight planets, nine moons, two dwarf planets, one contact binary and one ring system, each sampled from the portrait its mission is known for, and most of them paired with the reflectance spectra that portrait is a picture of. Half the solar system is a shade of tan and the palettes say so; four worlds photograph with no color at all, and their faint warm-cool split is amplified rather than replaced with a hue they do not have.

| Scheme                           |                                                                 | from     | ΔE   | n   | hue |
| -------------------------------- | --------------------------------------------------------------- | -------- | ---- | --- | --- |
| `observatory-mercury`            | the enhanced-color globe: tan crust, blue minerals, gold plains | image    | 9.5  | 8   | 234 |
| `observatory-mercury-computed`   | the grayest planet, mapped by reflectance unit                  | measured | 11.3 | 8   | 197 |
| `observatory-venus`              | cream cloud in every direction, and nothing else                | image    | 10.1 | 4   | 170 |
| `observatory-venus-computed`     | the cloud deck above, the surface nobody sees below             | measured | 15.5 | 8   | 143 |
| `observatory-earth`              | ocean, vegetation, desert, ice                                  | image    | 9.6  | 6   | 182 |
| `observatory-earth-computed`     | the only world that needs no help finding colors                | measured | 11.6 | 9   | 196 |
| `observatory-luna`               | the full moon: five grays and a warm cast                       | image    | 11.1 | 4   | 60  |
| `observatory-luna-computed`      | gray, until you stretch it                                      | measured | 12.0 | 8   | 198 |
| `observatory-mars`               | rust, dust and one bright polar cap                             | image    | 16.5 | 5   | 177 |
| `observatory-mars-computed`      | rust, with the blue its sunsets actually are                    | measured | 14.4 | 8   | 205 |
| `observatory-jupiter`            | zones, belts and the Great Red Spot                             | image    | 17.3 | 5   | 185 |
| `observatory-jupiter-computed`   | zones, belts, the red spot and the blue poles                   | measured | 12.0 | 8   | 186 |
| `observatory-io`                 | sulfur, ochre and frost, and no blue anywhere                   | image    | 17.7 | 6   | 18  |
| `observatory-io-computed`        | sulfur yellow, with frost as the only cool thing on it          | measured | 11.5 | 7   | 193 |
| `observatory-europa`             | ice, and the rust-brown cracks across it                        | image    | 17.2 | 5   | 44  |
| `observatory-europa-computed`    | water ice, and whatever the ocean brought up                    | measured | 11.0 | 8   | 194 |
| `observatory-ganymede`           | grooved terrain in tan, and the frost at its poles              | image    | 16.7 | 4   | 16  |
| `observatory-ganymede-computed`  | grooved ice over ancient rock                                   | measured | 14.3 | 8   | 190 |
| `observatory-callisto`           | the most cratered surface known, in dark tan                    | image    | 18.5 | 6   | 156 |
| `observatory-callisto-computed`  | the oldest surface, and the least to say about it               | measured | 17.5 | 6   | 188 |
| `observatory-saturn`             | pale gold, with the rings' shadow laid across it                | image    | 17.2 | 4   | 12  |
| `observatory-saturn-computed`    | butterscotch, with the blue winter hemisphere                   | measured | 11.8 | 8   | 196 |
| `observatory-titan`              | a hazy orange orb, which is all anyone sees from outside        | image    | 16.9 | 4   | 142 |
| `observatory-titan-computed`     | an orange monochrome; the haze admits nothing else              | measured | 10.7 | 7   | 31  |
| `observatory-enceladus`          | white ice, and the fractures that vent it                       | image    | 11.6 | 4   | 195 |
| `observatory-enceladus-computed` | the brightest surface in the solar system                       | measured | 14.1 | 8   | 28  |
| `observatory-iapetus`            | two-tone: snow on one face, tar on the other                    | image    | 17.1 | 6   | 141 |
| `observatory-iapetus-computed`   | two hemispheres, and nothing in between                         | measured | 15.2 | 7   | 198 |
| `observatory-uranus`             | featureless pale cyan, and that is the observation              | image    | 16.2 | 4   | 40  |
| `observatory-uranus-computed`    | the most featureless palette here, and honestly so              | measured | 13.2 | 7   | 14  |
| `observatory-neptune`            | azure, a shade deeper than Uranus and no bluer                  | image    | 10.4 | 4   | 3   |
| `observatory-neptune-computed`   | the iconic blue, which is not quite the real one                | measured | 11.4 | 8   | 54  |
| `observatory-triton`             | cantaloupe terrain under a pink nitrogen cap                    | image    | 8.5  | 4   | 169 |
| `observatory-triton-computed`    | cantaloupe terrain and pink nitrogen frost                      | measured | 12.9 | 8   | 176 |
| `observatory-pluto`              | the heart, in cream and tholin tan                              | image    | 18.1 | 4   | 4   |
| `observatory-pluto-computed`     | nitrogen ice, tholin red, and a blue sky                        | measured | 16.2 | 8   | 192 |
| `observatory-charon`             | gray ice, and one red-brown pole                                | image    | 9.8  | 5   | 162 |
| `observatory-charon-computed`    | Pluto's tholins, arrived second-hand                            | measured | 14.7 | 8   | 190 |
| `observatory-ceres`              | blue-gray regolith around one bright crater                     | image    | 15.8 | 4   | 130 |
| `observatory-ceres-computed`     | bright salt on a very dark world                                | measured | 18.0 | 8   | 196 |
| `observatory-rings`              | a scan across the annuli, unlit side                            | image    | 18.2 | 4   | 127 |
| `observatory-arrokoth`           | the reddest thing photographed up close                         | image    | 8.1  | 4   | 3   |

### Stars

Temperatures, color indices and light curves, which is most of what a star gives you from this distance -- plus a spectrum full of elements that should not be there, a jet at a quarter of light speed, a dip measured filter by filter, and two atmospheres cool enough that the visible band is almost the wrong place to look. The Planckian locus barely turns, so several of these are near-monochromes and say so. Four end states sit here too: a white dwarf's whole cooling track, the cold nothing at the end of it and the last supernovae in the universe, the blue-white star a red dwarf becomes after trillions of years, and the stars in a globular cluster that are hotter than their own age allows.

| Scheme                                 |                                                                 | from     | ΔE   | n   | hue |
| -------------------------------------- | --------------------------------------------------------------- | -------- | ---- | --- | --- |
| `observatory-albireo`                  | the color-contrast doubles, and the green that isn't            | measured | 18.8 | 7   | 167 |
| `observatory-alphacentauri`            | the nearest three stars, and one flare                          | measured | 16.9 | 5   | 168 |
| `observatory-betelgeuse`               | a resolved supergiant, mid-dimming, in amber                    | image    | 9.8  | 7   | 37  |
| `observatory-betelgeuse-computed`      | a supergiant, and the dust that dimmed it                       | measured | 17.8 | 6   | 2   |
| `observatory-nervia`                   | the star Eburonia orbits, which is very nearly the Sun          | image    | 17.0 | 5   | 2   |
| `observatory-nervia-computed`          | the star Eburonia orbits, by its own temperatures               | measured | 12.3 | 8   | 97  |
| `observatory-carbon`                   | the reddest stars there are, in purity not hue                  | measured | 16.5 | 6   | 6   |
| `observatory-cepheid`                  | a light curve, and no color to speak of                         | measured | 15.4 | 5   | 3   |
| `observatory-etacarinae`               | two lobes of debris from a star that survived its own explosion | image    | 16.1 | 6   | 104 |
| `observatory-etacarinae-computed`      | the Homunculus, and the star inside it                          | measured | 20.7 | 7   | 185 |
| `observatory-magnitude`                | the eight brightest stars, with Vega at zero                    | measured | 15.8 | 8   | 171 |
| `observatory-sirius`                   | brighter is cooler, for once                                    | measured | 11.2 | 6   | 3   |
| `observatory-v838monocerotis`          | a light echo, which is not an explosion but its shadow on dust  | image    | 16.9 | 8   | 180 |
| `observatory-v838monocerotis-computed` | one flash, seen at four delays                                  | measured | 16.3 | 7   | 192 |
| `observatory-boyajian`                 | a dip in a light curve, measured filter by filter               | measured | 18.7 | 5   | 230 |
| `observatory-przybylski`               | a spectrum full of elements that should not be there            | measured | 28.3 | 9   | 282 |
| `observatory-ss433`                    | one line, two jets, and the half that is invisible              | measured | 21.3 | 7   | 202 |
| `observatory-browndwarf`               | not a star, not a planet: a red monochrome                      | image    | 15.8 | 7   | 101 |
| `observatory-browndwarf-computed`      | the failed stars, and the one honest purple here                | measured | 17.5 | 6   | 145 |
| `observatory-wolfrayet`                | a star shedding itself, in plum and steel                       | image    | 16.2 | 6   | 144 |
| `observatory-wolfrayet-computed`       | the hottest stars there are, and none of it is the continuum    | measured | 15.7 | 7   | 225 |
| `observatory-crux`                     | the Southern Cross, which is three quarters one color           | measured | 20.5 | 5   | 174 |
| `observatory-arcturus`                 | the reference K giant, and the gaps in its light                | measured | 17.5 | 8   | 216 |
| `observatory-vega`                     | the star everything else is measured against                    | measured | 17.1 | 6   | 220 |
| `observatory-rigel`                    | a blue supergiant, and the dust it lights                       | measured | 16.7 | 7   | 198 |
| `observatory-deneb`                    | one line, in emission and in absorption                         | measured | 13.9 | 7   | 250 |
| `observatory-mira`                     | the first variable, and the band that exaggerates it            | measured | 22.6 | 7   | 178 |
| `observatory-bluedwarf`                | a red dwarf's whole future, in six steps                        | measured | 19.0 | 7   | 184 |
| `observatory-cooling`                  | a white dwarf, from 100,000 K down to nothing                   | measured | 17.8 | 7   | 171 |
| `observatory-blackdwarf`               | the coldest thing there will ever be, and its last light        | measured | 21.5 | 6   | 169 |
| `observatory-straggler`                | one cluster's diagram, and the stars that break it              | measured | 17.8 | 7   | 176 |

### Exoplanets

Nobody has resolved any of these worlds, so each palette comes from the artist's impression the mission published, which is what a search returns. Six of them share artwork: NASA serves one illustration per planet class, so three super-Earths and two gas giants are drawn by the same files. Those schemes are shipped anyway, declared siblings, and each header says which frame it shares and with whom. Four of them are the planets people know by a name instead of a designation, and each of those has release art of its own.

| Scheme                          |                                                                        | from     | ΔE   | n   | hue |
| ------------------------------- | ---------------------------------------------------------------------- | -------- | ---- | --- | --- |
| `observatory-trappist`          | bone-dry rock in the habitable zone of a red dwarf                     | image    | 17.6 | 5   | 174 |
| `observatory-trappist-computed` | seven worlds, and the one small red star lighting them                 | measured | 16.4 | 7   | 2   |
| `observatory-tres2`             | the darkest world known, and the dimmest palette here                  | image    | 22.0 | 5   | 17  |
| `observatory-hd189733`          | the one exoplanet whose color was measured, and it is blue             | image    | 15.6 | 7   | 23  |
| `observatory-eburonia`          | a hot Neptune in violet and indigo, and its orange dwarf               | image    | 15.7 | 7   | 159 |
| `observatory-kepler56c`         | a red giant, and the planet it is about to swallow                     | image    | 9.2  | 8   | 69  |
| `observatory-kepler292b`        | a super-Earth as an ocean world, in teal and sea green                 | image    | 17.6 | 5   | 30  |
| `observatory-kepler20b`         | five planets ranged against Mercury's orbit                            | image    | 17.2 | 8   | 215 |
| `observatory-hd40307f`          | gray super-Earths under an orange dwarf                                | image    | 17.3 | 6   | 174 |
| `observatory-kepler90h`         | the eight-planet system, in olive and gold                             | image    | 9.4  | 7   | 25  |
| `observatory-mintome`           | the pink planet: a giant still glowing from its own formation          | image    | 16.6 | 5   | 78  |
| `observatory-hd157172b`         | a hot Jupiter being eaten, and the star doing it                       | image    | 16.7 | 6   | 20  |
| `observatory-gliese3323b`       | sage and slate, with one steel-blue sea                                | image    | 16.7 | 6   | 205 |
| `observatory-kepler1275b`       | a frozen super-Earth in russet, at the edge of the light               | image    | 9.8  | 4   | 31  |
| `observatory-kepler1328b`       | a terrestrial placeholder in tan and umber                             | image    | 17.6 | 4   | 25  |
| `observatory-kepler438b`        | a superflare sterilising a habitable-zone planet                       | image    | 16.5 | 5   | 26  |
| `observatory-kepler367b`        | an atmosphere streaming off a small planet, in indigo and amber        | image    | 9.5  | 7   | 132 |
| `observatory-sweeps10`          | a Jupiter skimming a spotted red star, ten hours per year              | image    | 16.8 | 6   | 42  |
| `observatory-enaiposha`         | a steam world in silhouette against a red dwarf                        | image    | 9.6  | 4   | 150 |
| `observatory-dimidium`          | the first planet found around a sun-like star, in tan and butterscotch | image    | 9.8  | 4   | 45  |
| `observatory-tatooine`          | two suns, one silhouette, and every color warm                         | image    | 9.4  | 5   | 29  |
| `observatory-osiris`            | a planet boiling away, gold against an ice-blue tail                   | image    | 16.8 | 8   | 181 |
| `observatory-methuselah`        | the oldest planet known, in teal and cobalt                            | image    | 17.4 | 6   | 190 |

### Nebulae

Clouds of gas, sampled from the press image each one is known by and paired with the emission lines that image was taken through. Narrowband false color is the rule rather than the exception here: the filters that resolve a nebula's structure sit at wavelengths the eye does not separate, so the Hubble-palette version is both the only one and the familiar one.

| Scheme                           |                                                               | from     | ΔE   | n   | hue |
| -------------------------------- | ------------------------------------------------------------- | -------- | ---- | --- | --- |
| `observatory-catseye`            | concentric shells in lilac and slate, eleven of them          | image    | 17.4 | 5   | 136 |
| `observatory-catseye-computed`   | a planetary nebula's shells, ordered by ionisation energy     | measured | 23.4 | 9   | 288 |
| `observatory-crab`               | a supernova's wreckage: teal synchrotron under gold filaments | image    | 9.5  | 8   | 174 |
| `observatory-crab-computed`      | synchrotron continuum against line filaments                  | measured | 12.5 | 8   | 216 |
| `observatory-helix`              | the Eye of God: a rust iris around a periwinkle pupil         | image    | 9.2  | 8   | 187 |
| `observatory-helix-computed`     | the Eye of God, and the ten thousand knots in it              | measured | 26.1 | 7   | 221 |
| `observatory-trifid`             | three dust lanes across pink hydrogen, and a blue reflection  | image    | 15.2 | 6   | 138 |
| `observatory-trifid-computed`    | one star, and the three things dust does to its light         | measured | 17.2 | 7   | 240 |
| `observatory-boomerang`          | the coldest known place, and it photographs as warm gray      | image    | 18.2 | 8   | 102 |
| `observatory-boomerang-computed` | one kelvin, which has no color, so this is borrowed light     | measured | 15.3 | 6   | 158 |
| `observatory-orion`              | the sharpest view of the nebula, in brick and rose            | image    | 16.2 | 6   | 43  |
| `observatory-orion-computed`     | one constellation, measured                                   | measured | 16.7 | 7   | 234 |

### Galaxies and deep fields

Whole stellar populations, which average out paler than any single star; one cloud of gas that is genuinely green; the galaxy that was hardest to measure because we are inside it, both as an illustration and as a photograph from the ground; and two deep fields, Hubble's and Webb's.

| Scheme                           |                                                              | from     | ΔE   | n   | hue |
| -------------------------------- | ------------------------------------------------------------ | -------- | ---- | --- | --- |
| `observatory-bimodal`            | galaxies come in two colors, and the gap is not green        | image    | 18.8 | 7   | 152 |
| `observatory-hoag`               | a gold core inside a detached ring, and nothing in between   | image    | 9.4  | 7   | 217 |
| `observatory-hoag-computed`      | an old core, a young ring, and nothing in between            | measured | 15.6 | 7   | 166 |
| `observatory-voorwerp`           | a green ghost lit by a quasar that has already gone out      | image    | 17.7 | 5   | 145 |
| `observatory-voorwerp-computed`  | the one green thing, and it is gas rather than a star        | measured | 27.3 | 7   | 262 |
| `observatory-galaxy`             | color as age, across a spiral galaxy                         | image    | 17.0 | 7   | 171 |
| `observatory-milkyway`           | our own galaxy from outside, which nobody has seen           | image    | 16.4 | 4   | 183 |
| `observatory-milkyway-computed`  | our own galaxy, whose color was the hardest to measure       | measured | 15.9 | 7   | 151 |
| `observatory-milkywayparanal`    | the galactic plane over Paranal, in slate and mauve          | image    | 12.6 | 4   | 60  |
| `observatory-deepfield`          | ten thousand galaxies, and four per cent of the frame is lit | image    | 9.4  | 7   | 223 |
| `observatory-deepfield-computed` | ten thousand galaxies, sorted by how long the light took     | measured | 27.3 | 6   | 210 |
| `observatory-deepfieldwebb`      | the first Webb deep field, in amber and steel                | image    | 15.8 | 6   | 167 |

### Events

Things that happened, or are still happening. Two of these are the same black hole four years apart, two are the same afterglow of the Big Bang five years apart, and one is a grayscale: the black-hole image with its color map taken off, which is the closest thing to what was recorded. The explosions are the other half: three supernovae sampled from the X-ray and infrared frames their observatories lead with, the dust echoes of the brightest gamma-ray burst on record, and a nova, which is the one transient here that is over too quickly to have a portrait and is derived from its light curve instead.

| Scheme                                  |                                                                    | from     | ΔE   | n   | hue |
| --------------------------------------- | ------------------------------------------------------------------ | -------- | ---- | --- | --- |
| `observatory-eventhorizon`              | the first photograph of a black hole, and it is all one hue        | image    | 16.3 | 7   | 40  |
| `observatory-eventhorizon-computed`     | the colormap the black hole pictures used                          | measured | 16.9 | 8   | 58  |
| `observatory-jet`                       | the same hole four years later, in violet, with its jet            | image    | 9.3  | 8   | 132 |
| `observatory-shadow`                    | the black hole picture as recorded, which is gray                  | image    | 11.3 | 3   | 0   |
| `observatory-cosmicbackground`          | the oldest light there is, as a temperature map                    | image    | 17.7 | 8   | 178 |
| `observatory-cosmicbackground-computed` | a diverging scale, cold to hot, like the anisotropy maps           | measured | 11.0 | 8   | 201 |
| `observatory-cosmicbackgroundlegacy`    | the last word on the oldest light, in eight colors                 | image    | 17.3 | 8   | 170 |
| `observatory-kilonova`                  | two neutron stars merging, and where the gold came from            | image    | 17.1 | 7   | 185 |
| `observatory-kilonova-computed`         | a photosphere crossing the whole stellar locus in five days        | measured | 13.6 | 6   | 171 |
| `observatory-supernova1987a`            | the nearest supernova in four centuries, ringed                    | image    | 17.8 | 5   | 195 |
| `observatory-cassiopeia`                | a remnant in X-rays, which makes it violet                         | image    | 17.9 | 8   | 234 |
| `observatory-cassiopeiawebb`            | the same remnant in the infrared, which makes it teal and rust     | image    | 9.5  | 8   | 207 |
| `observatory-tycho`                     | the star that proved the heavens change, in crimson and periwinkle | image    | 16.9 | 8   | 96  |
| `observatory-nova`                      | a white dwarf's surface igniting, hour by week                     | measured | 17.8 | 8   | 233 |
| `observatory-brightestofalltime`        | the brightest burst ever recorded, in dust echoes                  | image    | 9.7  | 6   | 40  |

### Readings

What an instrument recorded rather than what a body looks like, so there is no portrait to be faithful to: a spectrum, a diagram, a population, a photographic emulsion. Hue, and in several cases brightness too, comes from the measured quantity itself, and where the derivation fixes the order of the ladder the solver may respace it but never reorder it.

| Scheme                           |                                                                | from     | ΔE   | n   | hue |
| -------------------------------- | -------------------------------------------------------------- | -------- | ---- | --- | --- |
| `observatory-balmer`             | the hydrogen Balmer series, brightness following line strength | measured | 10.8 | 7   | 176 |
| `observatory-doppler`            | one spectral line, seven velocities                            | measured | 10.6 | 8   | 265 |
| `observatory-pulsar`             | maximum contrast, and pale because of it                       | measured | 10.3 | 7   | 224 |
| `observatory-fraunhofer`         | the Sun's own labelled absorption lines                        | measured | 29.7 | 10  | 286 |
| `observatory-meteor`             | what the rock was made of, while it lasted                     | measured | 30.4 | 8   | 207 |
| `observatory-hertzsprungrussell` | a color-magnitude diagram, both axes used                      | measured | 17.5 | 7   | 172 |
| `observatory-extinction`         | one blue star behind seven columns of dust                     | measured | 15.5 | 7   | 171 |
| `observatory-kuiper`             | two populations, and the gap between them                      | measured | 16.8 | 8   | 15  |
| `observatory-plate`              | no color at all, and the five grays that leaves                | measured | 12.2 | 4   | 0   |

### Constructions

Of nothing at all, and built to a specification instead: the contrast ladder is fixed and the hues are computed, subject to a separation floor and a minimum distance in the chroma plane.

| Scheme                 |                                                        | from   | ΔE   | n   | hue |
| ---------------------- | ------------------------------------------------------ | ------ | ---- | --- | --- |
| `observatory-albedo`   | the solar system, lit by apparent magnitude            | solved | 10.8 | 8   | 201 |
| `observatory-dichroic` | legible with red-green and blue-yellow color blindness | solved | 14.2 | 7   | 248 |
| `observatory-horizon`  | one line falling into a black hole                     | solved | 10.5 | 9   | 267 |
| `observatory-lagrange` | the palette solved for maximum separation              | solved | 19.1 | 10  | 270 |
| `observatory-phi`      | hues at the golden angle, so any subset stays spread   | solved | 20.4 | 10  | 296 |
| `observatory-syzygy`   | separation spent where tokens actually touch           | solved | 15.5 | 10  | 304 |

## :notebook: Recipes

A random scheme, or one filtered by subject and by how far apart its colors
are:

```lua
local pool = vim.tbl_filter(function(s)
  return s.family == "star" and s.floor >= 16
end, require "observatory.schemes")
vim.cmd.colorscheme(pool[math.random(#pool)].name)
```

Stepping through the collection from a keymap, each one announcing itself:

```lua
local function step(delta)
  local schemes = require "observatory.schemes"
  local at = 0
  for i, s in ipairs(schemes) do
    if s.name == vim.g.colors_name then
      at = i
      break
    end
  end
  local s = schemes[(at - 1 + delta) % #schemes + 1]
  vim.cmd.colorscheme(s.name)
  vim.notify(("%s -- %s"):format(s.name, s.about))
end

vim.keymap.set("n", "]o", function()
  step(1)
end)
vim.keymap.set("n", "[o", function()
  step(-1)
end)
```

A picker with nothing installed, over `vim.ui.select`:

```lua
vim.api.nvim_create_user_command("Observatory", function()
  vim.ui.select(require "observatory.schemes", {
    prompt = "colorscheme",
    format_item = function(s)
      return ("%-32s %s"):format(s.name, s.about)
    end,
  }, function(s)
    if s then
      vim.cmd.colorscheme(s.name)
    end
  end)
end, {})
```

Comparing a photographed subject with the calculation of the same subject:

```lua
local schemes = require "observatory.schemes"
local known = {}
for _, s in ipairs(schemes) do
  known[s.name] = true
end
for _, s in ipairs(schemes) do
  if s.method == "sampled" and known[s.name .. "-computed"] then
    print(s.name, s.about)
  end
end
```

Dedicated picker with [mini.pick](https://github.com/echasnovski/mini.nvim):

```lua
MiniPick.registry.observatory = function()
  local obs = require "observatory"
  local items = vim.tbl_map(function(s)
    return { text = ("%-22s %-12s ΔE %4.1f  %s"):format(s.name, s.family, s.floor, s.about), name = s.name }
  end, require "observatory.schemes")
  local restore = vim.g.colors_name
  return MiniPick.start {
    source = {
      items = items,
      name = "observatory",
      choose = function(item)
        vim.cmd.colorscheme(item.name)
      end,
      preview = function(_, item)
        obs.load(item.name)
      end,
    },
  } or (restore and vim.cmd.colorscheme(restore))
end
```

## :scroll: License

See [LICENSE](./LICENSE).

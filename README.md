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

<details>
<summary>Available integrations</summary>

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

</details>

## :art: Colorschemes

158 schemes in 9 families, 75 sampled from an image, 77 computed from a measurement and 6 solved for separation alone. Their floors run 8.1 to 30.4 ΔE.

`from` is where the colors came from: an `image`, a `measured` quantity, or `solved` for separation alone. `ΔE` is the closest pair of colors that can appear adjacent -- higher is easier to read. `hue` is the width in degrees of the band the accents occupy, so a small number means a near-monochrome. `n` is how many distinct accents carry the ten syntax roles; fewer means roles deliberately share.

[Browse the whole collection](https://moyiz.github.io/observatory.nvim).

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

<details>
<summary>Gallery</summary>
<table>
<tr>
<td><code>observatory-aurora</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-aurora.png"><img alt="observatory-aurora" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-aurora.png"></a></td>
<td><code>observatory-aurora-red</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-aurora-red.png"><img alt="observatory-aurora-red" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-aurora-red.png"></a></td>
</tr>
<tr>
<td><code>observatory-comet</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-comet.png"><img alt="observatory-comet" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-comet.png"></a></td>
<td><code>observatory-eclipse</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-eclipse.png"><img alt="observatory-eclipse" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-eclipse.png"></a></td>
</tr>
<tr>
<td><code>observatory-hubble</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-hubble.png"><img alt="observatory-hubble" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-hubble.png"></a></td>
<td><code>observatory-nacreous</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-nacreous.png"><img alt="observatory-nacreous" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-nacreous.png"></a></td>
</tr>
<tr>
<td><code>observatory-nightsky</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-nightsky.png"><img alt="observatory-nightsky" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-nightsky.png"></a></td>
<td><code>observatory-noctilucent</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-noctilucent.png"><img alt="observatory-noctilucent" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-noctilucent.png"></a></td>
</tr>
</table>
</details>

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

<details>
<summary>Gallery</summary>
<table>
<tr>
<td><code>observatory-mercury</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-mercury.png"><img alt="observatory-mercury" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-mercury.png"></a></td>
<td><code>observatory-mercury-computed</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-mercury-computed.png"><img alt="observatory-mercury-computed" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-mercury-computed.png"></a></td>
</tr>
<tr>
<td><code>observatory-venus</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-venus.png"><img alt="observatory-venus" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-venus.png"></a></td>
<td><code>observatory-venus-computed</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-venus-computed.png"><img alt="observatory-venus-computed" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-venus-computed.png"></a></td>
</tr>
<tr>
<td><code>observatory-earth</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-earth.png"><img alt="observatory-earth" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-earth.png"></a></td>
<td><code>observatory-earth-computed</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-earth-computed.png"><img alt="observatory-earth-computed" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-earth-computed.png"></a></td>
</tr>
<tr>
<td><code>observatory-luna</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-luna.png"><img alt="observatory-luna" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-luna.png"></a></td>
<td><code>observatory-luna-computed</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-luna-computed.png"><img alt="observatory-luna-computed" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-luna-computed.png"></a></td>
</tr>
<tr>
<td><code>observatory-mars</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-mars.png"><img alt="observatory-mars" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-mars.png"></a></td>
<td><code>observatory-mars-computed</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-mars-computed.png"><img alt="observatory-mars-computed" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-mars-computed.png"></a></td>
</tr>
<tr>
<td><code>observatory-jupiter</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-jupiter.png"><img alt="observatory-jupiter" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-jupiter.png"></a></td>
<td><code>observatory-jupiter-computed</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-jupiter-computed.png"><img alt="observatory-jupiter-computed" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-jupiter-computed.png"></a></td>
</tr>
<tr>
<td><code>observatory-io</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-io.png"><img alt="observatory-io" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-io.png"></a></td>
<td><code>observatory-io-computed</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-io-computed.png"><img alt="observatory-io-computed" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-io-computed.png"></a></td>
</tr>
<tr>
<td><code>observatory-europa</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-europa.png"><img alt="observatory-europa" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-europa.png"></a></td>
<td><code>observatory-europa-computed</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-europa-computed.png"><img alt="observatory-europa-computed" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-europa-computed.png"></a></td>
</tr>
<tr>
<td><code>observatory-ganymede</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-ganymede.png"><img alt="observatory-ganymede" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-ganymede.png"></a></td>
<td><code>observatory-ganymede-computed</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-ganymede-computed.png"><img alt="observatory-ganymede-computed" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-ganymede-computed.png"></a></td>
</tr>
<tr>
<td><code>observatory-callisto</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-callisto.png"><img alt="observatory-callisto" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-callisto.png"></a></td>
<td><code>observatory-callisto-computed</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-callisto-computed.png"><img alt="observatory-callisto-computed" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-callisto-computed.png"></a></td>
</tr>
<tr>
<td><code>observatory-saturn</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-saturn.png"><img alt="observatory-saturn" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-saturn.png"></a></td>
<td><code>observatory-saturn-computed</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-saturn-computed.png"><img alt="observatory-saturn-computed" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-saturn-computed.png"></a></td>
</tr>
<tr>
<td><code>observatory-titan</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-titan.png"><img alt="observatory-titan" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-titan.png"></a></td>
<td><code>observatory-titan-computed</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-titan-computed.png"><img alt="observatory-titan-computed" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-titan-computed.png"></a></td>
</tr>
<tr>
<td><code>observatory-enceladus</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-enceladus.png"><img alt="observatory-enceladus" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-enceladus.png"></a></td>
<td><code>observatory-enceladus-computed</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-enceladus-computed.png"><img alt="observatory-enceladus-computed" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-enceladus-computed.png"></a></td>
</tr>
<tr>
<td><code>observatory-iapetus</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-iapetus.png"><img alt="observatory-iapetus" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-iapetus.png"></a></td>
<td><code>observatory-iapetus-computed</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-iapetus-computed.png"><img alt="observatory-iapetus-computed" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-iapetus-computed.png"></a></td>
</tr>
<tr>
<td><code>observatory-uranus</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-uranus.png"><img alt="observatory-uranus" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-uranus.png"></a></td>
<td><code>observatory-uranus-computed</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-uranus-computed.png"><img alt="observatory-uranus-computed" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-uranus-computed.png"></a></td>
</tr>
<tr>
<td><code>observatory-neptune</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-neptune.png"><img alt="observatory-neptune" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-neptune.png"></a></td>
<td><code>observatory-neptune-computed</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-neptune-computed.png"><img alt="observatory-neptune-computed" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-neptune-computed.png"></a></td>
</tr>
<tr>
<td><code>observatory-triton</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-triton.png"><img alt="observatory-triton" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-triton.png"></a></td>
<td><code>observatory-triton-computed</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-triton-computed.png"><img alt="observatory-triton-computed" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-triton-computed.png"></a></td>
</tr>
<tr>
<td><code>observatory-pluto</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-pluto.png"><img alt="observatory-pluto" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-pluto.png"></a></td>
<td><code>observatory-pluto-computed</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-pluto-computed.png"><img alt="observatory-pluto-computed" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-pluto-computed.png"></a></td>
</tr>
<tr>
<td><code>observatory-charon</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-charon.png"><img alt="observatory-charon" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-charon.png"></a></td>
<td><code>observatory-charon-computed</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-charon-computed.png"><img alt="observatory-charon-computed" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-charon-computed.png"></a></td>
</tr>
<tr>
<td><code>observatory-ceres</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-ceres.png"><img alt="observatory-ceres" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-ceres.png"></a></td>
<td><code>observatory-ceres-computed</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-ceres-computed.png"><img alt="observatory-ceres-computed" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-ceres-computed.png"></a></td>
</tr>
<tr>
<td><code>observatory-rings</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-rings.png"><img alt="observatory-rings" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-rings.png"></a></td>
<td><code>observatory-arrokoth</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-arrokoth.png"><img alt="observatory-arrokoth" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-arrokoth.png"></a></td>
</tr>
</table>
</details>

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

<details>
<summary>Gallery</summary>
<table>
<tr>
<td><code>observatory-albireo</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-albireo.png"><img alt="observatory-albireo" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-albireo.png"></a></td>
<td><code>observatory-alphacentauri</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-alphacentauri.png"><img alt="observatory-alphacentauri" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-alphacentauri.png"></a></td>
</tr>
<tr>
<td><code>observatory-betelgeuse</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-betelgeuse.png"><img alt="observatory-betelgeuse" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-betelgeuse.png"></a></td>
<td><code>observatory-betelgeuse-computed</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-betelgeuse-computed.png"><img alt="observatory-betelgeuse-computed" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-betelgeuse-computed.png"></a></td>
</tr>
<tr>
<td><code>observatory-nervia</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-nervia.png"><img alt="observatory-nervia" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-nervia.png"></a></td>
<td><code>observatory-nervia-computed</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-nervia-computed.png"><img alt="observatory-nervia-computed" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-nervia-computed.png"></a></td>
</tr>
<tr>
<td><code>observatory-carbon</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-carbon.png"><img alt="observatory-carbon" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-carbon.png"></a></td>
<td><code>observatory-cepheid</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-cepheid.png"><img alt="observatory-cepheid" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-cepheid.png"></a></td>
</tr>
<tr>
<td><code>observatory-etacarinae</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-etacarinae.png"><img alt="observatory-etacarinae" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-etacarinae.png"></a></td>
<td><code>observatory-etacarinae-computed</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-etacarinae-computed.png"><img alt="observatory-etacarinae-computed" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-etacarinae-computed.png"></a></td>
</tr>
<tr>
<td><code>observatory-magnitude</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-magnitude.png"><img alt="observatory-magnitude" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-magnitude.png"></a></td>
<td><code>observatory-sirius</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-sirius.png"><img alt="observatory-sirius" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-sirius.png"></a></td>
</tr>
<tr>
<td><code>observatory-v838monocerotis</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-v838monocerotis.png"><img alt="observatory-v838monocerotis" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-v838monocerotis.png"></a></td>
<td><code>observatory-v838monocerotis-computed</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-v838monocerotis-computed.png"><img alt="observatory-v838monocerotis-computed" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-v838monocerotis-computed.png"></a></td>
</tr>
<tr>
<td><code>observatory-boyajian</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-boyajian.png"><img alt="observatory-boyajian" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-boyajian.png"></a></td>
<td><code>observatory-przybylski</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-przybylski.png"><img alt="observatory-przybylski" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-przybylski.png"></a></td>
</tr>
<tr>
<td><code>observatory-ss433</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-ss433.png"><img alt="observatory-ss433" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-ss433.png"></a></td>
<td><code>observatory-browndwarf</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-browndwarf.png"><img alt="observatory-browndwarf" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-browndwarf.png"></a></td>
</tr>
<tr>
<td><code>observatory-browndwarf-computed</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-browndwarf-computed.png"><img alt="observatory-browndwarf-computed" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-browndwarf-computed.png"></a></td>
<td><code>observatory-wolfrayet</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-wolfrayet.png"><img alt="observatory-wolfrayet" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-wolfrayet.png"></a></td>
</tr>
<tr>
<td><code>observatory-wolfrayet-computed</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-wolfrayet-computed.png"><img alt="observatory-wolfrayet-computed" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-wolfrayet-computed.png"></a></td>
<td><code>observatory-crux</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-crux.png"><img alt="observatory-crux" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-crux.png"></a></td>
</tr>
<tr>
<td><code>observatory-arcturus</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-arcturus.png"><img alt="observatory-arcturus" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-arcturus.png"></a></td>
<td><code>observatory-vega</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-vega.png"><img alt="observatory-vega" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-vega.png"></a></td>
</tr>
<tr>
<td><code>observatory-rigel</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-rigel.png"><img alt="observatory-rigel" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-rigel.png"></a></td>
<td><code>observatory-deneb</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-deneb.png"><img alt="observatory-deneb" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-deneb.png"></a></td>
</tr>
<tr>
<td><code>observatory-mira</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-mira.png"><img alt="observatory-mira" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-mira.png"></a></td>
<td><code>observatory-bluedwarf</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-bluedwarf.png"><img alt="observatory-bluedwarf" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-bluedwarf.png"></a></td>
</tr>
<tr>
<td><code>observatory-cooling</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-cooling.png"><img alt="observatory-cooling" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-cooling.png"></a></td>
<td><code>observatory-blackdwarf</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-blackdwarf.png"><img alt="observatory-blackdwarf" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-blackdwarf.png"></a></td>
</tr>
<tr>
<td><code>observatory-straggler</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-straggler.png"><img alt="observatory-straggler" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-straggler.png"></a></td>
</tr>
</table>
</details>

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

<details>
<summary>Gallery</summary>
<table>
<tr>
<td><code>observatory-trappist</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-trappist.png"><img alt="observatory-trappist" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-trappist.png"></a></td>
<td><code>observatory-trappist-computed</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-trappist-computed.png"><img alt="observatory-trappist-computed" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-trappist-computed.png"></a></td>
</tr>
<tr>
<td><code>observatory-tres2</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-tres2.png"><img alt="observatory-tres2" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-tres2.png"></a></td>
<td><code>observatory-hd189733</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-hd189733.png"><img alt="observatory-hd189733" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-hd189733.png"></a></td>
</tr>
<tr>
<td><code>observatory-eburonia</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-eburonia.png"><img alt="observatory-eburonia" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-eburonia.png"></a></td>
<td><code>observatory-kepler56c</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-kepler56c.png"><img alt="observatory-kepler56c" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-kepler56c.png"></a></td>
</tr>
<tr>
<td><code>observatory-kepler292b</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-kepler292b.png"><img alt="observatory-kepler292b" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-kepler292b.png"></a></td>
<td><code>observatory-kepler20b</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-kepler20b.png"><img alt="observatory-kepler20b" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-kepler20b.png"></a></td>
</tr>
<tr>
<td><code>observatory-hd40307f</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-hd40307f.png"><img alt="observatory-hd40307f" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-hd40307f.png"></a></td>
<td><code>observatory-kepler90h</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-kepler90h.png"><img alt="observatory-kepler90h" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-kepler90h.png"></a></td>
</tr>
<tr>
<td><code>observatory-mintome</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-mintome.png"><img alt="observatory-mintome" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-mintome.png"></a></td>
<td><code>observatory-hd157172b</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-hd157172b.png"><img alt="observatory-hd157172b" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-hd157172b.png"></a></td>
</tr>
<tr>
<td><code>observatory-gliese3323b</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-gliese3323b.png"><img alt="observatory-gliese3323b" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-gliese3323b.png"></a></td>
<td><code>observatory-kepler1275b</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-kepler1275b.png"><img alt="observatory-kepler1275b" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-kepler1275b.png"></a></td>
</tr>
<tr>
<td><code>observatory-kepler1328b</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-kepler1328b.png"><img alt="observatory-kepler1328b" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-kepler1328b.png"></a></td>
<td><code>observatory-kepler438b</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-kepler438b.png"><img alt="observatory-kepler438b" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-kepler438b.png"></a></td>
</tr>
<tr>
<td><code>observatory-kepler367b</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-kepler367b.png"><img alt="observatory-kepler367b" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-kepler367b.png"></a></td>
<td><code>observatory-sweeps10</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-sweeps10.png"><img alt="observatory-sweeps10" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-sweeps10.png"></a></td>
</tr>
<tr>
<td><code>observatory-enaiposha</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-enaiposha.png"><img alt="observatory-enaiposha" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-enaiposha.png"></a></td>
<td><code>observatory-dimidium</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-dimidium.png"><img alt="observatory-dimidium" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-dimidium.png"></a></td>
</tr>
<tr>
<td><code>observatory-tatooine</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-tatooine.png"><img alt="observatory-tatooine" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-tatooine.png"></a></td>
<td><code>observatory-osiris</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-osiris.png"><img alt="observatory-osiris" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-osiris.png"></a></td>
</tr>
<tr>
<td><code>observatory-methuselah</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-methuselah.png"><img alt="observatory-methuselah" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-methuselah.png"></a></td>
</tr>
</table>
</details>

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

<details>
<summary>Gallery</summary>
<table>
<tr>
<td><code>observatory-catseye</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-catseye.png"><img alt="observatory-catseye" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-catseye.png"></a></td>
<td><code>observatory-catseye-computed</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-catseye-computed.png"><img alt="observatory-catseye-computed" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-catseye-computed.png"></a></td>
</tr>
<tr>
<td><code>observatory-crab</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-crab.png"><img alt="observatory-crab" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-crab.png"></a></td>
<td><code>observatory-crab-computed</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-crab-computed.png"><img alt="observatory-crab-computed" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-crab-computed.png"></a></td>
</tr>
<tr>
<td><code>observatory-helix</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-helix.png"><img alt="observatory-helix" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-helix.png"></a></td>
<td><code>observatory-helix-computed</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-helix-computed.png"><img alt="observatory-helix-computed" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-helix-computed.png"></a></td>
</tr>
<tr>
<td><code>observatory-trifid</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-trifid.png"><img alt="observatory-trifid" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-trifid.png"></a></td>
<td><code>observatory-trifid-computed</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-trifid-computed.png"><img alt="observatory-trifid-computed" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-trifid-computed.png"></a></td>
</tr>
<tr>
<td><code>observatory-boomerang</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-boomerang.png"><img alt="observatory-boomerang" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-boomerang.png"></a></td>
<td><code>observatory-boomerang-computed</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-boomerang-computed.png"><img alt="observatory-boomerang-computed" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-boomerang-computed.png"></a></td>
</tr>
<tr>
<td><code>observatory-orion</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-orion.png"><img alt="observatory-orion" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-orion.png"></a></td>
<td><code>observatory-orion-computed</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-orion-computed.png"><img alt="observatory-orion-computed" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-orion-computed.png"></a></td>
</tr>
</table>
</details>

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

<details>
<summary>Gallery</summary>
<table>
<tr>
<td><code>observatory-bimodal</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-bimodal.png"><img alt="observatory-bimodal" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-bimodal.png"></a></td>
<td><code>observatory-hoag</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-hoag.png"><img alt="observatory-hoag" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-hoag.png"></a></td>
</tr>
<tr>
<td><code>observatory-hoag-computed</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-hoag-computed.png"><img alt="observatory-hoag-computed" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-hoag-computed.png"></a></td>
<td><code>observatory-voorwerp</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-voorwerp.png"><img alt="observatory-voorwerp" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-voorwerp.png"></a></td>
</tr>
<tr>
<td><code>observatory-voorwerp-computed</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-voorwerp-computed.png"><img alt="observatory-voorwerp-computed" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-voorwerp-computed.png"></a></td>
<td><code>observatory-galaxy</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-galaxy.png"><img alt="observatory-galaxy" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-galaxy.png"></a></td>
</tr>
<tr>
<td><code>observatory-milkyway</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-milkyway.png"><img alt="observatory-milkyway" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-milkyway.png"></a></td>
<td><code>observatory-milkyway-computed</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-milkyway-computed.png"><img alt="observatory-milkyway-computed" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-milkyway-computed.png"></a></td>
</tr>
<tr>
<td><code>observatory-milkywayparanal</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-milkywayparanal.png"><img alt="observatory-milkywayparanal" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-milkywayparanal.png"></a></td>
<td><code>observatory-deepfield</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-deepfield.png"><img alt="observatory-deepfield" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-deepfield.png"></a></td>
</tr>
<tr>
<td><code>observatory-deepfield-computed</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-deepfield-computed.png"><img alt="observatory-deepfield-computed" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-deepfield-computed.png"></a></td>
<td><code>observatory-deepfieldwebb</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-deepfieldwebb.png"><img alt="observatory-deepfieldwebb" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-deepfieldwebb.png"></a></td>
</tr>
</table>
</details>

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

<details>
<summary>Gallery</summary>
<table>
<tr>
<td><code>observatory-eventhorizon</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-eventhorizon.png"><img alt="observatory-eventhorizon" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-eventhorizon.png"></a></td>
<td><code>observatory-eventhorizon-computed</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-eventhorizon-computed.png"><img alt="observatory-eventhorizon-computed" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-eventhorizon-computed.png"></a></td>
</tr>
<tr>
<td><code>observatory-jet</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-jet.png"><img alt="observatory-jet" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-jet.png"></a></td>
<td><code>observatory-shadow</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-shadow.png"><img alt="observatory-shadow" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-shadow.png"></a></td>
</tr>
<tr>
<td><code>observatory-cosmicbackground</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-cosmicbackground.png"><img alt="observatory-cosmicbackground" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-cosmicbackground.png"></a></td>
<td><code>observatory-cosmicbackground-computed</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-cosmicbackground-computed.png"><img alt="observatory-cosmicbackground-computed" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-cosmicbackground-computed.png"></a></td>
</tr>
<tr>
<td><code>observatory-cosmicbackgroundlegacy</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-cosmicbackgroundlegacy.png"><img alt="observatory-cosmicbackgroundlegacy" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-cosmicbackgroundlegacy.png"></a></td>
<td><code>observatory-kilonova</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-kilonova.png"><img alt="observatory-kilonova" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-kilonova.png"></a></td>
</tr>
<tr>
<td><code>observatory-kilonova-computed</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-kilonova-computed.png"><img alt="observatory-kilonova-computed" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-kilonova-computed.png"></a></td>
<td><code>observatory-supernova1987a</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-supernova1987a.png"><img alt="observatory-supernova1987a" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-supernova1987a.png"></a></td>
</tr>
<tr>
<td><code>observatory-cassiopeia</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-cassiopeia.png"><img alt="observatory-cassiopeia" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-cassiopeia.png"></a></td>
<td><code>observatory-cassiopeiawebb</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-cassiopeiawebb.png"><img alt="observatory-cassiopeiawebb" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-cassiopeiawebb.png"></a></td>
</tr>
<tr>
<td><code>observatory-tycho</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-tycho.png"><img alt="observatory-tycho" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-tycho.png"></a></td>
<td><code>observatory-nova</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-nova.png"><img alt="observatory-nova" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-nova.png"></a></td>
</tr>
<tr>
<td><code>observatory-brightestofalltime</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-brightestofalltime.png"><img alt="observatory-brightestofalltime" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-brightestofalltime.png"></a></td>
</tr>
</table>
</details>

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

<details>
<summary>Gallery</summary>
<table>
<tr>
<td><code>observatory-balmer</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-balmer.png"><img alt="observatory-balmer" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-balmer.png"></a></td>
<td><code>observatory-doppler</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-doppler.png"><img alt="observatory-doppler" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-doppler.png"></a></td>
</tr>
<tr>
<td><code>observatory-pulsar</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-pulsar.png"><img alt="observatory-pulsar" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-pulsar.png"></a></td>
<td><code>observatory-fraunhofer</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-fraunhofer.png"><img alt="observatory-fraunhofer" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-fraunhofer.png"></a></td>
</tr>
<tr>
<td><code>observatory-meteor</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-meteor.png"><img alt="observatory-meteor" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-meteor.png"></a></td>
<td><code>observatory-hertzsprungrussell</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-hertzsprungrussell.png"><img alt="observatory-hertzsprungrussell" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-hertzsprungrussell.png"></a></td>
</tr>
<tr>
<td><code>observatory-extinction</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-extinction.png"><img alt="observatory-extinction" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-extinction.png"></a></td>
<td><code>observatory-kuiper</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-kuiper.png"><img alt="observatory-kuiper" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-kuiper.png"></a></td>
</tr>
<tr>
<td><code>observatory-plate</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-plate.png"><img alt="observatory-plate" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-plate.png"></a></td>
</tr>
</table>
</details>

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

<details>
<summary>Gallery</summary>
<table>
<tr>
<td><code>observatory-albedo</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-albedo.png"><img alt="observatory-albedo" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-albedo.png"></a></td>
<td><code>observatory-dichroic</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-dichroic.png"><img alt="observatory-dichroic" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-dichroic.png"></a></td>
</tr>
<tr>
<td><code>observatory-horizon</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-horizon.png"><img alt="observatory-horizon" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-horizon.png"></a></td>
<td><code>observatory-lagrange</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-lagrange.png"><img alt="observatory-lagrange" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-lagrange.png"></a></td>
</tr>
<tr>
<td><code>observatory-phi</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-phi.png"><img alt="observatory-phi" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-phi.png"></a></td>
<td><code>observatory-syzygy</code><br><a href="https://moyiz.github.io/observatory.nvim/assets/observatory-syzygy.png"><img alt="observatory-syzygy" width="340" src="https://moyiz.github.io/observatory.nvim/assets/observatory-syzygy.png"></a></td>
</tr>
</table>
</details>

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

# Codex Pet — Rin Miko

English | [日本語](README.md)

Rin Miko (未来巫女・りん) is an unofficial custom pet for Codex Desktop: a gentle chibi Rin in white-and-vermilion futuristic shrine-maiden attire, with a cherry-blossom hair ornament and blue crystals.

> [!IMPORTANT]
> **Only personal, non-commercial local use is permitted. Redistribution is prohibited.** Except for GitHub’s standard viewing/fork functionality and links to this official repository, reposting, re-uploading, mirroring, bundling, commercial use, asset extraction, visual modifications or derivative uses, and AI-training use are prohibited. See the [Personal-Use License](LICENSE.md) and [usage guide](docs/LICENSE_GUIDE.md).

![Rin Miko in idle, waving, jumping and working poses](assets/hero.png)

## Highlights

- Codex Pet v2 package (`spriteVersionNumber: 2`)
- Nine standard animation states
- Sixteen continuous look directions
- Transparent WebP sprite atlas
- `192 × 208 px` cells in a `1536 × 2288 px` atlas
- Validated structure, transparency, and direction semantics

## Install

Run the following on macOS or Linux:

```sh
git clone https://github.com/momuandteasteam/CodexPets-Rin-Miko.git
cd CodexPets-Rin-Miko
./scripts/install.sh
```

On Windows, use `.\scripts\install.ps1`. Restart Codex Desktop, then select “未来巫女・りん” from the pet selector. See the [installation guide](docs/INSTALLATION.md) for update, verification, and removal instructions.

> [!NOTE]
> This community package targets Codex Desktop's local pet-package format, which may change with app updates.

## Animation

![Animation preview](assets/preview.gif)

## Validation

The final atlas has been checked for:

- Exact `1536 × 2288 px`, 8-column × 11-row geometry
- v2 manifest compatibility
- Required and intentionally unused cells
- Transparency and chroma residue
- Sixteen-direction meaning and continuity
- Frame-level structure across every standard animation

See the [QA report](docs/QA.md) and [animation specification](docs/ANIMATION_SPEC.md) for details.

![Rin Miko's sixteen look directions](assets/look-directions.png)

## License

This repository is not open source. Only personal, non-commercial local use is permitted, and redistribution is prohibited. See [LICENSE.md](LICENSE.md) for the complete terms, including the limited treatment of GitHub forks and contributions, and the [usage guide](docs/LICENSE_GUIDE.md) for examples.

Codex and OpenAI are trademarks of OpenAI. This is an unofficial community project and is not endorsed by or affiliated with OpenAI.

## Documentation

- [Installation](docs/INSTALLATION.md)
- [Animation specification](docs/ANIMATION_SPEC.md)
- [QA report](docs/QA.md)
- [License usage guide](docs/LICENSE_GUIDE.md)
- [Credits](CREDITS.md)
- [Contributing](CONTRIBUTING.md)
- [Security](SECURITY.md)
- [Changelog](CHANGELOG.md)

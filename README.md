# FountainAI–Teatro Template

This repository is a template for building **SwiftPM-based semantic rendering units** compatible with the FountainAI system and the Teatro View Engine.

- 🎭 Uses `.fountain` for structured scenes
- 🎛 Uses `.ump` (MIDI 2.0) for universal playback and gestural timing
- 🖼 Outputs `.svg`, `.md`, `.ump`
- ✅ Includes `agent.md` as machine-readable orchestration contract
- 📦 Depends on [`codex-deployer`](https://github.com/Fountain-Coach/codex-deployer) and [`Teatro`](https://github.com/Fountain-Coach/Teatro)

## Usage

1. Click **Use this template**
2. Create a new repo (e.g. `macbeth-renderer`)
3. Rename the target in `Package.swift` and folders
4. Run (SwiftPM will fetch the dependencies automatically):

```bash
swift build
swift run
swift test
```

This repo is the official starting point for all semantic renderers in the FountainAI ecosystem.

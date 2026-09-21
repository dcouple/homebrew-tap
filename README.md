![Grain Tap — a pixel-art software packaging depot](docs/assets/grain-tap-banner.png)

# Grain Homebrew tap

Official Grain distribution maintained by the Grain team. Version 0.2.20 is available for Apple Silicon Macs running macOS 12 or later.

```sh
brew install --cask greenfield-inc/tap/grain
grain setup
```

Grain includes its CLI and MCP server. Setup signs you in, configures selected agents, and opens Grain.

Grain updates itself. To explicitly upgrade using Homebrew, run `brew upgrade --cask --greedy grain`.

Uninstall with `brew uninstall --cask grain`. Your account, workspaces and agent configuration are retained.

Release maintainers: regenerate Casks/grain.rb from the Grain source repository using scripts/generate-homebrew-cask.mjs.

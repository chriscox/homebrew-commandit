# homebrew-commandit

Homebrew tap for [CommandIt](https://commandit.ai) — the keyboard-first command
palette for macOS with built-in AI and an MCP server.

## Install

```sh
brew install --cask chriscox/commandit/commandit
```

The slash path works without a separate `brew tap` step. If you'd rather tap
explicitly:

```sh
brew tap chriscox/commandit
brew install --cask commandit
```

## Updates

CommandIt updates itself via [Sparkle](https://sparkle-project.org). Once
installed, you'll get an in-app notification whenever a new release ships —
there's no need to run `brew upgrade`. The cask is marked `auto_updates true`
so Homebrew knows to leave update management to the app.

If you want Homebrew to pull in the newest metadata (for example after a
fresh machine install), `brew update` still refreshes the tap.

## System requirements

- macOS 15 (Sequoia) or newer
- Apple Silicon recommended (required for on-device AI)

See [commandit.ai](https://commandit.ai) for the full feature list, pricing,
and documentation.

## What's in this tap

This repository only contains the Cask formula for CommandIt. The app itself
lives at [commandit.ai](https://commandit.ai); release DMGs are published to
[`chriscox/commandit-releases`](https://github.com/chriscox/commandit-releases).

The `Casks/commandit.rb` formula is generated from `Casks/commandit.rb.template`
by the CommandIt release workflow on every stable tag — pull requests to edit
it by hand will be overwritten. If something needs changing, open an issue or
a PR against the template instead.

## Issues

Found a bug with CommandIt itself? File it in the main repository (once
public) or email [chris@commandit.ai](mailto:chris@commandit.ai).

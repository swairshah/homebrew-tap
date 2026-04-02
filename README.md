# Homebrew Tap

Custom Homebrew formulas and casks.

## Installation

```bash
brew tap swairshah/tap
```

## Formulas

### Agent (contextagent)

Context-aware coding agent with local observability dashboard.

```bash
brew install agent
```

Requires access to the [contextagent](https://github.com/swairshah/contextagent) repo (private).

```bash
# Get project context (cached, auto-updates)
agent --context -C /path/to/project

# One-shot prompt
agent -p "Summarize this project" -m anthropic/claude-haiku-4-5

# Launch dashboard
agent -d
```

## Casks

### Hearsay
[![Downloads](https://img.shields.io/github/downloads/swairshah/hearsay/total?label=downloads&color=blue)](https://github.com/swairshah/hearsay/releases)

Local speech-to-text transcription using Qwen3-ASR.

```bash
brew install --cask hearsay
```

### PiTalk
[![Downloads](https://img.shields.io/github/downloads/swairshah/PiTalk/total?label=downloads&color=blue)](https://github.com/swairshah/PiTalk/releases)

Voice interface for pi coding agent with TTS feedback.

```bash
brew install --cask pitalk
```

### Loqui
[![Downloads](https://img.shields.io/github/downloads/swairshah/Loqui/total?label=downloads&color=blue)](https://github.com/swairshah/Loqui/releases)

Local text-to-speech server for macOS.

```bash
brew install --cask loqui
```

This installs:
- **Loqui.app** - Menubar app that runs the TTS server
- **ptts** - CLI tool for text-to-speech from the terminal

#### Usage

```bash
# Speak text
ptts "Hello, world!"

# Use a different voice
ptts --voice alba "Good morning!"

# Pipe text
echo "Hello" | ptts

# List voices
ptts --list-voices
```

### Monitome
[![Downloads](https://img.shields.io/github/downloads/swairshah/Monitome/total?label=downloads&color=blue)](https://github.com/swairshah/Monitome/releases)

Screenshot activity tracker with AI-powered indexing and search.

```bash
brew install --cask monitome
```

### Bezel
[![Downloads](https://img.shields.io/github/downloads/swairshah/Bezel/total?label=downloads&color=blue)](https://github.com/swairshah/Bezel/releases)

Experimental notch app for Mac inspired by Alcove and Oak.

```bash
brew install --cask bezel
```

### TraceDeck
[![Downloads](https://img.shields.io/github/downloads/swairshah/TraceDeck/total?label=downloads&color=blue)](https://github.com/swairshah/TraceDeck/releases)

Personal context capture for macOS with local AI indexing and search.

```bash
brew install --cask tracedeck
```

### Malleable
[![Downloads](https://img.shields.io/github/downloads/swairshah/malleable/total?label=downloads&color=blue)](https://github.com/swairshah/malleable/releases)

A canvas for AI-generated UI.

```bash
brew install --cask malleable
```

## Requirements

- macOS 13.0+ (Ventura or later)

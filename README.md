# Homebrew Tap

Custom Homebrew formulas and casks.

## Installation

```bash
brew tap swairshah/tap
```

## Casks

### Loqui

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

#### Requirements

- macOS 13.0+
- ffmpeg (installed automatically as dependency)

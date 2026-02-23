cask "hearsay" do
  version "1.0.10"
  sha256 "93fa1bcd9ec93fe4ae063956e0b2660c9a3a34603d35dbac0ecd13a39333e11d"

  url "https://github.com/swairshah/hearsay/releases/download/v#{version}/Hearsay-#{version}.dmg"
  name "Hearsay"
  desc "Local speech-to-text transcription using Qwen3-ASR"
  homepage "https://github.com/swairshah/hearsay"

  depends_on macos: ">= :ventura"

  app "Hearsay.app"

  postflight do
    system_command "/usr/bin/open", args: [staged_path.join("Hearsay.app")]
  end

  zap trash: [
    "~/Library/Application Support/Hearsay",
    "~/Library/Preferences/com.swair.hearsay.plist",
    "~/Library/Caches/com.swair.hearsay",
  ]

  caveats <<~EOS
    Hearsay requires Microphone and Accessibility permissions.
    
    On first launch, you'll be prompted to download a speech recognition model.
    Models are stored in ~/Library/Application Support/Hearsay/Models/

    Usage:
      • Hold Right Option (⌥) to record, release to transcribe
      • Toggle mode: Right Option + Space to start, Space/Escape to stop
  EOS
end

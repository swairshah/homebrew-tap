cask "hearsay" do
  version "1.0.19"
  sha256 "b0f6ec07bf30e881e92479179119b5f2da5d933c766854d6c8e0056a60b6c18a"

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

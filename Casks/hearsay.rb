cask "hearsay" do
  version "1.0.24"
  sha256 "940ac7733eab8f445dde7cd5105096ccf1ced09a327b9c59b1462be2e1da408d"

  url "https://github.com/swairshah/hearsay/releases/download/v#{version}/Hearsay-#{version}.dmg"
  name "Hearsay"
  desc "Local speech-to-text transcription using on-device speech models"
  homepage "https://github.com/swairshah/hearsay"

  depends_on macos: :ventura

  app "Hearsay.app"
  binary "#{appdir}/Hearsay.app/Contents/Resources/hearsay", target: "hearsay"

  postflight do
    cli = "#{appdir}/Hearsay.app/Contents/Resources/hearsay"
    target = HOMEBREW_PREFIX/"bin/hearsay"

    target.delete if target.symlink? && target.readlink.to_s != cli
    system_command "/bin/ln", args: ["-s", cli, target] unless target.exist?

    system_command "/usr/bin/open", args: [staged_path.join("Hearsay.app")]
  end

  zap trash: [
    "~/Library/Application Support/Hearsay",
    "~/Library/Caches/com.swair.hearsay",
    "~/Library/Preferences/com.swair.hearsay.plist",
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

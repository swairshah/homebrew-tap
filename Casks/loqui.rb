cask "loqui" do
  version "1.5.0"
  sha256 "965c8f7c87ee86bdb32b9571c25b8e83a1a5f830d750fe03337924c019961a32"

  url "https://github.com/swairshah/Loqui/releases/download/v#{version}/Loqui-#{version}.zip"
  name "Loqui"
  desc "Local text-to-speech server for macOS"
  homepage "https://github.com/swairshah/Loqui"

  depends_on formula: "ffmpeg"

  app "Loqui.app"

  postflight do
    # Start the app after installation
    system_command "open", args: ["#{appdir}/Loqui.app"]
  end

  zap trash: [
    "~/Library/Application Support/Loqui",
    "~/Library/Preferences/com.loqui.app.plist",
  ]
end

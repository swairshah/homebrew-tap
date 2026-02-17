cask "loqui" do
  version "1.0.1"
  sha256 "736040eed181d8e01557e7cf335b6b1498dbe0131ac0b404f68119b28bf5674c"

  url "https://github.com/swairshah/Loqui/releases/download/v#{version}/Loqui-#{version}.zip"
  name "Loqui"
  desc "Local text-to-speech server for macOS"
  homepage "https://github.com/swairshah/Loqui"

  depends_on formula: "ffmpeg"

  app "Loqui.app"
  binary "#{appdir}/Loqui.app/Contents/MacOS/ptts"

  postflight do
    # Start the app after installation
    system_command "open", args: ["#{appdir}/Loqui.app"]
  end

  zap trash: [
    "~/Library/Application Support/Loqui",
    "~/Library/Preferences/com.loqui.app.plist",
  ]
end

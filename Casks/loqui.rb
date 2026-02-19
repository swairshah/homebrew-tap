cask "loqui" do
  version "1.3.0"
  sha256 "2fb7aa848194eb502b8cc828ceabc9d78bd15cd8c665e0d21691f9a40990fafb"

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

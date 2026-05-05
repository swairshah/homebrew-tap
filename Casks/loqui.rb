cask "loqui" do
  version "1.5.1"
  sha256 "1f3c92dfe009c5a43181d1ae10f7c09cae70430a29121aa43af98db60ff6db73"

  url "https://github.com/swairshah/Loqui/releases/download/v#{version}/Loqui-#{version}.zip"
  name "Loqui"
  desc "Local text-to-speech server for macOS"
  homepage "https://github.com/swairshah/Loqui"

  depends_on formula: "ffmpeg"

  app "Loqui.app"
  binary "#{appdir}/Loqui.app/Contents/MacOS/loqui-cli", target: "loqui"

  postflight do
    # Start the app after installation
    system_command "open", args: ["#{appdir}/Loqui.app"]
  end

  zap trash: [
    "~/Library/Application Support/Loqui",
    "~/Library/Preferences/com.loqui.app.plist",
  ]
end

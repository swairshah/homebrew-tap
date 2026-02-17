cask "loqui" do
  version "1.0.2"
  sha256 "2356fbe33089b33d4d974751fb96b78c4191047dee547e6b735ddfa872abeda6"

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

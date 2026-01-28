cask "monitome" do
  version "0.1.0"
  sha256 "f9f3c27583cd3810b2b50faafb42855b2567c6db7e66a0ba6aa8ec0f7573d1ce"

  url "https://github.com/swairshah/Monitome/releases/download/v#{version}/Monitome-#{version}.dmg"
  name "Monitome"
  desc "Screenshot activity tracker with AI-powered indexing and search"
  homepage "https://github.com/swairshah/Monitome"

  depends_on macos: ">= :ventura"

  app "Monitome.app"

  postflight do
    # Ensure the activity-agent binary is executable
    set_permissions "#{appdir}/Monitome.app/Contents/MacOS/activity-agent", "755"
  end

  zap trash: [
    "~/Library/Application Support/Monitome",
    "~/Library/Preferences/swair.Monitome.plist",
    "~/Library/Caches/swair.Monitome",
  ]
end

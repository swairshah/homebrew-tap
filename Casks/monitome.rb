cask "monitome" do
  version "0.1.2"
  sha256 "56c0cc0fc2e0aaadc4b7fc34beefe41d2ab3d65cbcc88fa7a3f9d2fc1b27610f"

  url "https://github.com/swairshah/Monitome/releases/download/v#{version}/Monitome-#{version}.dmg"
  name "Monitome"
  desc "Screenshot activity tracker with AI-powered indexing and search"
  homepage "https://github.com/swairshah/Monitome"

  depends_on macos: ">= :ventura"

  app "Monitome.app"

  zap trash: [
    "~/Library/Application Support/Monitome",
    "~/Library/Preferences/swair.Monitome.plist",
    "~/Library/Caches/swair.Monitome",
  ]
end

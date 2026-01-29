cask "monitome" do
  version "0.2.1"
  sha256 "15dde0e68d4c6504a83acb08764c10cc047176a1476ced6c937033a4c51b37bd"

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

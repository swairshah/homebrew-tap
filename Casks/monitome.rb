cask "monitome" do
  version "0.2.6"
  sha256 "5abc3ebe14b723f56a0916131151151d23f4546f3f5dff9893b1b1e91d217494"

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

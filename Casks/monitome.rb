cask "monitome" do
  version "0.1.3"
  sha256 "450f57841321db7e489c416043c047761488a9beacd02ea270fa6d95944087d4"

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

cask "monitome" do
  version "1.0.0"
  sha256 "0e69d9bbf51d1199ff9789be03fd9c17b1e02358f4df9e7c9d9c37b679313f33"

  url "https://github.com/swairshah/Monitome/releases/download/v#{version}/Monitome-#{version}.dmg"
  name "Monitome"
  desc "Periodic screenshot capture and analysis for macOS"
  homepage "https://github.com/swairshah/Monitome"

  app "Monitome.app"
end

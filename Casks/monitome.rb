cask "monitome" do
  version "1.1.0"
  sha256 "70c6c2034515bf26b8e43fb6edca59f107515179afd9a0fdb97f5e5a511aadff"

  url "https://github.com/swairshah/Monitome/releases/download/v#{version}/Monitome.dmg"
  name "Monitome"
  desc "Periodic screenshot capture and analysis for macOS"
  homepage "https://github.com/swairshah/Monitome"

  app "Monitome.app"
end

cask "monitome" do
  version "1.0.1"
  sha256 "938fe6a3faf114f335b24a321be5137b22e775deed2f305974dcddc70ffc12b1"

  url "https://github.com/swairshah/Monitome/releases/download/v#{version}/Monitome-#{version}.zip"
  name "Monitome"
  desc "Periodic screenshot capture and analysis for macOS"
  homepage "https://github.com/swairshah/Monitome"

  app "Monitome.app"
end

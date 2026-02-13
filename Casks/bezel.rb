cask "bezel" do
  version "0.1.1"
  sha256 "e563dd0044b9730bc7a65bc54a3c3a5f94273bac2f031a4d3c2a666811a8f2a7"

  url "https://github.com/swairshah/Bezel/releases/download/v#{version}/Bezel-#{version}.zip"
  name "Bezel"
  desc "Experimental notch app for Mac inspired by Alcove and Oak"
  homepage "https://github.com/swairshah/Bezel"

  depends_on macos: ">= :monterey"

  app "Bezel.app"

  zap trash: [
    "~/Library/Preferences/swair.Bezel.plist",
    "~/Library/Caches/swair.Bezel",
  ]
end

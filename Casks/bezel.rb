cask "bezel" do
  version "0.1.0"
  sha256 "002561b3e1128f9a9fa94ff57e0c9b0c0999b051ca738fa7536fe3726812157e"

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

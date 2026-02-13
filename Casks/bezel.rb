cask "bezel" do
  version "0.1.2"
  sha256 "6c000d1b67119a90ac7fb49d55d7e4fa1f1cd29c1410da52661b8a589ee87bbb"

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

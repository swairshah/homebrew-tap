cask "bezel" do
  version "0.1.0"
  sha256 "72a695cdbf8e9d72dafbd30d1d1b835ad041068f34a99d4a46f86829a6c9814c"

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

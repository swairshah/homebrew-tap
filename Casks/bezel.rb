cask "bezel" do
  version "0.1.4"
  sha256 "a0edcd3ec7e3da60e2f6786acae39a82294d8ebec0edf4754b5fc6138c43ec2e"

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

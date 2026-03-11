cask "tracedeck" do
  version "1.0"
  sha256 "37bdeef5bc2246aaff1111cfb7c812fe79077bb877c8a3fedd28d719cdca1e34"

  url "https://github.com/swairshah/TraceDeck/releases/download/v#{version}/TraceDeck-#{version}.dmg"
  name "TraceDeck"
  desc "Personal context capture for macOS with local AI indexing and search"
  homepage "https://github.com/swairshah/TraceDeck"

  depends_on macos: ">= :ventura"

  app "TraceDeck.app"

  zap trash: [
    "~/Library/Application Support/TraceDeck",
    "~/Library/Preferences/swair.tracedeck.plist",
    "~/Library/Caches/swair.tracedeck",
  ]

  caveats <<~EOS
    TraceDeck requires Screen Recording, Accessibility, and Microphone permissions.
  EOS
end

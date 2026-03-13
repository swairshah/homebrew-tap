cask "tracedeck" do
  version "1.0.2"
  sha256 "5d3171b9ae4803e156b37ac3056d518c2679ddede690e682b83086e554923b97"

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

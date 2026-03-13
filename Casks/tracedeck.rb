cask "tracedeck" do
  version "1.0.1"
  sha256 "a120a31f58970b804ac95783ac7a360dfed3de2d55849c801886b4a7aae36ee0"

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

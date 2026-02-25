cask "pitalk" do
  version "1.1.1"
  sha256 "106877b5154ede730812156e98ae227d7137ec83eb87156fc97dfb136b908abe"

  url "https://github.com/swairshah/PiTalk/releases/download/v#{version}/PiTalk-#{version}.dmg"
  name "PiTalk"
  desc "Voice interface for pi coding agent with TTS feedback"
  homepage "https://github.com/swairshah/PiTalk"

  depends_on macos: ">= :ventura"

  app "PiTalk.app"

  zap trash: [
    "~/Library/Application Support/PiTalk",
    "~/Library/Preferences/com.pitalk.app.plist",
  ]

  caveats <<~EOS
    PiTalk requires Microphone and Accessibility permissions.
    
    On first launch, grant accessibility access when prompted.
  EOS
end

cask "pitalk" do
  version "1.3.3"
  sha256 "3a2c2f806f0676a23574b9fb75b4d2cfc32e62057faa428c65478f7502d0e655"

  url "https://github.com/swairshah/PiTalk/releases/download/v#{version}/PiTalk-#{version}.dmg"
  name "PiTalk"
  desc "Voice interface for pi coding agent with TTS feedback"
  homepage "https://github.com/swairshah/PiTalk"

  depends_on macos: :ventura

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

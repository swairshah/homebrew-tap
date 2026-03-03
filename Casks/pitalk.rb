cask "pitalk" do
  version "1.1.5"
  sha256 "d48e69d7005e5dd396731ebd781ae2eadd6e5cd5ee39b798ced883efc05ae666"

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

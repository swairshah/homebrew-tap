cask "pitalk" do
  version "1.1.3"
  sha256 "fd1b58b29c9b8b60edfe7c9e2db5f2a3883ef76f04806fe268515854a853409e"

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

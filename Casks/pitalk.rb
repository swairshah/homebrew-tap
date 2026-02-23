cask "pitalk" do
  version "1.0.7"
  sha256 "66725a1429fdf94377dc547c3aaa97a77d8f08c209c92ce4e191ed420a8b17cb"

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

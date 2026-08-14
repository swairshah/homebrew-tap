cask "notchcom" do
  version "0.4"
  sha256 "defab1005a7e62e5b245ac9e57e0d5d0872264c99a5aea473cfea9757b8c4da0"

  url "https://github.com/swairshah/notchcom/releases/download/v#{version}/NotchCom-#{version}.dmg"
  name "NotchCom"
  desc "Dynamic Island-style notch for Claude Code, Codex, and pi coding-agent sessions"
  homepage "https://github.com/swairshah/notchcom"

  depends_on macos: :sequoia

  app "NotchCom.app"

  postflight do
    system_command "/usr/bin/open", args: [staged_path.join("NotchCom.app")]
  end

  zap trash: [
    "~/Library/Preferences/com.swairshah.NotchCom.plist",
  ]

  caveats <<~EOS
    NotchCom requires Microphone and Speech Recognition permissions for
    push-to-talk dictation, and installs agent integrations on first launch:
      • Claude Code hooks (~/.claude)
      • Codex hooks (~/.codex/hooks.json — trust them once in Codex)
      • pi extension (~/.pi/agent/extensions/notchcom.ts)

    Restart running agent sessions after install so they pick up the hooks.
  EOS
end

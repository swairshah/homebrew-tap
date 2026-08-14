cask "notchcom" do
  version "0.1"
  sha256 "2b7163d87408cedf73250f5590998deff5c6ee2e2b1480a933868e1c9c3a94fc"

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

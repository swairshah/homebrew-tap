cask "notchcom" do
  version "0.5"
  sha256 "73a711e9859e327f7bc0096a7779d325d1da1c73125dbdbcfa87f8dcfadf2600"

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

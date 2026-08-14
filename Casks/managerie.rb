cask "managerie" do
  version "2.0.1"
  sha256 "7c5394fc420d21e4514e6e9a2973e1f8b7a66d8f1019517fea3dfddc7954e746"

  url "https://github.com/swairshah/Managerie/releases/download/v#{version}/Managerie-#{version}.dmg"
  name "Managerie"
  desc "Menagerie of coding agents in your menubar — notifications, status, and replies for pi, claude-code, and codex"
  homepage "https://github.com/swairshah/Managerie"

  depends_on macos: ">= :ventura"

  app "Managerie.app"

  zap trash: [
    "~/Library/Application Support/Managerie",
    "~/Library/Preferences/com.managerie.app.plist",
    "~/.pi/agent/managerie",
  ]

  caveats <<~EOS
    Managerie is notification-first: allow notifications when prompted.
    For voice input, grant Microphone permission.

    Connect your agents from the app: Settings → Integrations
    (installs the pi extension, claude-code hooks, and codex notify).
  EOS
end

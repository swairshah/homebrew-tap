cask "managerie" do
  version "1.1.0"
  sha256 "a7ab060d24258ebdc14ae65e314647f1b04a3334d704e1bcd116dde65db01e71"

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

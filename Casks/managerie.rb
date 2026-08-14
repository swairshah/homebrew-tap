cask "managerie" do
  version "1.2.0"
  sha256 "6b6da22f27a43eaaa33a77ed5a744061fb8d312c8804824ed9f253d134b9c1d9"

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

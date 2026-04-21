cask "trackie" do
  version "0.3.1"
  sha256 "4f1a003f389a0adb6a6319516567049bbc2885270f98c41f9b10cd948d752d32"

  url "https://github.com/swairshah/Trackie/releases/download/v#{version}/Trackie-#{version}.dmg"
  name "Trackie"
  desc "Menubar project tracker with CLI for coordinating with coding agents"
  homepage "https://github.com/swairshah/Trackie"

  depends_on macos: ">= :ventura"

  app "Trackie.app"

  # The CLI ships inside the .app bundle as `trackiectl` (renamed to avoid
  # colliding with the `Trackie` app binary on case-insensitive APFS).
  # Symlink it onto the user's PATH as `trackie`.
  binary "#{appdir}/Trackie.app/Contents/MacOS/trackiectl", target: "trackie"

  zap trash: [
    "~/Library/Application Support/Trackie",
    "~/Library/Preferences/com.trackie.app.plist",
    "~/Library/Caches/com.trackie.app",
  ]

  caveats <<~EOS
    Trackie runs in the menubar. Click the rolodex icon to open the dropdown.

    The `trackie` command has been installed on your PATH so any coding agent
    (Codex, Cursor, Claude Code, …) can push items straight into the queue:

        trackie add "Investigate flaky login test"
        trackie list
        trackie done 3f8a
  EOS
end

cask "bookmarked" do
  version "0.1.2"
  sha256 "f7c41c92a19d575d1a63b9935c94c513c6bc35c0d1eaecf5fdf898224570fb9e"

  url "https://github.com/swairshah/Bookmarked/releases/download/v#{version}/Bookmarked-#{version}.dmg"
  name "Bookmarked"
  desc "Menu bar bookmark curator with a reader and local capture"
  homepage "https://github.com/swairshah/Bookmarked"

  depends_on macos: :ventura

  app "Bookmarked.app"
  binary "#{appdir}/Bookmarked.app/Contents/MacOS/bookmarkedctl", target: "bookmarked"

  postflight do
    system_command "/usr/bin/open", args: [staged_path.join("Bookmarked.app")]
  end

  zap trash: [
    "~/Library/Application Support/Bookmarked",
    "~/Library/Preferences/com.swair.bookmarked.plist",
    "~/Library/Caches/com.swair.bookmarked",
  ]

  caveats <<~EOS
    Bookmarked needs Accessibility permission for the global capture shortcut
    (Cmd+Shift+M) and browser-tab capture. Grant it in
    System Settings → Privacy & Security → Accessibility on first launch.
  EOS
end

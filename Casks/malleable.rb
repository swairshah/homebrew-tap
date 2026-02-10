cask "malleable" do
  version "1.0.0"

  on_arm do
    sha256 "2455c3f6ad558da9d3125bbf318f81617de5aa82624b181a71fb7deb7d4935b8"
    url "https://github.com/swairshah/malleable/releases/download/v#{version}/Malleable-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "25aa71f5278d8fca9d121362c51b1849b06347344be747060bceae146f361712"
    url "https://github.com/swairshah/malleable/releases/download/v#{version}/Malleable-#{version}.dmg"
  end

  name "Malleable"
  desc "A canvas for AI-generated UI"
  homepage "https://github.com/swairshah/malleable"

  depends_on macos: ">= :ventura"

  app "Malleable.app"

  zap trash: [
    "~/Library/Application Support/malleable",
    "~/Library/Preferences/com.malleable.app.plist",
    "~/Library/Caches/com.malleable.app",
  ]
end

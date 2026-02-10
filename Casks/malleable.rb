cask "malleable" do
  version "1.0.1"

  on_arm do
    sha256 "e0eb7bd5562ec3c90f45f2bd76d925566689e5e4e16ba11e6c3f9d700cf832a6"
    url "https://github.com/swairshah/malleable/releases/download/v#{version}/Malleable-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "ea7974a43afd6d2563229f41899ebc6a300f5a6ee437d9a894f37971a1d87df2"
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

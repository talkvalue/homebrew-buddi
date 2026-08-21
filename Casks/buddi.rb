cask "buddi" do
  version "0.1.5"
  sha256 "ecf563eb4285b6fbc3c1cf00ec07b4d80eed29101e88436564eb002f9382c63b"

  url "https://github.com/talkvalue/Buddi/releases/download/v#{version}/buddi-#{version}.dmg"
  name "Buddi"
  desc "Claude Code companion for the macOS notch"
  homepage "https://github.com/talkvalue/Buddi"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "buddi.app"

  uninstall quit: "com.talkvalue.buddi"

  zap trash: [
    "~/Library/Preferences/com.talkvalue.buddi.plist",
    "~/Library/Application Support/Buddi",
  ]
end

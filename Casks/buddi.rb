cask "buddi" do
  version "0.1.2"
  sha256 "37512f3422cad7aca186f78e1e608230a506149acc609068e34d213003ce426f"

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

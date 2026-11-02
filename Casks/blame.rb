cask "blame" do
  arch arm: "arm64", intel: "x64"

  version "1.2.1"
  sha256 arm:   "5fa07612cb691079e1382ad0f03404bbb92684588e8e8e90645c0fe785556ba8",
         intel: "2278c357841887a7f583160ebd2c8e87cde8e5b6afc93a5a6bbf738c3d33a52e"

  url "https://github.com/rchrp/Blame/releases/download/v#{version}/blame-mac-#{arch}.dmg"
  name "Blame"
  desc "Agentic development environment for AI coding agents"
  homepage "https://blame.so/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Blame.app"

  uninstall quit: "dev.blame.desktop"

  zap trash: [
    "~/Library/Application Support/Blame",
    "~/Library/Caches/@blamedesktop-updater",
    "~/Library/Caches/dev.blame.desktop",
    "~/Library/Caches/dev.blame.desktop.ShipIt",
    "~/Library/HTTPStorages/dev.blame.desktop",
    "~/Library/Logs/Blame",
    "~/Library/Preferences/dev.blame.desktop.plist",
    "~/Library/Saved Application State/dev.blame.desktop.savedState",
  ]
end

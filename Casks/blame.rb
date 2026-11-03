cask "blame" do
  arch arm: "arm64", intel: "x64"

  version "1.2.2"
  sha256 arm:   "7f51df0f1c67186c5ffa849204f6218b40d0a0971dc9f9d5bcb4f9232d877fa1",
         intel: "d560e8c8186cb285dca9ac9dd8e551fec217c0eb47ac6fdf86484d908eee7fd0"

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

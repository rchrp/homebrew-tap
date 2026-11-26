cask "blame" do
  arch arm: "arm64", intel: "x64"

  version "1.3.4"
  sha256 arm:   "8e8e4a978f4bdfde0f86724e248ae4ccee729f263359cc1c206d8c1fe81d4b2b",
         intel: "b45018a209b4db51739e612f39958e14aad157258efcc4ae18bcbbbd940846e3"

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

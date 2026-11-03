cask "blame" do
  arch arm: "arm64", intel: "x64"

  version "1.2.4"
  sha256 arm:   "8248a7d6444823a10cf6fc77c9d6b30a5b7797fab88a3418162de17efbd3869f",
         intel: "50dea7b11400962a0058e4ff0a9bc7057ff9035e0c74610a2613712b8246d15a"

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

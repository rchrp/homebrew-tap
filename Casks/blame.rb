cask "blame" do
  arch arm: "arm64", intel: "x64"

  version "1.2.5"
  sha256 arm:   "8fee84ace0c0687765e0480de7c2fa01ca6d65e6aa326f57ba7f77322b09909d",
         intel: "ab2115d975970868064d490f5e046ffedd9e5f6f1900b8f95642fb502e8e4f59"

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

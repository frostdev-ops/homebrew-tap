cask "rimeward" do
  version "1.0.15"
  sha256 "cdd663931c9e12bebe0b09e38d643299d7809a67d785d57bc9af3cd8aa97d5ca"

  url "https://github.com/frostdev-ops/rimeward/releases/download/desktop-v#{version}/Rimeward_#{version}_aarch64.dmg"
  name "Rimeward"
  desc "Workspace for agents, work and personal style"
  homepage "https://github.com/frostdev-ops/rimeward"

  livecheck do
    url :url
    regex(/^desktop-v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Rimeward.app"

  zap trash: [
    "~/Library/Application Support/io.frostdev.rimeward",
    "~/Library/Caches/io.frostdev.rimeward",
    "~/Library/Caches/rimeward-models",
    "~/Library/HTTPStorages/io.frostdev.rimeward.binarycookies*",
    "~/Library/LaunchAgents/Rimeward.plist",
    "~/Library/Preferences/io.frostdev.rimeward.plist",
    "~/Library/WebKit/io.frostdev.rimeward",
  ]
end

cask "rimeward" do
  version "1.0.18"
  sha256 "0f287091cb5e8a6c78e8fdfb4b08e61aa8d4205e5f4284d1e95a8afeefb6a6b7"

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

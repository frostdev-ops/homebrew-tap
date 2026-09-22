cask "rimeward" do
  version "1.0.14"
  sha256 "b406ea15c33d3f054f4828d7ea87dfe593fef151dc4e1a8c26250113d13ea078"

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

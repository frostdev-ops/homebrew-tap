cask "rimeward" do
  version "1.0.17"
  sha256 "77a4b95219c2a9b565b2afd141deb1812d26db44d686240eaf9c843f574d93c8"

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

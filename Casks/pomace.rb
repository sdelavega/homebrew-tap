cask "pomace" do
  version "1.1.1"
  sha256 "cb06d3d476084ef9d13f3d9b9b7619335aafc134108993a4510cf3c3ab40a7a6"

  url "https://github.com/sdelavega/Pomace/releases/download/v1.1.1/Pomace-1.1.1.dmg"
  name "Pomace"
  desc "Transparent filesystem compression for macOS"
  homepage "https://github.com/sdelavega/Pomace"

  auto_updates true
  depends_on macos: :sonoma

  app "Pomace.app"

  uninstall launchctl: "com.sdelavega.Pomace.Sweep"

  zap trash: [
    "~/Library/Application Support/Pomace",
    "~/Library/Preferences/com.sdelavega.Pomace.plist",
    "~/Library/Caches/com.sdelavega.Pomace",
    "~/Library/Saved Application State/com.sdelavega.Pomace.savedState",
  ]
end

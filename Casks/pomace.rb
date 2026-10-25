cask "pomace" do
  version "1.1.0"
  sha256 "ec6d219df886197f0c77b1cc0d0c1009216431ed75fc38070e606f8bd23df00d"

  url "https://github.com/sdelavega/Pomace/releases/download/v1.1.0/Pomace-1.1.0.dmg"
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

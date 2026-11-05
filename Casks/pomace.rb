cask "pomace" do
  version "1.1.3"
  sha256 "949247925f87876e302beee89eda855ab07d605a4f8585074908ae2f479c4077"

  url "https://github.com/sdelavega/Pomace/releases/download/v1.1.3/Pomace-1.1.3.dmg"
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

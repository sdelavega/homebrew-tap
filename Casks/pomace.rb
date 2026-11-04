cask "pomace" do
  version "1.1.2"
  sha256 "78d713c592ca700dba7c294a4ef233095b2cf37a8d4b319ff91369449e3a926f"

  url "https://github.com/sdelavega/Pomace/releases/download/v1.1.2/Pomace-1.1.2.dmg"
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

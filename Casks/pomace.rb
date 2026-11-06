cask "pomace" do
  version "1.1.5"
  sha256 "1d720e50fc7bb595908e6c386ef8d86e3c70ae7694c9197a64fdbc114ee14b88"

  url "https://github.com/sdelavega/Pomace/releases/download/v1.1.5/Pomace-1.1.5.dmg"
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

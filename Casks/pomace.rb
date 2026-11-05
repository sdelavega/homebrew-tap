cask "pomace" do
  version "1.1.4"
  sha256 "41f53d28ed7a2f9747f2b53a70af11cc39b5242e067ce8575b1294f1e52de791"

  url "https://github.com/sdelavega/Pomace/releases/download/v1.1.4/Pomace-1.1.4.dmg"
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

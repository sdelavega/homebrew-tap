cask "xrg-ng" do
  version "0.2.1"
  sha256 "6ba66699d9f11a4a344ce1dc9e4ef75d6b0406e9c2cd63b75579af1e839c3034"

  url "https://github.com/sdelavega/XRG-ng/releases/download/v#{version}/XRG-ng-#{version}-macOS-universal.dmg"
  name "XRG-ng"
  desc "Real-time system resource monitor with floating graphs"
  homepage "https://github.com/sdelavega/XRG-ng"

  livecheck do
    url "https://sdelavega.github.io/XRG-ng/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :tahoe

  app "XRG-ng.app"

  zap trash: [
    "~/Library/Caches/com.sdelavega.xrg",
    "~/Library/HTTPStorages/com.sdelavega.xrg",
    "~/Library/Preferences/com.sdelavega.xrg.plist",
  ]
end

cask "xrg-ng" do
  version "0.2.2"
  sha256 "dff0bb118ae14f906a033703947bf357d05d61c58a14e0c9e897b9c838cead22"

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

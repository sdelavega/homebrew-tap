cask "xrg-ng" do
  version "0.2.3"
  sha256 "7b0f126c6325f6bc88fa1fd5d06e6914b78adbbb43ca6758f8bd168170f7403b"

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

# SPDX-License-Identifier: GPL-3.0-only
# Copyright (C) 2026 Stephen de la Vega
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <https://www.gnu.org/licenses/>.

cask "aetherdesk" do
  version "1.4.0"
  sha256 "3bab9b8c40df6b0443fe653cc99f2a1999fec2856b7af9ce9485795f8bb72f97"

  url "https://github.com/sdelavega/AetherDesk/releases/download/v1.4.0/AetherDesk-1.4.0.dmg"
  name "ÆtherDesk"
  desc "Live wallpapers for macOS"
  homepage "https://github.com/sdelavega/AetherDesk"

  auto_updates true
  depends_on macos: :sonoma

  app "ÆtherDesk.app"

  zap trash: [
    "~/Library/Application Support/ÆtherDesk",
    "~/Library/Preferences/com.sdelavega.AetherDesk.plist",
    "~/Library/Caches/com.sdelavega.AetherDesk",
  ]
end

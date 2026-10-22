# Tesserae: a disk-space visualizer.
# Copyright (C) 2026 Stephen de la Vega
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.


cask "tesserae" do
  version "0.1.2"
  sha256 "1835baf5f0183ed56719f27367cd2d3adb13b97a1530e9ad5be04ea8a7d52c58"

  url "https://github.com/sdelavega/tesserae/releases/download/v0.1.2/Tesserae-0.1.2.dmg"
  name "Tesserae"
  desc "Disk-space visualizer for macOS"
  homepage "https://github.com/sdelavega/tesserae"

  auto_updates true
  depends_on macos: :ventura

  app "Tesserae.app"

  zap trash: [
    "~/Library/Application Support/Tesserae",
    "~/Library/Preferences/com.sdelavega.Tesserae.plist",
    "~/Library/Caches/com.sdelavega.Tesserae",
    "~/Library/Saved Application State/com.sdelavega.Tesserae.savedState",
  ]
end

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
  version "0.2.0"
  sha256 "b21640e70b5080b69484375ddcb8b95e9a032c9b6e7bc64e248a2da82a692259"

  url "https://github.com/sdelavega/tesserae/releases/download/v0.2.0/Tesserae-0.2.0.dmg"
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

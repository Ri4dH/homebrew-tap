cask "disablebar" do
  version "1.2.0"
  sha256 "f4a7497cba0e1f07f373b126b04a60a9e5958f2b33113119efb56a5f8fd8cd88"

  url "https://github.com/Ri4dH/disablebar/releases/download/v#{version}/DisableBar-#{version}.dmg"
  name "DisableBar"
  desc "Turn off a flickering Touch Bar and block ghost touches"
  homepage "https://github.com/Ri4dH/disablebar"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "DisableBar.app"

  uninstall quit: "io.github.ri4dh.DisableBar"

  zap trash: [
    "~/Library/Caches/io.github.ri4dh.DisableBar",
    "~/Library/HTTPStorages/io.github.ri4dh.DisableBar",
    "~/Library/Preferences/io.github.ri4dh.DisableBar.plist",
  ]
end

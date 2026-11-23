cask "disablebar" do
  version "1.2.1"
  sha256 "584aa9ffd32759286ac10829ab16684f882d47092dafbb3762b9ab30015c2c43"

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

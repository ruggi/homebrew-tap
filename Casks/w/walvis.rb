cask 'walvis' do
  name "Walvis"
  desc "Manage Docker containers from the menu bar."
  homepage "https://github.com/ruggi/walvis"

  version "1.12.5"
  sha256 "4e0438bbf84635cab7b7c336c3b80a8f240e20c3d5ddb5a77dd701cf68b044fa"

  url "https://github.com/ruggi/walvis/releases/download/v#{version}/Walvis-#{version}.zip"

  app "Walvis.app"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:-beta\.?\d*)?)$/i)
  end

  zap trash: [
    "~/Library/LaunchAgents/com.gihtub.ruggi.walvis",
    "~/Library/Preferences/com.github.ruggi.walvis.plist",
  ]
end

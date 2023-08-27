cask 'walvis' do
  name "Walvis"
  desc "Manage Docker containers from the menu bar."
  homepage "https://github.com/ruggi/walvis"

  version "1.12.4"
  sha256 "66c6fc5e0a8534ac05f7c987e1a8e0ca792554817bcb9fb3b4635ce45675ff14"

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

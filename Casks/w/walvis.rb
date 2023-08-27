cask 'walvis' do
  name "Walvis"
  desc "Manage Docker containers from the menu bar."
  homepage "https://github.com/ruggi/walvis"

  version "1.12.3"
  sha256 "376d018f0d29b4557ef9ac402c88cf45a43011e8f150de5bc94cd0275f8a54f5"

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

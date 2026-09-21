cask "grain" do
  version "0.2.20"
  sha256 "610387880a01d6fa46043fe10f6d7c156966490c9108aadc80abbee745abc2b1"

  url "https://updates.rungrain.com/grain/darwin/arm64/Grain-darwin-arm64-#{version}.zip"
  name "Grain"
  desc "Desktop workspace for building with AI agents"
  homepage "https://rungrain.com/"

  livecheck do
    url "https://updates.rungrain.com/grain/darwin/arm64/RELEASES.json"
    strategy :json do |json|
      json["currentRelease"]
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Grain.app"
  binary "#{appdir}/Grain.app/Contents/Resources/cli/bin/grain"
end

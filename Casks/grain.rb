cask "grain" do
  version "0.2.22"
  sha256 "411e6fe69190e465d04a0ef72b09bb36a0c35e9cac4e953d6cbcb6f74e3313a1"

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

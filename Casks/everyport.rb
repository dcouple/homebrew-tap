cask "everyport" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0"
  sha256 arm:   "6c49bfb1ea15ba0477c961d29214b6226adcf0d59d6b8b5c9548bf072749701e",
         intel: "140365484224f0eab98c1e9b816ae8890f8460cb7e40ccf189a3f3286354cb9a"

  url "https://github.com/greenfield-inc/everyport/releases/download/v#{version}/everyport-#{version}-#{arch}.dmg"
  name "Everyport"
  desc "Menu bar app that shows every dev server on your machine"
  homepage "https://github.com/greenfield-inc/everyport"

  depends_on macos: :ventura

  app "Everyport.app"

  zap trash: [
    "~/Library/Application Support/everyport",
    "~/Library/Application Support/dev.everyport.desktop",
    "~/Library/Caches/dev.everyport.desktop",
    "~/Library/WebKit/dev.everyport.desktop",
  ]
end

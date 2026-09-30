cask "everyport" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.3"
  sha256 arm:   "556415e5a125e3342849c34d9eef0bdc089ab81790dfd79b10c2ddbb7c57ac0b",
         intel: "ea34118bc38be493676eb80a1d28f1072cd24f0d0dff2c7bb7a4d5ddc646b893"

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

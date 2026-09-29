class Everyport < Formula
  desc "See every dev server on your machine, or any box you can reach"
  homepage "https://github.com/greenfield-inc/everyport"
  version "0.1.2"
  license "MIT"

  base = "https://github.com/greenfield-inc/everyport/releases/download/v#{version}"

  on_macos do
    on_arm do
      url "#{base}/everyport-aarch64-apple-darwin"
      sha256 "032f7aea6667c04f021366d127f6e7f8e40e5142061b9fa86730d34a40a6d8af"
    end
    on_intel do
      url "#{base}/everyport-x86_64-apple-darwin"
      sha256 "2dfba896849e662205aa2592f4e15c4ffd2c9b968484cf7b764f641187b002fe"
    end
  end

  on_linux do
    on_arm do
      url "#{base}/everyport-aarch64-unknown-linux-musl"
      sha256 "4c77759fa42427263af7556112461b1f49278413adf9bedcc59defe2b6504866"
    end
    on_intel do
      url "#{base}/everyport-x86_64-unknown-linux-musl"
      sha256 "f741b9982e51dea9665cccad2ffa069f5b82ab60382ddc64cb8aa4a5cf3851ff"
    end
  end

  def install
    bin.install Dir["everyport-*"].first => "everyport"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/everyport --version")
  end
end

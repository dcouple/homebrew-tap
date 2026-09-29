class Everyport < Formula
  desc "See every dev server on your machine, or any box you can reach"
  homepage "https://github.com/greenfield-inc/everyport"
  version "0.1.1"
  license "MIT"

  base = "https://github.com/greenfield-inc/everyport/releases/download/v#{version}"

  on_macos do
    on_arm do
      url "#{base}/everyport-aarch64-apple-darwin"
      sha256 "a1c7e7b0ba59fe50fa4ffb8f9a34b3a217185682a39d5f82f72577c891ee6c01"
    end
    on_intel do
      url "#{base}/everyport-x86_64-apple-darwin"
      sha256 "61ef274b080af19d1efe48c6c8af94b0d67b59c7b6d2b4d2f4be0f38fd9e0c5b"
    end
  end

  on_linux do
    on_arm do
      url "#{base}/everyport-aarch64-unknown-linux-musl"
      sha256 "aefacc9dc8eb81c04c783c498ea48e5da2a9f5019f38a940a86075563392aba0"
    end
    on_intel do
      url "#{base}/everyport-x86_64-unknown-linux-musl"
      sha256 "f13c9d0a5e73b1fc01ebac14e03b2233ac50b3375761da03d6e6ef0147be832d"
    end
  end

  def install
    bin.install Dir["everyport-*"].first => "everyport"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/everyport --version")
  end
end

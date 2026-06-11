class Relay < Formula
  desc "Unified gateway CLI for integrated services"
  homepage "https://github.com/patrikmichi/relay"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/patrikmichi/relay/releases/download/v0.1.0/relay-darwin-arm64.tar.gz"
      sha256 "6fbc81481768ec296de265e20d396edee38e6a6f0d44377ec71e4e16878962fe"
    else
      url "https://github.com/patrikmichi/relay/releases/download/v0.1.0/relay-darwin-amd64.tar.gz"
      sha256 "205c09b88fc57b28aa3ea9c13b85afe92ba2d421d0a78d6900baed97900d9da5"
    end
  end

  on_linux do
    url "https://github.com/patrikmichi/relay/releases/download/v0.1.0/relay-linux-amd64.tar.gz"
    sha256 "8bad765498a1c8218161d4972c6bf1ce16802757a575dd0d1f767b1c653f370c"
  end

  def install
    bin.install "relay"
  end

  test do
    assert_match "relay", shell_output("#{bin}/relay --help")
  end
end

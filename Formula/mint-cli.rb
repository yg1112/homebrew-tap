class MintCli < Formula
  desc "Storage intelligence CLI for macOS - scan, clean, and monitor disk usage"
  homepage "https://mint.dzgapp.com"
  url "https://github.com/yg1112/mint-releases/releases/download/v1.0.1/mint-cli-1.0.1-macOS.tar.gz"
  sha256 "290ce5e59e5a7de37c7fec231b2a20f28b734c688aa8cc54be1a67f0382c2816"
  version "1.0.1"
  license :cannot_represent

  depends_on :macos

  def install
    bin.install "mint-cli"
  end

  test do
    assert_match "Mint", shell_output("#{bin}/mint-cli --help")
  end
end

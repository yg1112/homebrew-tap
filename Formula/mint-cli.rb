class MintCli < Formula
  desc "Storage intelligence CLI for macOS - scan, clean, and monitor disk usage"
  homepage "https://mint.dzgapp.com"
  url "https://github.com/yg1112/mint-releases/releases/download/v1.0.1/mint-cli-1.0.1-macOS.tar.gz"
  sha256 "9b9363f06d20e4b909127727a47c67fad8b5bd0605afe10117e6e34a6d127add"
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

class MintCli < Formula
  desc "Storage intelligence CLI for macOS - scan, clean, and monitor disk usage"
  homepage "https://mint.dzgapp.com"
  url "https://github.com/yg1112/mint-releases/releases/download/v1.0.1/mint-cli-1.0.1-macOS.tar.gz"
  sha256 "85fa7d865682756720744c161a49f1a3317e908b45bb34b956b38ba59fa986ea"
  version "1.0.1"
  license :cannot_represent

  depends_on :macos

  def install
    bin.install "mint"
  end

  test do
    assert_match "Mint", shell_output("#{bin}/mint --help")
  end
end

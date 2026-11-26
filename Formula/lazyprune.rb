class Lazyprune < Formula
  desc "TUI to find and delete heavy cache/dependency directories"
  homepage "https://github.com/ThibaultJRD/lazyprune"
  url "https://github.com/ThibaultJRD/lazyprune/releases/download/v0.7.0/lazyprune-v0.7.0-universal-apple-darwin.tar.gz"
  sha256 "496237f48d76181ed1bc2221ee178f3302f43cdfcb9221d3485370b0210b2879"
  license "MIT"

  depends_on :macos

  def install
    bin.install "lazyprune"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazyprune --version")
  end
end

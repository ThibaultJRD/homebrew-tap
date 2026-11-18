class Lazyprune < Formula
  desc "TUI to find and delete heavy cache/dependency directories"
  homepage "https://github.com/ThibaultJRD/lazyprune"
  url "https://github.com/ThibaultJRD/lazyprune/releases/download/v0.6.2/lazyprune-v0.6.2-universal-apple-darwin.tar.gz"
  sha256 "0631542edb76b984f533383171fe7567eb38ed5563933f29a1246ea99359eede"
  license "MIT"

  depends_on :macos

  def install
    bin.install "lazyprune"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazyprune --version")
  end
end

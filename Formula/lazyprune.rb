class Lazyprune < Formula
  desc "TUI to find and delete heavy cache/dependency directories"
  homepage "https://github.com/ThibaultJRD/lazyprune"
  url "https://github.com/ThibaultJRD/lazyprune/releases/download/v0.6.1/lazyprune-v0.6.1-universal-apple-darwin.tar.gz"
  sha256 "00770181d742f0e294aacc0f0bfb663a9d9afed5a8066f2ebfed9974533d518e"
  license "MIT"

  depends_on :macos

  def install
    bin.install "lazyprune"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazyprune --version")
  end
end

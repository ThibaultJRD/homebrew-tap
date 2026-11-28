class Lazyprune < Formula
  desc "TUI to find and delete heavy cache/dependency directories"
  homepage "https://github.com/ThibaultJRD/lazyprune"
  url "https://github.com/ThibaultJRD/lazyprune/releases/download/v0.8.0/lazyprune-v0.8.0-universal-apple-darwin.tar.gz"
  sha256 "dac2f3aa0bf01bf8b5b32674c8a791ab74b0f6d0aff29a01ffe6ab8d6b69f768"
  license "MIT"

  depends_on :macos

  def install
    bin.install "lazyprune"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazyprune --version")
  end
end

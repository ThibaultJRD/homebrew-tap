class Lazyprune < Formula
  desc "TUI to find and delete heavy cache/dependency directories"
  homepage "https://github.com/ThibaultJRD/lazyprune"
  url "https://github.com/ThibaultJRD/lazyprune/releases/download/v0.6.0/lazyprune-v0.6.0-universal-apple-darwin.tar.gz"
  sha256 "c36df6fad4ed02ac84ace9dcfb6dd4b19ba8991a0a36e5c2b0ec610be08199b5"
  license "MIT"

  depends_on :macos

  def install
    bin.install "lazyprune"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazyprune --version")
  end
end

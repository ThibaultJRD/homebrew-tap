class Lazyprune < Formula
  desc "TUI to find and delete heavy cache/dependency directories"
  homepage "https://github.com/ThibaultJRD/lazyprune"
  url "https://github.com/ThibaultJRD/lazyprune/releases/download/v0.5.1/lazyprune-v0.5.1-universal-apple-darwin.tar.gz"
  sha256 "09faee344d2565da79f684ebc4d5821a24f4c29bc4ad3f32319156627509e1cd"
  license "MIT"

  depends_on :macos

  def install
    bin.install "lazyprune"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazyprune --version")
  end
end

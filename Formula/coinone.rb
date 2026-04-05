class Coinone < Formula
  desc "Developer-friendly CLI for Coinone public and private APIs"
  homepage "https://github.com/2sem/coinone-api-cli"
  url "https://github.com/2sem/coinone-api-cli/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "238aebbe11bf6b6ff9d0f39250a922b58146ad71b15da68f47862a0955ec1115"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/coinone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coinone --version")
  end
end

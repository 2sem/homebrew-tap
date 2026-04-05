class Coinone < Formula
  desc "Developer-friendly CLI for Coinone public and private APIs"
  homepage "https://github.com/2sem/coinone-api-cli"
  url "https://github.com/2sem/coinone-api-cli/archive/refs/tags/1.0.3.tar.gz"
  sha256 "8b58bfd2a2322da0a3d60437888f6c830638abdae63d17a03eb202ac378cbccf"
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

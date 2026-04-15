class Coinone < Formula
  desc "Developer-friendly CLI for Coinone public and private APIs"
  homepage "https://github.com/2sem/coinone-api-cli"
  url "https://registry.npmjs.org/coinone-api-cli/-/coinone-api-cli-1.0.5.tgz"
  sha256 "f8866d66e66c788b9443132468ba7da9e1390c5d41bce979cd7cfc94a2ca0ea5"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec / "bin/coinone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coinone --version")
  end
end

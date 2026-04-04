class Coinone < Formula
  desc "Developer-friendly CLI for Coinone public and private APIs"
  homepage "https://github.com/2sem/coinone-api-cli"
  url "https://registry.npmjs.org/coinone-api-cli/-/coinone-api-cli-1.0.1.tgz"
  sha256 "978f08c1db0d8a85ba06a74654a1f13e418a9ae8cee00d0d01756a159932c236"
  license "MIT"

  depends_on "node"

  def install
    cd "package" do
      system "npm", "install", *std_npm_args
      bin.install_symlink libexec/"bin/coinone"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coinone --version")
  end
end

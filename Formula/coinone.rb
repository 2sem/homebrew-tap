class Coinone < Formula
  desc 'Developer-friendly CLI for Coinone public and private APIs'
  homepage 'https://github.com/2sem/coinone-api-cli'
  url 'https://registry.npmjs.org/coinone-api-cli/-/coinone-api-cli-1.0.4.tgz'
  sha256 '1a946a5333ba9d23a4d3d517fc1e4b36218e5a1af513572714f40000496cad0c'
  license 'MIT'

  depends_on 'node'

  def install
    system 'npm', 'install', *std_npm_args
    bin.install_symlink libexec / 'bin/coinone'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coinone --version")
  end
end

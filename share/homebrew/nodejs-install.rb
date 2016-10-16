class NodejsInstall < Formula
  desc "Installs pre-compiled NodeJS binaries while avoiding sudo or chown"
  homepage "https://github.com/wilmoore/nodejs-install"
  url "https://github.com/wilmoore/nodejs-install/archive/1.1.0.tar.gz"
  sha256 "e56b35786d7bb3dd9d7ab59e86bf5d7edff285ea54b09fc14c005f229436fd1b"
  head "https://github.com/wilmoore/nodejs-install.git"

  def install
    prefix.install "bin"
  end

  test do
    system bin/"nodejs-install", "--version"
  end
end

class NodejsInstall < Formula
  desc "Installs pre-compiled NodeJS binaries while avoiding sudo or chown"
  homepage "https://github.com/wilmoore/nodejs-install"
  url "https://github.com/wilmoore/nodejs-install/archive/1.0.0.tar.gz"
  sha256 "5ce90a3398884d55a891e0e1a889ee46a8aa41e48cd700b4a9b34c6c74de78ef"
  head "https://github.com/wilmoore/nodejs-install.git"

  def install
    prefix.install "bin"
  end

  test do
    system bin/"nodejs-install", "--version"
  end
end

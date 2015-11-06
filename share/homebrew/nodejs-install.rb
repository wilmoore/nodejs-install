class NodejsInstall < Formula
  desc "Installs pre-compiled NodeJS binaries while avoiding sudo or chown"
  homepage "https://github.com/wilmoore/nodejs-install"
  url "https://github.com/wilmoore/nodejs-install/archive/1.0.1.tar.gz"
  sha256 "fe5a0d6e253ad6db148dbe8dc3e8f80f160818cb7daea33e32e4f417075eb42f"
  head "https://github.com/wilmoore/nodejs-install.git"

  def install
    prefix.install "bin"
  end

  test do
    system bin/"nodejs-install", "--version"
  end
end

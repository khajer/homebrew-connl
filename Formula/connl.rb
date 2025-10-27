class Connl < Formula
  desc "the client app use to connect the connl server"
  homepage "https://github.com/khajer/bindlocal-client"
  version "0.1.0"
  license "MIT"

  on_macos do
    url "https://github.com/khajer/bindlocal-client/releases/download/v0.1.0/connl-0.1.0-macos.tar.gz"
    sha256 "b4481b27bdff1e20597c48961dfcb5eee2dc7b78fc4adc0b979005a86f1c6180"
  end
  on_linux do
    url "https://github.com/khajer/bindlocal-client/releases/download/v0.1.0/connl-0.1.0-linux.tar.gz"
    sha256 "ac6336e50d2fa4255b40fed7b98e274ede95316c51ab2cbdc239e7e63865a64a"
  end


  def install
    bin.install "connl"
  end

  test do
    system "#{bin}/connl", "version"
  end
end

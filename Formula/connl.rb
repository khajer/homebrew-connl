class Connl < Formula
  desc "the client app use to connect the connl server"
  homepage "https://github.com/khajer/bindlocal-client"
  version "0.0.1"
  license "MIT"

  on_macos do
    url "https://github.com/khajer/bindlocal-client/releases/download/v0.0.1/connl-0.0.1-macos.tar.gz"
    sha256 "0133595f8d67d457a4c86063385eb0bde4320f95eb67e0d779add5a776ce9b4e"
  end
  on_linux do
    url "https://github.com/khajer/bindlocal-client/releases/download/v0.0.1/connl-0.0.1-linux.tar.gz"
    sha256 "68fea148e91c8a4b585214f4f3628eca0b24988543da13c1426c4ca7d893cf29"
  end


  def install
    bin.install "connl"
  end

  test do
    system "#{bin}/connl", "version"
  end
end

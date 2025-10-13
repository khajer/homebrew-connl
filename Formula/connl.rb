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
    sha256 "394cb338b9d6b9fd8abcd6399909aad396aad5177d5f88ab9f65922e692e794d"
  end


  def install
    bin.install "connl"
  end

  test do
    system "#{bin}/connl", "--version"
  end
end

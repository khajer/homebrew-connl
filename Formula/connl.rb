class Connl < Formula
  desc "the client app use to connect the connl server"
  homepage "https://github.com/khajer/bindlocal-client"
  version "0.0.1"
  license "MIT"

  on_macos do
    url "https://github.com/khajer/bindlocal-client/releases/download/v0.0.1/connl-0.0.1-macos.tar.gz"
    sha256 "sha256:ee82527ca72adb4b0b8facdc582e743a4a17d2a2dc380d49059d7a2bf45fdbe3"
  end
  on_linux do
    url "https://github.com/khajer/bindlocal-client/releases/download/v0.0.1/connl-0.0.1-linux.tar.gz"
    sha256 "sha256:394cb338b9d6b9fd8abcd6399909aad396aad5177d5f88ab9f65922e692e794d"
  end


  def install
    bin.install "connl"
  end

  test do
    system "#{bin}/connl", "--version"
  end
end

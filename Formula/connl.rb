class Connl < Formula
  desc "the client app use to connect the connl server"
  homepage "https://github.com/khajer/bindlocal-client"
  url "https://github.com/khajer/bindlocal-client/releases/download/v0.0.1/connl-0.0.1-macos.tar.gz"
  sha256 "sha256:ee82527ca72adb4b0b8facdc582e743a4a17d2a2dc380d49059d7a2bf45fdbe3"
  license "MIT"

  def install
    bin.install "connl"
  end

  test do
    system "#{bin}/connl", "--version"
  end
end

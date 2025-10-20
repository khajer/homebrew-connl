class Connl < Formula
  desc "the client app use to connect the connl server"
  homepage "https://github.com/khajer/bindlocal-client"
  version "0.0.2"
  license "MIT"

  on_macos do
    url "https://github.com/khajer/bindlocal-client/releases/download/v0.0.2/connl-0.0.2-macos.tar.gz"
    sha256 "45f09759edae38904e44f070b20a0decab43f83ec247f04dc8638037dc8fbf5d"
  end
  on_linux do
    url "https://github.com/khajer/bindlocal-client/releases/download/v0.0.2/connl-0.0.2-linux.tar.gz"
    sha256 "dfded9c6f21750b4ad9c637a044878c42fae15c78ead48fe18870f77298629ab"
  end


  def install
    bin.install "connl"
  end

  test do
    system "#{bin}/connl", "version"
  end
end

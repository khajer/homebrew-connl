class Connl < Formula
  desc "the client app use to connect the connl server"
  homepage "https://github.com/khajer/bindlocal-client"
  version "0.1.1"
  license "MIT"

  on_macos do
    url "https://github.com/khajer/bindlocal-client/releases/download/v0.1.1/connl-0.1.1-macos-tar.gz"
    sha256 "4ed23e5fb74d07c73b66374ab35112376e0064238311e417b4994a9749b8cfba"
  end
  on_linux do
    url "https://github.com/khajer/bindlocal-client/releases/download/v0.1.1/connl-0.1.1-linux.tar.gz"
    sha256 "948f0f71f0731cbff0ee5af6c11f13fa910bc060d9360f2d7be6c482dfbf2cce"
  end


  def install
    bin.install "connl"
  end

  test do
    system "#{bin}/connl", "version"
  end
end

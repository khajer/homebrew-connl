class Connl < Formula
  desc "the client app use to connect the connl server"
  homepage "https://github.com/khajer/bindlocal-client"
  version "0.1.1"
  license "MIT"

  on_macos do
    url "https://github.com/khajer/bindlocal-client/releases/download/v0.1.1/connl-0.1.1-macos-tar.gz"
    sha256 "22458a81ebc147997b55ea83df0d86c8d0a826734cf4ab3cf418d9ef63907c62"
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

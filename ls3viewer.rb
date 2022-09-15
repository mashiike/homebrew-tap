class Ls3viewer < Formula
  version '0.1.4'
  homepage 'https://github.com/mashiike/ls3viewer'
  if OS.mac?
    url "https://github.com/mashiike/ls3viewer/releases/download/v0.1.4/ls3viewer_0.1.4_darwin_amd64.tar.gz"
    sha256 '9b164c7677831d2e0a063a5f2d609c0ac8ea5f7538901890de269d8d46b150fd'
  end
  if OS.linux?
    url "https://github.com/mashiike/ls3viewer/releases/download/v0.1.4/ls3viewer_0.1.4_linux_amd64.tar.gz"
    sha256 '11ffea1484a2e9c24471d2586f5b1f923d056f0087a4a5cf6c9bc745f3171287'
  end
  head 'https://github.com/mashiike/ls3viewer.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'ls3viewer'
  end
end

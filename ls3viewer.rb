class Ls3viewer < Formula
  version '0.2.0'
  homepage 'https://github.com/mashiike/ls3viewer'
  if OS.mac?
    url "https://github.com/mashiike/ls3viewer/releases/download/v0.2.0/ls3viewer_0.2.0_darwin_amd64.tar.gz"
    sha256 '5863a9cfccb5b6f86e1cc9ae602d623b21973a4ea756bb681c59dd3ff66f53b7'
  end
  if OS.linux?
    url "https://github.com/mashiike/ls3viewer/releases/download/v0.2.0/ls3viewer_0.2.0_linux_amd64.tar.gz"
    sha256 '5255dc964768ff57d31b3fb8db7ba8f509cb6ae984a8ab1d1e0dfc89a9695417'
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

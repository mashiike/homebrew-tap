class Stefunny < Formula
  version '0.4.3'
  homepage 'https://github.com/mashiike/stefunny'
  if OS.mac?
    url "https://github.com/mashiike/stefunny/releases/download/v0.4.3/stefunny_0.4.3_darwin_amd64.tar.gz"
    sha256 'd366d781d11d00094e2fc5d1925f9c2ac748b9bb580c2e5c9cd449bb98c7a9af'
  end
  if OS.linux?
    url "https://github.com/mashiike/stefunny/releases/download/v0.4.3/stefunny_0.4.3_linux_amd64.tar.gz"
    sha256 '0c4bf299e65164bbc76abca51604d33b64f1a9b8a0142637465ac1696d78715a'
  end
  head 'https://github.com/mashiike/stefunny.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'stefunny'
  end
end

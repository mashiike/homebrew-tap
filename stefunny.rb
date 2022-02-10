class Stefunny < Formula
  version '0.3.2'
  homepage 'https://github.com/mashiike/stefunny'
  if OS.mac?
    url "https://github.com/mashiike/stefunny/releases/download/v0.3.2/stefunny_0.3.2_darwin_amd64.tar.gz"
    sha256 'e3b5aff60003cb575d5dc9d5e3178171b161f9b3ef3afd00cb923dada77e5e11'
  end
  if OS.linux?
    url "https://github.com/mashiike/stefunny/releases/download/v0.3.2/stefunny_0.3.2_linux_amd64.tar.gz"
    sha256 'bcfd884abb2c3708e98579ad4f22fa72bbef97cf6489ca24bb7ea125e68ab731'
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

class Stefunny < Formula
  version '0.0.0'
  homepage 'https://github.com/mashiike/stefunny'
  if OS.mac?
    url "https://github.com/mashiike/stefunny/releases/download/v0.0.0/stefunny_0.0.0_darwin_amd64.tar.gz"
    sha256 '3ef434d2fc5fe458850d0e9fec140bb2d97f856fca3c2c1016a7a3f982abc382'
  end
  if OS.linux?
    url "https://github.com/mashiike/stefunny/releases/download/v0.0.0/stefunny_0.0.0_linux_amd64.tar.gz"
    sha256 '3220acd1da9c4e8c4a22ab36dbfcde67ce9ecbf1283cb896b6673527b9b0c86d'
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

class Stefunny < Formula
  version '0.1.1'
  homepage 'https://github.com/mashiike/stefunny'
  if OS.mac?
    url "https://github.com/mashiike/stefunny/releases/download/v0.1.1/stefunny_0.1.1_darwin_amd64.tar.gz"
    sha256 '8fe6543e4f5e6f23ccdcac0c914d9dbf353970914f300a35b1171c221223d590'
  end
  if OS.linux?
    url "https://github.com/mashiike/stefunny/releases/download/v0.1.1/stefunny_0.1.1_linux_amd64.tar.gz"
    sha256 'd884beab062ba7324ed8a3083f95569bd537d169017d14c81d0ccbd7a88da188'
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

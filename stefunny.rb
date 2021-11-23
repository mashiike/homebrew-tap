class Stefunny < Formula
  version '0.1.0'
  homepage 'https://github.com/mashiike/stefunny'
  if OS.mac?
    url "https://github.com/mashiike/stefunny/releases/download/v0.1.0/stefunny_0.1.0_darwin_amd64.tar.gz"
    sha256 '73fba599a3f80b521d4165011bfe41218e68fc6cc9552b204c3a17de52a52290'
  end
  if OS.linux?
    url "https://github.com/mashiike/stefunny/releases/download/v0.1.0/stefunny_0.1.0_linux_amd64.tar.gz"
    sha256 'b8ba8d01c1d3df0b1a7814f2f6e5ebf6eda3034f7b3e6d3c8223740940bf42df'
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

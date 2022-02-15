class Stefunny < Formula
  version '0.4.2'
  homepage 'https://github.com/mashiike/stefunny'
  if OS.mac?
    url "https://github.com/mashiike/stefunny/releases/download/v0.4.2/stefunny_0.4.2_darwin_amd64.tar.gz"
    sha256 'eaeb76a5890be769b3269e9e77d2d4544f825be4a5abd8fc90a03bdb6a7fb412'
  end
  if OS.linux?
    url "https://github.com/mashiike/stefunny/releases/download/v0.4.2/stefunny_0.4.2_linux_amd64.tar.gz"
    sha256 '80fd2d3088b0dcae70e3bafcf5ee8f2734af4a9ad5b0ff3dd4841e86ba7c3d1f'
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

class Stefunny < Formula
  version '0.4.0'
  homepage 'https://github.com/mashiike/stefunny'
  if OS.mac?
    url "https://github.com/mashiike/stefunny/releases/download/v0.4.0/stefunny_0.4.0_darwin_amd64.tar.gz"
    sha256 'cf503eb285985369bdc0ef69b930e9d2097b71bd7b27c18615e51300fea28c05'
  end
  if OS.linux?
    url "https://github.com/mashiike/stefunny/releases/download/v0.4.0/stefunny_0.4.0_linux_amd64.tar.gz"
    sha256 '70520c1354632755ef454121374ecf832f9c29205c82c92348ab0d96a2cff602'
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

class Shimesaba < Formula
  version '1.1.0'
  homepage 'https://github.com/mashiike/shimesaba'
  if OS.mac?
    url "https://github.com/mashiike/shimesaba/releases/download/v1.1.0/shimesaba_1.1.0_darwin_amd64.tar.gz"
    sha256 '94debc4eac1d6870bc4af697017607d361bbc8dbbdb2e1a792618cf554e3ca36'
  end
  if OS.linux?
    url "https://github.com/mashiike/shimesaba/releases/download/v1.1.0/shimesaba_1.1.0_linux_amd64.tar.gz"
    sha256 'd4c590a2f0afd028d82b939f06efbfb219adc5d99ddd31ff71c986ffbdb07149'
  end
  head 'https://github.com/mashiike/shimesaba.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'shimesaba'
  end
end

class Shimesaba < Formula
  version '0.4.0'
  homepage 'https://github.com/mashiike/shimesaba'
  url "https://github.com/mashiike/shimesaba/releases/download/v0.4.0/shimesaba_0.4.0_darwin_amd64.tar.gz"
  sha256 '6cf898b49aa100a97c8951ab64259a7ba8d3f4afb7d3aacf104e0dff25fdc31b'
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

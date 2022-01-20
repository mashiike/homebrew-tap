class Shimesaba < Formula
  version '0.6.1'
  homepage 'https://github.com/mashiike/shimesaba'
  url "https://github.com/mashiike/shimesaba/releases/download/v0.6.1/shimesaba_0.6.1_darwin_amd64.tar.gz"
  sha256 '07a612aa7e4b2ce8bce325175d844d058c432151f0758a0ca91815504547bbc8'
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

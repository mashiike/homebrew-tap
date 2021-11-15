class Shimesaba < Formula
  version '0.3.0'
  homepage 'https://github.com/mashiike/shimesaba'
  url "https://github.com/mashiike/shimesaba/releases/download/v0.3.0/shimesaba_0.3.0_darwin_amd64.tar.gz"
  sha256 'e8fa6c8f2f454adfa556de8cbd43535c1e494a92abc30778908b6274cd8ece7e'
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

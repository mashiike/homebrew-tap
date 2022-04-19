class Shimesaba < Formula
  version '1.0.0'
  homepage 'https://github.com/mashiike/shimesaba'
  url "https://github.com/mashiike/shimesaba/releases/download/v1.0.0/shimesaba_1.0.0_darwin_amd64.tar.gz"
  sha256 'd429976458d36cfc5e6d37d8dff1945e90352fb6d98c06366cb752af91b77a4b'
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

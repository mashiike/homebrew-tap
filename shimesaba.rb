class Shimesaba < Formula
  version '0.7.0'
  homepage 'https://github.com/mashiike/shimesaba'
  url "https://github.com/mashiike/shimesaba/releases/download/v0.7.0/shimesaba_0.7.0_darwin_amd64.tar.gz"
  sha256 '43c6a7e4bf8194a6e4de2e491c814514835d052c4f6e9f0a50bb3821e81e2fad'
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

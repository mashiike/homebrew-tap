class Shimesaba < Formula
  version '0.6.2'
  homepage 'https://github.com/mashiike/shimesaba'
  url "https://github.com/mashiike/shimesaba/releases/download/v0.6.2/shimesaba_0.6.2_darwin_amd64.tar.gz"
  sha256 '831f0483e06cbadcd96c67ccf56da53242e70eea806c5a04f442f3bbe757ced2'
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

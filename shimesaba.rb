class Shimesaba < Formula
  version '0.7.2'
  homepage 'https://github.com/mashiike/shimesaba'
  url "https://github.com/mashiike/shimesaba/releases/download/v0.7.2/shimesaba_0.7.2_darwin_amd64.tar.gz"
  sha256 '316f0ce8dc1fd1f1faf535b1f7ee5158f55588b55f4572bb694a157b101f0e64'
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

class Shimesaba < Formula
  version '0.2.1'
  homepage 'https://github.com/mashiike/shimesaba'
  url "https://github.com/mashiike/shimesaba/releases/download/v0.2.1/shimesaba_0.2.1_darwin_amd64.tar.gz"
  sha256 '19ee5beffefed3db572ea74a674dda014d8f7069dbd3e16997fdf76b0c1f3a40'
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

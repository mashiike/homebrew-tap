class Shimesaba < Formula
  version '1.2.1'
  homepage 'https://github.com/mashiike/shimesaba'
  if OS.mac?
    url "https://github.com/mashiike/shimesaba/releases/download/v1.2.1/shimesaba_1.2.1_darwin_amd64.tar.gz"
    sha256 '57c3c9e1bfdec363ebabeb8a3d41cdf14fa96f3f93239f3c22b4a467f0443e9b'
  end
  if OS.linux?
    url "https://github.com/mashiike/shimesaba/releases/download/v1.2.1/shimesaba_1.2.1_linux_amd64.tar.gz"
    sha256 '5193ee36df055035267f2c84aa57d1142dd0176ba2e6b613e71616a6b12d4cad'
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

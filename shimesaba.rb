class Shimesaba < Formula
  version '0.2.2'
  homepage 'https://github.com/mashiike/shimesaba'
  url "https://github.com/mashiike/shimesaba/releases/download/v0.2.2/shimesaba_0.2.2_darwin_amd64.tar.gz"
  sha256 'a2aa1cda1d3958e3c33f9eb798f3a3ba0e46c40a4e4960aca0a6d5fcde51a2e2'
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

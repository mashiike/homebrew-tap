class Shimesaba < Formula
  version '0.1.0'
  homepage 'https://github.com/mashiike/shimesaba'
  url "https://github.com/mashiike/shimesaba/releases/download/v0.1.0/shimesaba_0.1.0_darwin_amd64.tar.gz"
  sha256 'f0834663f5448e8b888702a054389f810e474d429d90dd5dbc52d03ef9640668'
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

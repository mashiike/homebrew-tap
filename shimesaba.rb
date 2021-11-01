class Shimesaba < Formula
  version '0.2.0'
  homepage 'https://github.com/mashiike/shimesaba'
  url "https://github.com/mashiike/shimesaba/releases/download/v0.2.0/shimesaba_0.2.0_darwin_amd64.tar.gz"
  sha256 '180383ebaefd65e60b8a48366bb5049afc65040c1020a47067c316357a6248a3'
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

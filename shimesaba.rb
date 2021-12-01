class Shimesaba < Formula
  version '0.5.0'
  homepage 'https://github.com/mashiike/shimesaba'
  url "https://github.com/mashiike/shimesaba/releases/download/v0.5.0/shimesaba_0.5.0_darwin_amd64.tar.gz"
  sha256 '85f07c31604f394c90b791709182d23a661c033842b415b574a1a2b2f2ccaebc'
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

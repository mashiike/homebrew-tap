class Shimesaba < Formula
  version '0.0.0'
  homepage 'https://github.com/mashiike/shimesaba'
  url "https://github.com/mashiike/shimesaba/releases/download/v0.0.0/shimesaba_0.0.0_darwin_amd64.tar.gz"
  sha256 '9889813293300adfae25ccd9361afc97362e437d15181241b304219983e3fcde'
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

class Shimesaba < Formula
  version '1.2.0'
  homepage 'https://github.com/mashiike/shimesaba'
  if OS.mac?
    url "https://github.com/mashiike/shimesaba/releases/download/v1.2.0/shimesaba_1.2.0_darwin_amd64.tar.gz"
    sha256 'be6942bb3fd153a1a017700c69fc20102ff929727a4ddd9091ad13b7cfcd5be2'
  end
  if OS.linux?
    url "https://github.com/mashiike/shimesaba/releases/download/v1.2.0/shimesaba_1.2.0_linux_amd64.tar.gz"
    sha256 '89d76d784c0146c1054aececeacf41349ba5b07bea656671baff5abacfe73faa'
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

class Shimesaba < Formula
  version '1.1.1'
  homepage 'https://github.com/mashiike/shimesaba'
  if OS.mac?
    url "https://github.com/mashiike/shimesaba/releases/download/v1.1.1/shimesaba_1.1.1_darwin_amd64.tar.gz"
    sha256 '9549f841bf52091d2c9771af5c246255815ab712d5f6ed87588671ca43466725'
  end
  if OS.linux?
    url "https://github.com/mashiike/shimesaba/releases/download/v1.1.1/shimesaba_1.1.1_linux_amd64.tar.gz"
    sha256 'f4072e1e6ea7ed3313f3acc082081afcaef68214a250b4c7ddcaefcedcd6cb01'
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

class Setddblock < Formula
  version '0.1.0'
  homepage 'https://github.com/mashiike/setddblock'
  if OS.mac?
    url "https://github.com/mashiike/setddblock/releases/download/v0.1.0/setddblock_0.1.0_darwin_amd64.tar.gz"
    sha256 '4eaa2ea33e083eb5e311360c709caca23da381f9619b53aafc8bccd676e58c69'
  end
  if OS.linux?
    url "https://github.com/mashiike/setddblock/releases/download/v0.1.0/setddblock_0.1.0_linux_amd64.tar.gz"
    sha256 '746bab3ab040e4460376e68b92e42d4aae686e13d240193fe7f7af4bcf83d40d'
  end
  head 'https://github.com/mashiike/setddblock.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'setddblock'
  end
end

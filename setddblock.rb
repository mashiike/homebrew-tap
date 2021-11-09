class Setddblock < Formula
  version '0.3.2'
  homepage 'https://github.com/mashiike/setddblock'
  if OS.mac?
    url "https://github.com/mashiike/setddblock/releases/download/v0.3.2/setddblock_0.3.2_darwin_amd64.tar.gz"
    sha256 '997565700f6e1f8e7fae622bfba983e769ea1e8b97c8e4872f52bf7b917585e4'
  end
  if OS.linux?
    url "https://github.com/mashiike/setddblock/releases/download/v0.3.2/setddblock_0.3.2_linux_amd64.tar.gz"
    sha256 '83e0da06af8d6a3db3f0d89520e5ec30d291d484d6c85b19168590b8beb10208'
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

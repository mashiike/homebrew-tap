class Gdnotify < Formula
  version '0.1.1'
  homepage 'https://github.com/mashiike/gdnotify'
  if OS.mac?
    url "https://github.com/mashiike/gdnotify/releases/download/v0.1.1/gdnotify_0.1.1_darwin_amd64.tar.gz"
    sha256 'aef0c047b23d6b89e9e601cbc2a77976b13d245428eb24678ea4c88fdd441e1e'
  end
  if OS.linux?
    url "https://github.com/mashiike/gdnotify/releases/download/v0.1.1/gdnotify_0.1.1_linux_amd64.tar.gz"
    sha256 '5b615332be47e5b48c3bc2f00f76b001c51c91b8177b484c05d899fc28743f7e'
  end
  head 'https://github.com/mashiike/gdnotify.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'gdnotify'
  end
end

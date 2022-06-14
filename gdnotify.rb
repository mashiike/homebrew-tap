class Gdnotify < Formula
  version '0.1.2'
  homepage 'https://github.com/mashiike/gdnotify'
  if OS.mac?
    url "https://github.com/mashiike/gdnotify/releases/download/v0.1.2/gdnotify_0.1.2_darwin_amd64.tar.gz"
    sha256 '43047f18fe8a5ea4ffc79765f43962b602ee672106f9c252560f263850eddf86'
  end
  if OS.linux?
    url "https://github.com/mashiike/gdnotify/releases/download/v0.1.2/gdnotify_0.1.2_linux_amd64.tar.gz"
    sha256 '7e407c98f3884c39d44f9cb68e4aa07ed36bb367670fc548d6a351a298b0dc34'
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

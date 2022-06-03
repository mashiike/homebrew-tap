class Awstee < Formula
  version '0.1.0'
  homepage 'https://github.com/mashiike/awstee'
  if OS.mac?
    url "https://github.com/mashiike/awstee/releases/download/v0.1.0/awstee_0.1.0_darwin_amd64.tar.gz"
    sha256 '109de23257ad8dd1e623581f67c2081f129f5cc4f1aeed8ddd99130725295099'
  end
  if OS.linux?
    url "https://github.com/mashiike/awstee/releases/download/v0.1.0/awstee_0.1.0_linux_amd64.tar.gz"
    sha256 '9105d2fbee3b1781d114465c12f8a38211971d6ec14833b162029b28baa7a777'
  end
  head 'https://github.com/mashiike/awstee.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'awstee'
  end
end

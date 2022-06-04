class Ichigeki < Formula
  version '0.3.0'
  homepage 'https://github.com/mashiike/ichigeki'
  if OS.mac?
    url "https://github.com/mashiike/ichigeki/releases/download/v0.3.0/ichigeki_0.3.0_darwin_amd64.tar.gz"
    sha256 '6e016a8dd94f55e9e0039d78057b82012a8c09769b2e1dff354edb2df0a8dba9'
  end
  if OS.linux?
    url "https://github.com/mashiike/ichigeki/releases/download/v0.3.0/ichigeki_0.3.0_linux_amd64.tar.gz"
    sha256 'c215ad4f9459dbe76db422254b20300bfd9a8467da0d038e7380dbb1265d1c78'
  end
  head 'https://github.com/mashiike/ichigeki.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'ichigeki'
  end
end

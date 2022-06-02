class Ichigeki < Formula
  version '0.1.0'
  homepage 'https://github.com/mashiike/ichigeki'
  if OS.mac?
    url "https://github.com/mashiike/ichigeki/releases/download/v0.1.0/ichigeki_0.1.0_darwin_amd64.tar.gz"
    sha256 '61649bb8c3afb160e0bc38ec32d415d2d586b9807e36f913b563a3beb2de0d07'
  end
  if OS.linux?
    url "https://github.com/mashiike/ichigeki/releases/download/v0.1.0/ichigeki_0.1.0_linux_amd64.tar.gz"
    sha256 'b5ec50e962e45bf5e0cee2cc34eacce4059c411a05ccba72a9ad51d77d5bd224'
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

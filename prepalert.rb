class Prepalert < Formula
  version '0.5.0'
  homepage 'https://github.com/mashiike/prepalert'
  if OS.mac?
    url "https://github.com/mashiike/prepalert/releases/download/v0.5.0/prepalert_0.5.0_darwin_amd64.tar.gz"
    sha256 '0b3ec63ebfdde1275112aef8ecf936a3b26e67c574634736483ca10362af6034'
  end
  if OS.linux?
    url "https://github.com/mashiike/prepalert/releases/download/v0.5.0/prepalert_0.5.0_linux_amd64.tar.gz"
    sha256 'fb08c3aeb44fab2bf1c1ac700e44e6995d029a19c00eb2b642bbc53584c09937'
  end
  head 'https://github.com/mashiike/prepalert.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'prepalert'
  end
end

class Stefunny < Formula
  version '0.2.0'
  homepage 'https://github.com/mashiike/stefunny'
  if OS.mac?
    url "https://github.com/mashiike/stefunny/releases/download/v0.2.0/stefunny_0.2.0_darwin_amd64.tar.gz"
    sha256 '98ce0720691ced8489093ba658b1927aef92861edfc74f613492386a5be8df61'
  end
  if OS.linux?
    url "https://github.com/mashiike/stefunny/releases/download/v0.2.0/stefunny_0.2.0_linux_amd64.tar.gz"
    sha256 'a8fb751dbd7d9781891466f1254a64c4ac0bdeba93059debcda28fd8cfc16b90'
  end
  head 'https://github.com/mashiike/stefunny.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'stefunny'
  end
end

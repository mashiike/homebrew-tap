class Prepalert < Formula
  version '0.7.0'
  homepage 'https://github.com/mashiike/prepalert'
  if OS.mac?
    url "https://github.com/mashiike/prepalert/releases/download/v0.7.0/prepalert_0.7.0_darwin_amd64.tar.gz"
    sha256 '5149c95d224d7ae748a5b9586c8998f43c89f2ecaf34410c13ba07257ebb6a4e'
  end
  if OS.linux?
    url "https://github.com/mashiike/prepalert/releases/download/v0.7.0/prepalert_0.7.0_linux_amd64.tar.gz"
    sha256 'b783d45eb146ba512504fa2a8e35b4ab09717db80eba404cbc01020f77214322'
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

class Prepalert < Formula
  version '0.3.0'
  homepage 'https://github.com/mashiike/prepalert'
  if OS.mac?
    url "https://github.com/mashiike/prepalert/releases/download/v0.3.0/prepalert_0.3.0_darwin_amd64.tar.gz"
    sha256 'c578f8289dd4d08feb1932f4aaf509d9b6b705b4318c8528ad9410475df41090'
  end
  if OS.linux?
    url "https://github.com/mashiike/prepalert/releases/download/v0.3.0/prepalert_0.3.0_linux_amd64.tar.gz"
    sha256 '30d44f3787e3486d80df2b03584afd0fb49004e29b1f6828b687fca1e2fb7bc9'
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

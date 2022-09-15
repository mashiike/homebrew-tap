class Prepalert < Formula
  version '0.5.1'
  homepage 'https://github.com/mashiike/prepalert'
  if OS.mac?
    url "https://github.com/mashiike/prepalert/releases/download/v0.5.1/prepalert_0.5.1_darwin_amd64.tar.gz"
    sha256 'b9aba13196f203b9fa844dd9912f37ac8ef5f8cf109ee06c3983a5f96e7e7689'
  end
  if OS.linux?
    url "https://github.com/mashiike/prepalert/releases/download/v0.5.1/prepalert_0.5.1_linux_amd64.tar.gz"
    sha256 '0e0842f763670b66c6b9288349e9166c68ac846111bad345f81b2f192ae34fbd'
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

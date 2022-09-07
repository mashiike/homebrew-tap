class Prepalert < Formula
  version '0.2.2'
  homepage 'https://github.com/mashiike/prepalert'
  if OS.mac?
    url "https://github.com/mashiike/prepalert/releases/download/v0.2.2/prepalert_0.2.2_darwin_amd64.tar.gz"
    sha256 'e2b176aa83f6aecb04774a72ea1fe2ab94cb0eedaef4783975de0756856d1d1e'
  end
  if OS.linux?
    url "https://github.com/mashiike/prepalert/releases/download/v0.2.2/prepalert_0.2.2_linux_amd64.tar.gz"
    sha256 '23f42af6b5b02615af06a59deb3136c7f142c96afdc543f78cb3e3f6da42fdde'
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

class Awstee < Formula
  version '0.3.0'
  homepage 'https://github.com/mashiike/awstee'
  if OS.mac?
    url "https://github.com/mashiike/awstee/releases/download/v0.3.0/awstee_0.3.0_darwin_amd64.tar.gz"
    sha256 '315dc989747d7e415561f2c2f3a18b67167937c53eb7c780f30d8754783c2c42'
  end
  if OS.linux?
    url "https://github.com/mashiike/awstee/releases/download/v0.3.0/awstee_0.3.0_linux_amd64.tar.gz"
    sha256 '06d2fc9829a968b5f00167079445cf638fd204528a7a1f235db862f7530768c3'
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

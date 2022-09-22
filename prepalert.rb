class Prepalert < Formula
  version '0.6.1'
  homepage 'https://github.com/mashiike/prepalert'
  if OS.mac?
    url "https://github.com/mashiike/prepalert/releases/download/v0.6.1/prepalert_0.6.1_darwin_amd64.tar.gz"
    sha256 '16d1fd370eaa455cf02f6745ce793518865b44a804be67cacd4a46cb0e8aa666'
  end
  if OS.linux?
    url "https://github.com/mashiike/prepalert/releases/download/v0.6.1/prepalert_0.6.1_linux_amd64.tar.gz"
    sha256 'fa72766038f4290dda13148de005f78fd141d97cd0dbfc5a7ead55cb192a2407'
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

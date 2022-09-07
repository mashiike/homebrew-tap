class Prepalert < Formula
  version '0.3.1'
  homepage 'https://github.com/mashiike/prepalert'
  if OS.mac?
    url "https://github.com/mashiike/prepalert/releases/download/v0.3.1/prepalert_0.3.1_darwin_amd64.tar.gz"
    sha256 '84df212812604d172882a91fe68b48c78f7b3ec4144007e0ea398fc01a616d35'
  end
  if OS.linux?
    url "https://github.com/mashiike/prepalert/releases/download/v0.3.1/prepalert_0.3.1_linux_amd64.tar.gz"
    sha256 '587d7ebcac638a6fa7641ad2433d19b2318080672e32b6f38093092db5b64eeb'
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

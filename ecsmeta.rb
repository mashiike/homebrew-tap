class Ecsmeta < Formula
  version '0.1.0'
  homepage 'https://github.com/mashiike/ecsmeta'
  url "https://github.com/mashiike/ecsmeta/releases/download/v0.1.0/ecsmeta_0.1.0_darwin_amd64.tar.gz"
  sha256 'd5df017f562f7b43021082daae0c2bf1ac4b249872fa22060e2d2ca0809f8b1c'
  head 'https://github.com/mashiike/ecsmeta.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'ecsmeta'
  end
end

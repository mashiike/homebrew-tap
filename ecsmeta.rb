class Ecsmeta < Formula
  version '0.1.0'
  homepage 'https://github.com/mashiike/ecsmeta'

  on_macos do
    url 'https://github.com/mashiike/ecsmeta/releases/download/v0.1.0/ecsmeta_0.1.0_darwin_amd64.tar.gz'
    sha256 'd5df017f562f7b43021082daae0c2bf1ac4b249872fa22060e2d2ca0809f8b1c'
  end

  on_linux do
    url 'https://github.com/mashiike/ecsmeta/releases/download/v0.1.0/ecsmeta_0.1.0_linux_amd64.tar.gz'
    sha256 '7b060075c1b26911631f9fad45cd3f2b214b204add8f57e3c0dd651751821b6b'
  end

  head do
    url 'https://github.com/mashiike/ecsmeta.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'ecsmeta'
  end
end

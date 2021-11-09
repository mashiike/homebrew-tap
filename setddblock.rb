class Setddblock < Formula
  version '0.3.1'
  homepage 'https://github.com/mashiike/setddblock'
  if OS.mac?
    url "https://github.com/mashiike/setddblock/releases/download/v0.3.1/setddblock_0.3.1_darwin_amd64.tar.gz"
    sha256 '9fa4e2907a6dc3a656b9203a72753f8987932f52fad292d2fe888697bb5dedcf'
  end
  if OS.linux?
    url "https://github.com/mashiike/setddblock/releases/download/v0.3.1/setddblock_0.3.1_linux_amd64.tar.gz"
    sha256 '46bed317d12fc0a0f603ed349f760c88af1cc99f24d1caf58ff88e965c0fdfbf'
  end
  head 'https://github.com/mashiike/setddblock.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'setddblock'
  end
end

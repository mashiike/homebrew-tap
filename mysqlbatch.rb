class Mysqlbatch < Formula
  desc 'simple mysql client for batch mode. this is one binary command with golang.'
  version '0.6.1'
  homepage 'https://github.com/mashiike/mysqlbatch'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/mysqlbatch/releases/download/v0.6.1/mysqlbatch_0.6.1_darwin_arm64.tar.gz'
      sha256 'eccad01094bef121edf9876295a4ce7782c954e42e4bc614218c40472ca66acc'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/mysqlbatch/releases/download/v0.6.1/mysqlbatch_0.6.1_darwin_amd64.tar.gz'
      sha256 '4804778f9d6aa8c9bc7770066168e9c50a09461567794a160849616c3e016d01'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/mysqlbatch/releases/download/v0.6.1/mysqlbatch_0.6.1_linux_arm64.tar.gz'
      sha256 '4823982d12baaa85fce4636ada9daf1e30d305c746dcff8ee9fb0448b248ca9b'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/mysqlbatch/releases/download/v0.6.1/mysqlbatch_0.6.1_linux_amd64.tar.gz'
      sha256 '88c1e1b15b3cce688eeda94de7a7372ed16cda8431a38a229b035555f330cee8'
    end
  end

  head do
    url 'https://github.com/mashiike/mysqlbatch.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'mysqlbatch'
  end
end

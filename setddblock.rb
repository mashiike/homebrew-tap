class Setddblock < Formula
  desc 'Distributed locking using Amazon DynamoDB'
  version '0.3.2'
  homepage 'https://github.com/mashiike/setddblock'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/setddblock/releases/download/v0.3.2/setddblock_0.3.2_darwin_arm64.tar.gz'
      sha256 '8c2bd7fe3c811ccb85dc14cdc013cf8d558bff352aa600a6e74a1de521ebb069'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/setddblock/releases/download/v0.3.2/setddblock_0.3.2_darwin_amd64.tar.gz'
      sha256 '997565700f6e1f8e7fae622bfba983e769ea1e8b97c8e4872f52bf7b917585e4'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/setddblock/releases/download/v0.3.2/setddblock_0.3.2_linux_arm64.tar.gz'
      sha256 '07db4313c3ae628072aef17b4d42507d05b94016c7af6413a02dc6df0dd46607'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/setddblock/releases/download/v0.3.2/setddblock_0.3.2_linux_amd64.tar.gz'
      sha256 '83e0da06af8d6a3db3f0d89520e5ec30d291d484d6c85b19168590b8beb10208'
    end
  end

  head do
    url 'https://github.com/mashiike/setddblock.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'setddblock'
  end
end

class Setddblock < Formula
  desc 'Distributed locking using Amazon DynamoDB'
  version '0.5.0'
  homepage 'https://github.com/mashiike/setddblock'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/setddblock/releases/download/v0.5.0/setddblock_0.5.0_darwin_arm64.tar.gz'
      sha256 'f460fcb849321e279a8a448ed43fb3034a0da7c6feacaa6696e29d19f4423940'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/setddblock/releases/download/v0.5.0/setddblock_0.5.0_darwin_amd64.tar.gz'
      sha256 '43e11305f8606af54bbeede6d6bd2348f68796b64dc7a390509fff7151682822'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/setddblock/releases/download/v0.5.0/setddblock_0.5.0_linux_arm64.tar.gz'
      sha256 '2a0b89695386a9bd6a7ced924cc13c64091026528d0c5e29a91e3b7a09f04b7f'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/setddblock/releases/download/v0.5.0/setddblock_0.5.0_linux_amd64.tar.gz'
      sha256 'efca0d960a92eed58b882dd573613ae0cecbc252c24af6ab2572660b85f8c146'
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

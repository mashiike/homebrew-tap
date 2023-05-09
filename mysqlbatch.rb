class Mysqlbatch < Formula
  desc 'simple mysql client for batch mode. this is one binary command with golang.'
  version '0.5.0'
  homepage 'https://github.com/mashiike/mysqlbatch'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/mysqlbatch/releases/download/v0.5.0/mysqlbatch_0.5.0_darwin_arm64.tar.gz'
      sha256 'c06b76822c7344ef29ed34347773a1bde93925fcfa94e1a1c91624f21e839a11'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/mysqlbatch/releases/download/v0.5.0/mysqlbatch_0.5.0_darwin_amd64.tar.gz'
      sha256 'ef58bfac00344b97127f9464b6f229a0820c44daef5313e146757441e9b0a799'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/mysqlbatch/releases/download/v0.5.0/mysqlbatch_0.5.0_linux_arm64.tar.gz'
      sha256 '0ebd4077866c0761b350f9c5bf20535e509c1a6475136b069685d888d8b80e55'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/mysqlbatch/releases/download/v0.5.0/mysqlbatch_0.5.0_linux_amd64.tar.gz'
      sha256 '85bd8da59d6d7d3db484d3f36566286f9b4e681898c785e93d4e8530895d991e'
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

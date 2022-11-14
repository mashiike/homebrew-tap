class KinesisDataCounter < Formula
  desc 'A tool for counting Kinesis Data Stream data with JSON'
  version '0.3.1'
  homepage 'https://github.com/mashiike/kinesis-data-counter'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/kinesis-data-counter/releases/download/v0.3.1/kinesis-data-counter_0.3.1_darwin_arm64.tar.gz'
      sha256 '7aca98840bc31dce268f8664fa5f775afd1f54c59142a8208fd4b53d0937b483'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/kinesis-data-counter/releases/download/v0.3.1/kinesis-data-counter_0.3.1_darwin_amd64.tar.gz'
      sha256 'e7c133d6f91e077aedb31a235861ad0c21160a8536eff98cf891649b7c13e760'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/kinesis-data-counter/releases/download/v0.3.1/kinesis-data-counter_0.3.1_linux_arm64.tar.gz'
      sha256 'f522c958b5b6bc722d9f4d6a6dfc028f9489e14951a81024bddce42a0a3f3be9'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/kinesis-data-counter/releases/download/v0.3.1/kinesis-data-counter_0.3.1_linux_amd64.tar.gz'
      sha256 '61c42e52cb13a30653af888572d84efea93f475fcd5926b75470e8e6f6325f5d'
    end
  end

  head do
    url 'https://github.com/mashiike/kinesis-data-counter.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'kinesis-data-counter'
  end
end

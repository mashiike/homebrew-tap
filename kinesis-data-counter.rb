class KinesisDataCounter < Formula
  version '0.1.0'
  homepage 'https://github.com/mashiike/kinesis-data-counter'
  if OS.mac?
    url "https://github.com/mashiike/kinesis-data-counter/releases/download/v0.1.0/kinesis-data-counter_0.1.0_darwin_amd64.tar.gz"
    sha256 '97601f30d6437c00ee4ab3c1e4814dac1617c2f0e0a91a30565ff2d7537a2ef0'
  end
  if OS.linux?
    url "https://github.com/mashiike/kinesis-data-counter/releases/download/v0.1.0/kinesis-data-counter_0.1.0_linux_amd64.tar.gz"
    sha256 'b0a2f6581327d77c68976c4fbaaabf5236d518192dfd35895edd962b8f47340f'
  end
  head 'https://github.com/mashiike/kinesis-data-counter.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'kinesis-data-counter'
  end
end

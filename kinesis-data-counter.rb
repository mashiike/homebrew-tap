class KinesisDataCounter < Formula
  version '0.2.0'
  homepage 'https://github.com/mashiike/kinesis-data-counter'
  if OS.mac?
    url "https://github.com/mashiike/kinesis-data-counter/releases/download/v0.2.0/kinesis-data-counter_0.2.0_darwin_amd64.tar.gz"
    sha256 '593853a9ee5fc722c2aedbe0ba420e007a98f8153bc0cc1519d480d33df90a4f'
  end
  if OS.linux?
    url "https://github.com/mashiike/kinesis-data-counter/releases/download/v0.2.0/kinesis-data-counter_0.2.0_linux_amd64.tar.gz"
    sha256 'd08ec5c4d2c2c66b39bd9a12e9b1681ee25e7a8818f45b960c4617e592cfbbc0'
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

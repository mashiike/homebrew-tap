class KinesisDataCounter < Formula
  version '0.1.4'
  homepage 'https://github.com/mashiike/kinesis-data-counter'
  if OS.mac?
    url "https://github.com/mashiike/kinesis-data-counter/releases/download/v0.1.4/kinesis-data-counter_0.1.4_darwin_amd64.tar.gz"
    sha256 '73fa9bc3836e08bd61f1ac34067a779f7693ff3bb534b569a29105203926f194'
  end
  if OS.linux?
    url "https://github.com/mashiike/kinesis-data-counter/releases/download/v0.1.4/kinesis-data-counter_0.1.4_linux_amd64.tar.gz"
    sha256 '9e9483619f22a0721532b2e80a238a970d57cbd34233b58283f7ae32615abcf6'
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

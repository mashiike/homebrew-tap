class Mysqlbatch < Formula
  desc 'simple mysql client for batch mode. this is one binary command with golang.'
  version '0.3.0'
  homepage 'https://github.com/mashiike/mysqlbatch'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/mysqlbatch/releases/download/v0.3.0/mysqlbatch_0.3.0_darwin_arm64.tar.gz'
      sha256 'edaa2f3434c9d0734c74932cad586a7d82f4b88528ef2f24302d26aeab21aa14'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/mysqlbatch/releases/download/v0.3.0/mysqlbatch_0.3.0_darwin_amd64.tar.gz'
      sha256 '170fc1862e42dd37fba1d8ea0713bdf58999bb7f69a735f588054defc5a011b1'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/mysqlbatch/releases/download/v0.3.0/mysqlbatch_0.3.0_linux_arm64.tar.gz'
      sha256 '9a621124424d426826b979a50a62695a64ad9b088c7757dc8c1af208ed7c652c'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/mysqlbatch/releases/download/v0.3.0/mysqlbatch_0.3.0_linux_amd64.tar.gz'
      sha256 '64690aaa68e9bcc3ce595430f915ff8da4c407bb5614325673230d6d9b2965fe'
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

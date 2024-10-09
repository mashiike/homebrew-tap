class Mysqlbatch < Formula
  desc 'simple mysql client for batch mode. this is one binary command with golang.'
  version '0.7.0'
  homepage 'https://github.com/mashiike/mysqlbatch'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/mysqlbatch/releases/download/v0.7.0/mysqlbatch_0.7.0_darwin_arm64.tar.gz'
      sha256 '64536f86be1093c3f60e92fc05343db71b8fa5f3ce632af5bfdfcc4925c0fd7d'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/mysqlbatch/releases/download/v0.7.0/mysqlbatch_0.7.0_darwin_amd64.tar.gz'
      sha256 '4a7a163204f80c1acd712947ab4cad4595fb1169aeefd7d1fc8bb4b3722e4d6f'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/mysqlbatch/releases/download/v0.7.0/mysqlbatch_0.7.0_linux_arm64.tar.gz'
      sha256 '2cb2f1b078b52377d22c8ab1bf94bf89418c07234c7a82f8d556d2e420217951'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/mysqlbatch/releases/download/v0.7.0/mysqlbatch_0.7.0_linux_amd64.tar.gz'
      sha256 '5e49bbb03a52fa58c1bbd48264af5ac3c0d13c059cf8d9fe53d442486a31935e'
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

class Actionspin < Formula
  desc 'Bulk replace GitHub Actions references from version tags to commit hashes for locked, reproducible workflows.'
  version '0.2.1'
  homepage 'https://github.com/mashiike/actionspin'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/actionspin/releases/download/v0.2.1/actionspin_0.2.1_darwin_arm64.tar.gz'
      sha256 '391411659b7ebf52cb92394701dd9ff00a28ec581a9447ab814235cd09e58d09'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/actionspin/releases/download/v0.2.1/actionspin_0.2.1_darwin_amd64.tar.gz'
      sha256 'ab047742cca0cbe2378643cf3453de21ff0e9385b5864b014b8d4ee365455cda'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/actionspin/releases/download/v0.2.1/actionspin_0.2.1_linux_arm64.tar.gz'
      sha256 '8fb80647f7c0dd79804cc24cd5b00f8b9f95bd38f1da63a837610d680d7e2477'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/actionspin/releases/download/v0.2.1/actionspin_0.2.1_linux_amd64.tar.gz'
      sha256 '7e49a6c8274b14a6e3c87c1f8e2fb33891dcad40033466e4c0985f11d641cd50'
    end
  end

  head do
    url 'https://github.com/mashiike/actionspin.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'actionspin'
  end
end

class Prepalert < Formula
  desc 'Toil reduction tool to prepare before responding to Mackerel alerts'
  version '0.11.0'
  homepage 'https://github.com/mashiike/prepalert'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/prepalert/releases/download/v0.11.0/prepalert_0.11.0_darwin_arm64.tar.gz'
      sha256 '67f70fc8b74e26f13445f600919058eeaaad5b189d4b5a7b3affc8f0045f171b'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/prepalert/releases/download/v0.11.0/prepalert_0.11.0_darwin_amd64.tar.gz'
      sha256 'fbc5bc07c8288d905cf002ffeb9c2c8d15b1aa1d38ed3f365953d8b49c628f7c'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/prepalert/releases/download/v0.11.0/prepalert_0.11.0_linux_arm64.tar.gz'
      sha256 '51f371e32d4553db97f846d8bfc390786985b80b6d409343bfbcf1a18dde65de'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/prepalert/releases/download/v0.11.0/prepalert_0.11.0_linux_amd64.tar.gz'
      sha256 '72b2c6a2ca393b526dc97396967c082b3a0308f1fe6ab9afd8cf45cae2658bf9'
    end
  end

  head do
    url 'https://github.com/mashiike/prepalert.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'prepalert'
  end
end

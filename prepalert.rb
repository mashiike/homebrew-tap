class Prepalert < Formula
  desc 'Toil reduction tool to prepare before responding to Mackerel alerts'
  version '0.10.0'
  homepage 'https://github.com/mashiike/prepalert'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/prepalert/releases/download/v0.10.0/prepalert_0.10.0_darwin_arm64.tar.gz'
      sha256 'ce0958b4b65bacca6cf7b10e9774155ee254e536939fde0a9554c29450257448'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/prepalert/releases/download/v0.10.0/prepalert_0.10.0_darwin_amd64.tar.gz'
      sha256 '23c6da3058810c0165489ac0288aeff866cb587b2f561af9d2e09449228ef969'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/prepalert/releases/download/v0.10.0/prepalert_0.10.0_linux_arm64.tar.gz'
      sha256 '6867bb3f205aba0b5928402119100b060648b7a05982c36df0d706374a341380'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/prepalert/releases/download/v0.10.0/prepalert_0.10.0_linux_amd64.tar.gz'
      sha256 '14873cde37a2910f83c40558365c345b3a91b3e539ea0e4a47a15e20c5aaaf83'
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

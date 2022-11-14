class Prepalert < Formula
  desc 'Toil reduction tool to prepare before responding to Mackerel alerts'
  version '0.7.0'
  homepage 'https://github.com/mashiike/prepalert'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/prepalert/releases/download/v0.7.0/prepalert_0.7.0_darwin_arm64.tar.gz'
      sha256 '4f03f144adb06528da7380428c413eab54a38084e05b149b4fadf0cf0214fd95'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/prepalert/releases/download/v0.7.0/prepalert_0.7.0_darwin_amd64.tar.gz'
      sha256 '5149c95d224d7ae748a5b9586c8998f43c89f2ecaf34410c13ba07257ebb6a4e'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/prepalert/releases/download/v0.7.0/prepalert_0.7.0_linux_arm64.tar.gz'
      sha256 '987be9e69bf6b5c3f2bfa86001d1c1abf26399b3ca6e54c10e8ca212121ef29c'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/prepalert/releases/download/v0.7.0/prepalert_0.7.0_linux_amd64.tar.gz'
      sha256 'b783d45eb146ba512504fa2a8e35b4ab09717db80eba404cbc01020f77214322'
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

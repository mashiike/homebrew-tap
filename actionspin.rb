class Actionspin < Formula
  desc 'Bulk replace GitHub Actions references from version tags to commit hashes for locked, reproducible workflows.'
  version '0.1.0'
  homepage 'https://github.com/mashiike/actionspin'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/actionspin/releases/download/v0.1.0/actionspin_0.1.0_darwin_arm64.tar.gz'
      sha256 '9e988083f3d8706ff61d2cfe82ecd1a8d1b1135335eeaac5f324a380b04b98c2'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/actionspin/releases/download/v0.1.0/actionspin_0.1.0_darwin_amd64.tar.gz'
      sha256 '34bd39dc069fa9ad452398e4465a8e193eb59d0ca4983365d3f9fc90408cba4d'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/actionspin/releases/download/v0.1.0/actionspin_0.1.0_linux_arm64.tar.gz'
      sha256 'fd2e7ae7b186edeb86f0297d4be8c411b9f7b3b413e7805d23b908a3507db3bc'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/actionspin/releases/download/v0.1.0/actionspin_0.1.0_linux_amd64.tar.gz'
      sha256 '9525d3f81c04068e466f4d334934d1e714ef1ed9a60f564fe05bf87e310e8506'
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

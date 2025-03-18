class Actionspin < Formula
  desc 'Bulk replace GitHub Actions references from version tags to commit hashes for locked, reproducible workflows.'
  version '0.1.1'
  homepage 'https://github.com/mashiike/actionspin'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/actionspin/releases/download/v0.1.1/actionspin_0.1.1_darwin_arm64.tar.gz'
      sha256 'ec325588fd52b67ca40361e7f7238c60e04ce895fd94753d61d0ce75545918b4'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/actionspin/releases/download/v0.1.1/actionspin_0.1.1_darwin_amd64.tar.gz'
      sha256 'ee87187fde11ab0afddf9d728658d4bd5013f17f3f2374164980a04303f8d72d'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/actionspin/releases/download/v0.1.1/actionspin_0.1.1_linux_arm64.tar.gz'
      sha256 '61311609107c6b3dd6083705d230b18f09796c0b32685de5bf646c7d6617cb1c'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/actionspin/releases/download/v0.1.1/actionspin_0.1.1_linux_amd64.tar.gz'
      sha256 'aa72d8ef0d2a63f2591e4b3c07c89869ed3fe21c5704573ea95f0a5c155c19f2'
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

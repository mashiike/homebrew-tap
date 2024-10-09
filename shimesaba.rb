class Shimesaba < Formula
  desc 'Mackerel SLI/SLO tools, Tools that run periodically (e.g., every 10 minutes)'
  version '1.4.3'
  homepage 'https://github.com/mashiike/shimesaba'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/shimesaba/releases/download/v1.4.3/shimesaba_1.4.3_darwin_arm64.tar.gz'
      sha256 '3e3076de6ba9ce2192629c007a03909455dddf36b44286949d31d653a2f49e8c'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/shimesaba/releases/download/v1.4.3/shimesaba_1.4.3_darwin_amd64.tar.gz'
      sha256 '1ee4d4d5e64c2122a191c639d00d4ac79245128fba4cfac125a02ce9054403f4'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/shimesaba/releases/download/v1.4.3/shimesaba_1.4.3_linux_arm64.tar.gz'
      sha256 'da535d025a9904d9492de6cff3794701d4fbc5deeff76c1ea057ad4cc4ae2c26'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/shimesaba/releases/download/v1.4.3/shimesaba_1.4.3_linux_amd64.tar.gz'
      sha256 '70caf8331d95d246e95ad48419cdaee3d98a775232802410d1bcfd76ea50c9dc'
    end
  end

  head do
    url 'https://github.com/mashiike/shimesaba.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'shimesaba'
  end
end

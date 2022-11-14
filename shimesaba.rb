class Shimesaba < Formula
  desc 'Mackerel SLI/SLO tools, Tools that run periodically (e.g., every 10 minutes)'
  version '1.2.1'
  homepage 'https://github.com/mashiike/shimesaba'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/shimesaba/releases/download/v1.2.1/shimesaba_1.2.1_darwin_arm64.tar.gz'
      sha256 '4ab7ad9e53267127c525b75eed7df26f515cb7f8a190f816c62f3e8b9f681bfa'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/shimesaba/releases/download/v1.2.1/shimesaba_1.2.1_darwin_amd64.tar.gz'
      sha256 '57c3c9e1bfdec363ebabeb8a3d41cdf14fa96f3f93239f3c22b4a467f0443e9b'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/shimesaba/releases/download/v1.2.1/shimesaba_1.2.1_linux_arm64.tar.gz'
      sha256 '54037ee784a3385ccdd7aa444db2631dfe7538aebaf10463d0c7cb7e29d0081c'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/shimesaba/releases/download/v1.2.1/shimesaba_1.2.1_linux_amd64.tar.gz'
      sha256 '5193ee36df055035267f2c84aa57d1142dd0176ba2e6b613e71616a6b12d4cad'
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

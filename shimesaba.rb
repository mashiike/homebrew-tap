class Shimesaba < Formula
  desc 'Mackerel SLI/SLO tools, Tools that run periodically (e.g., every 10 minutes)'
  version '1.4.0'
  homepage 'https://github.com/mashiike/shimesaba'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/shimesaba/releases/download/v1.4.0/shimesaba_1.4.0_darwin_arm64.tar.gz'
      sha256 'd7fe60cfa1a6979f0e5e22a8320238771e8d6aed8afccf0d236c75347357b8f0'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/shimesaba/releases/download/v1.4.0/shimesaba_1.4.0_darwin_amd64.tar.gz'
      sha256 '0f24f00e60f2429da7bf3bc14af16c36570aa43bd07d9105f4eb34887d43f398'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/shimesaba/releases/download/v1.4.0/shimesaba_1.4.0_linux_arm64.tar.gz'
      sha256 '35037943d73855016bfa2caa9a2e737645c4d342a1e447e5da37ceb22229026c'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/shimesaba/releases/download/v1.4.0/shimesaba_1.4.0_linux_amd64.tar.gz'
      sha256 'd8a6f449d3535adda7828a836c2c3cc7458e910dcdaad74f1005dae90f294cff'
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

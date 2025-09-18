class Shimesaba < Formula
  desc 'Mackerel SLI/SLO tools, Tools that run periodically (e.g., every 10 minutes)'
  version '1.4.4'
  homepage 'https://github.com/mashiike/shimesaba'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/shimesaba/releases/download/v1.4.4/shimesaba_1.4.4_darwin_arm64.tar.gz'
      sha256 '9db8bd1cd31b604817c7efae204b58732589fedaa04428cb92c95764faac8900'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/shimesaba/releases/download/v1.4.4/shimesaba_1.4.4_darwin_amd64.tar.gz'
      sha256 '9f6cec69cd607715e66259f4c2819037ee40522a33440cd7f48283b93b8d8e41'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/shimesaba/releases/download/v1.4.4/shimesaba_1.4.4_linux_arm64.tar.gz'
      sha256 '03a74ef0d875e9ba05f6a0bee9fc16e1babe09a90f1d1ed56c3e2d92d618478a'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/shimesaba/releases/download/v1.4.4/shimesaba_1.4.4_linux_amd64.tar.gz'
      sha256 '6bb79bf2a3a30a4b1bbccb946da83577c980847de7ff871931e724eb71900ac0'
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

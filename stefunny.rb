class Stefunny < Formula
  version '0.9.3'
  homepage 'https://github.com/mashiike/stefunny'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/stefunny/releases/download/v0.9.3/stefunny_0.9.3_darwin_arm64.tar.gz'
      sha256 '73b169b28cc53fd9c7dbe13b4e174b9aac69b011c98a217abde44dc3ff277726'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/stefunny/releases/download/v0.9.3/stefunny_0.9.3_darwin_amd64.tar.gz'
      sha256 '512f3a60a4899784a1e4fbcc03d9a3628a6d09d82c7735cb3949754c3476cb58'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/stefunny/releases/download/v0.9.3/stefunny_0.9.3_linux_arm64.tar.gz'
      sha256 'd1f95505cb36c6c05febce67e4a33791dea76c0dc9ebcdb7cdb1731f6da3867b'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/stefunny/releases/download/v0.9.3/stefunny_0.9.3_linux_amd64.tar.gz'
      sha256 '0f0845e10c0b281708f461133b80f7e258f7484ad1aeef00f06bc711448cd322'
    end
  end

  head do
    url 'https://github.com/mashiike/stefunny.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'stefunny'
  end
end

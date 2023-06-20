class Clipsight < Formula
  desc 'Tools to share some QuickSight dashboards outside'
  version '0.4.0'
  homepage 'https://github.com/mashiike/clipsight'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/clipsight/releases/download/v0.4.0/clipsight_0.4.0_darwin_arm64.tar.gz'
      sha256 'a2f12ddec5e1301654ae69ba862effb51a15a24d5d10b73352bb57e1237ad60e'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/clipsight/releases/download/v0.4.0/clipsight_0.4.0_darwin_amd64.tar.gz'
      sha256 '7e636a933211800b95a373cf3a6464d467f6708d6ab8122c5cb16c18fb260a6b'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/clipsight/releases/download/v0.4.0/clipsight_0.4.0_linux_arm64.tar.gz'
      sha256 '4bc95729d41b8166f346930564440c36db05548a2c6bc2ac080f2eb016667451'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/clipsight/releases/download/v0.4.0/clipsight_0.4.0_linux_amd64.tar.gz'
      sha256 '0fa7f55351a6dc6859d42207c374c83e77624c26b273e58a0a024fdba3cc42c4'
    end
  end

  head do
    url 'https://github.com/mashiike/clipsight.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'clipsight'
  end
end

class Clipsight < Formula
  desc 'Tools to share some QuickSight dashboards outside'
  version '0.2.4'
  homepage 'https://github.com/mashiike/clipsight'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/clipsight/releases/download/v0.2.4/clipsight_0.2.4_darwin_arm64.tar.gz'
      sha256 '356561db4036b0fbcefe15431724f876b6ce9ddd8c4b2b58f3a06bfac785ccef'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/clipsight/releases/download/v0.2.4/clipsight_0.2.4_darwin_amd64.tar.gz'
      sha256 '0de6e6700544d7d21b06bad9e18b2322d6873c291484188d0416a6e4e2b36bf7'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/clipsight/releases/download/v0.2.4/clipsight_0.2.4_linux_arm64.tar.gz'
      sha256 'f473cb78e952be49435de576d2b9c3222c443d6a7082873b0148cc642de881e8'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/clipsight/releases/download/v0.2.4/clipsight_0.2.4_linux_amd64.tar.gz'
      sha256 '29de9326d76d291db722d99d37340e29a5f6df4560733469502b226116d7c399'
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

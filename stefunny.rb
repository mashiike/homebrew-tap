class Stefunny < Formula
  version '0.9.2'
  homepage 'https://github.com/mashiike/stefunny'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/stefunny/releases/download/v0.9.2/stefunny_0.9.2_darwin_arm64.tar.gz'
      sha256 '4fb20a03bfca5ab3eb34ca77a4f1026c523ee85ef2207e4d2f7061d6f419f44e'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/stefunny/releases/download/v0.9.2/stefunny_0.9.2_darwin_amd64.tar.gz'
      sha256 '37a6976c5f0f84eb7a6592561268c7ce27058bf8c0ec96cbfe99e46177b86c55'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/stefunny/releases/download/v0.9.2/stefunny_0.9.2_linux_arm64.tar.gz'
      sha256 '0eff95e494ab601e36b204e7fb59d85d9ed0989558ab13796d398144ee8d786a'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/stefunny/releases/download/v0.9.2/stefunny_0.9.2_linux_amd64.tar.gz'
      sha256 '6e912b4c123273176ae560edd29390e0543d18950a41d7f4a4b7924f33ec891f'
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

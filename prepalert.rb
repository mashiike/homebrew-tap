class Prepalert < Formula
  desc 'Toil reduction tool to prepare before responding to Mackerel alerts'
  version '1.0.2'
  homepage 'https://github.com/mashiike/prepalert'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/prepalert/releases/download/v1.0.2/prepalert_1.0.2_darwin_arm64.tar.gz'
      sha256 'ac2360b99f504ef0cf14dbdc505afaf42101f9f99123e31f4a4285e04bd75e62'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/prepalert/releases/download/v1.0.2/prepalert_1.0.2_darwin_amd64.tar.gz'
      sha256 '9ca80d19d1c71f3d2b8424382face9f2c51b75563b2c409ba0fe3dfb5e0abd26'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/prepalert/releases/download/v1.0.2/prepalert_1.0.2_linux_arm64.tar.gz'
      sha256 '27da647c747bd77054106b9b83ab693e9c8f6438527133eec2962dc912e72a6f'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/prepalert/releases/download/v1.0.2/prepalert_1.0.2_linux_amd64.tar.gz'
      sha256 'ba53485342e0d427edd08fe6887a1283ab54ea374df0e851cae4c1ce434750ed'
    end
  end

  head do
    url 'https://github.com/mashiike/prepalert.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'prepalert'
  end
end

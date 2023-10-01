class Prepalert < Formula
  desc 'Toil reduction tool to prepare before responding to Mackerel alerts'
  version '1.0.0'
  homepage 'https://github.com/mashiike/prepalert'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/prepalert/releases/download/v1.0.0/prepalert_1.0.0_darwin_arm64.tar.gz'
      sha256 '979670e953d6ae8db62591dacbc8b623bc9c0a06102db6d0ff5ce962064275b4'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/prepalert/releases/download/v1.0.0/prepalert_1.0.0_darwin_amd64.tar.gz'
      sha256 '3f03986d862466bce845fb72caaa08be6856947bc32f0783dff50e8e1464f322'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/prepalert/releases/download/v1.0.0/prepalert_1.0.0_linux_arm64.tar.gz'
      sha256 '30e22e60c4ed3791980dad0838c809c8ac271fb7cc931a4b1e360398c0c4e4ce'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/prepalert/releases/download/v1.0.0/prepalert_1.0.0_linux_amd64.tar.gz'
      sha256 'b94860d109dbb0e36aad28159122be952af2f571d83f7a53b1157815bc9821c0'
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

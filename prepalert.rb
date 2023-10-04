class Prepalert < Formula
  desc 'Toil reduction tool to prepare before responding to Mackerel alerts'
  version '1.0.1'
  homepage 'https://github.com/mashiike/prepalert'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/prepalert/releases/download/v1.0.1/prepalert_1.0.1_darwin_arm64.tar.gz'
      sha256 '2bac63d5506d49a31413c5a34d855b0c3224b0e808e2480c3a42ec713bca38ae'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/prepalert/releases/download/v1.0.1/prepalert_1.0.1_darwin_amd64.tar.gz'
      sha256 '57e3d7558bed69070393cbd9d34440337ab89eb922259f5ab29f2f1acfe2ef59'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/prepalert/releases/download/v1.0.1/prepalert_1.0.1_linux_arm64.tar.gz'
      sha256 'a1fa1aaf635b746e50ca7fa43b29c9b28c7f1e4fd745e06f647c803dc6ea58a0'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/prepalert/releases/download/v1.0.1/prepalert_1.0.1_linux_amd64.tar.gz'
      sha256 '2b28fefdb35aefb035ca560840fb823c3f3c31abe129625a41f5dd0c267b61ec'
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

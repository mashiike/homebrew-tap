class Queryrunner < Formula
  version '0.3.1'
  homepage 'https://github.com/mashiike/queryrunner'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/queryrunner/releases/download/v0.3.1/queryrunner_0.3.1_darwin_arm64.tar.gz'
      sha256 '0a3700425011153dfff56d2cd415cdac0f9dc5316939638d181f3a3316fa7fce'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/queryrunner/releases/download/v0.3.1/queryrunner_0.3.1_darwin_amd64.tar.gz'
      sha256 '837b29a48720590b5d13eb0701ee798c7ad0d01796775332d8218020f6ae1c94'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/queryrunner/releases/download/v0.3.1/queryrunner_0.3.1_linux_arm64.tar.gz'
      sha256 '883fe075c484369631e82c653830401e8633cc174c93f19c5bd5451c5954a344'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/queryrunner/releases/download/v0.3.1/queryrunner_0.3.1_linux_amd64.tar.gz'
      sha256 'd2d37bbc640e49abcb01f800a9152c142600bbed7b2cb6f5d630f9e4625f4d46'
    end
  end

  head do
    url 'https://github.com/mashiike/queryrunner.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'queryrunner'
  end
end

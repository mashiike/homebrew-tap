class Queryrunner < Formula
  version '0.3.0'
  homepage 'https://github.com/mashiike/queryrunner'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/queryrunner/releases/download/v0.3.0/queryrunner_0.3.0_darwin_arm64.tar.gz'
      sha256 'fd8c34473d256a2b34ce05515fd53feea17e091e965486e52fe01841916e5a84'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/queryrunner/releases/download/v0.3.0/queryrunner_0.3.0_darwin_amd64.tar.gz'
      sha256 '50da6efda4f8e0465c96924404ab4cb9e94161f913e48d70b0938024ea70bc11'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/queryrunner/releases/download/v0.3.0/queryrunner_0.3.0_linux_arm64.tar.gz'
      sha256 'c028d560047053f3620ab3fc915646174dd8e1fdddd53f57f78716deb6e829b0'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/queryrunner/releases/download/v0.3.0/queryrunner_0.3.0_linux_amd64.tar.gz'
      sha256 '9e1adf7aea805787bda8b02ff8e79cf162e7faa99bbf395b19b6a618c76e47c6'
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

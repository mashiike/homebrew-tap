class Yaml2text < Formula
  desc ' YAML converter using golang template'
  version '0.1.1'
  homepage 'https://github.com/mashiike/yaml2text'

  on_macos do
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/yaml2text/releases/download/v0.1.1/yaml2text_v0.1.1_darwin_amd64.zip'
      sha256 'eb4e4fc6bb03f27fabab3ff70b5537298bff7ff3820c88cf86603e33be4c8c0e'
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/yaml2text/releases/download/v0.1.1/yaml2text_v0.1.1_linux_amd64.tar.gz'
      sha256 'a3f8a249e71450632329239531d3528ecb1ed1b9621e84a92dd8d675978febfd'
    end
  end

  head do
    url 'https://github.com/mashiike/yaml2text.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'yaml2text'
  end
end

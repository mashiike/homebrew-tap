class Yaml2text < Formula
  version '0.1.1'
  homepage 'https://github.com/mashiike/yaml2text'
  url "https://github.com/mashiike/yaml2text/releases/download/v0.1.1/yaml2text_v0.1.1_darwin_amd64.zip"
  sha256 'eb4e4fc6bb03f27fabab3ff70b5537298bff7ff3820c88cf86603e33be4c8c0e'
  head 'https://github.com/mashiike/yaml2text.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'yaml2text'
  end
end

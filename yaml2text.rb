class Yaml2text < Formula
  version '0.1.0'
  homepage 'https://github.com/mashiike/yaml2text'
  url "https://github.com/mashiike/yaml2text/releases/download/v0.1.0/yaml2text-v0.1.0-darwin-amd64"
  sha256 '7d80b8936c60af2fdd0ac4e686484460cfa31288e209a10ec512f644558ec9c2'
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

class Yaml2text < Formula
  version '0.1.0'
  homepage 'https://github.com/mashiike/yaml2text'
  url "https://github.com/mashiike/yaml2text/releases/download/v0.1.0/yaml2text-v0.1.0-darwin-amd64.zip"
  sha256 '24116a18621bfeb395b2c3193f5c6ec3d4da65d9c73da250dbc322806df1b1c0'
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

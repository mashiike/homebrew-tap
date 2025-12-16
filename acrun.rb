class Acrun < Formula
  desc 'acrun is a deployment tool for AWS Bedrock AgentCore Runtime.'
  version '0.6.1'
  homepage 'https://github.com/mashiike/acrun'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/acrun/releases/download/v0.6.1/acrun_v0.6.1_darwin_arm64.tar.gz'
      sha256 '522dfddb4f67b5e98d3a81157b416ac44cc4ff00474c281a06ac2bf4c91a5aed'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/acrun/releases/download/v0.6.1/acrun_v0.6.1_darwin_amd64.tar.gz'
      sha256 'aa027b4bbdbecd4065f70ee3659c27b15c98110c77357a0936355dcb9caead65'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/acrun/releases/download/v0.6.1/acrun_v0.6.1_linux_arm64.tar.gz'
      sha256 '1dde4e83c1a889ef2130a388bd6066f406a5a4edb4f5c0fb7d3def65ced5185b'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/acrun/releases/download/v0.6.1/acrun_v0.6.1_linux_amd64.tar.gz'
      sha256 '92f47db62660ccfe696bb9a4aa31fd34e299f55e89b064b191eace1678aacb0b'
    end
  end

  head do
    url 'https://github.com/mashiike/acrun.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'acrun'
  end
end

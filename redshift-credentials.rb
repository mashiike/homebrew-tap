class RedshiftCredentials < Formula
  desc 'a command line tool for Amazon Redshift temporary authorization with AWS IAM '
  version '0.2.0'
  homepage 'https://github.com/mashiike/redshift-credentials'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/redshift-credentials/releases/download/v0.2.0/redshift-credentials_0.2.0_darwin_arm64.tar.gz'
      sha256 '84b743a51b206d7b41a8db41107e949f64b3e98bcba09086dd448a91e73cc943'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/redshift-credentials/releases/download/v0.2.0/redshift-credentials_0.2.0_darwin_amd64.tar.gz'
      sha256 '4fbb53dbb747b2225b6d7fee4a6cc936d25d6f6bd798b81f2d9b0b8565e64d4e'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/redshift-credentials/releases/download/v0.2.0/redshift-credentials_0.2.0_linux_arm64.tar.gz'
      sha256 '3d1b9b4561786a0b564075589de2ee3e3c4eed6c7fb368145e2e9e9b5edf22a6'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/redshift-credentials/releases/download/v0.2.0/redshift-credentials_0.2.0_linux_amd64.tar.gz'
      sha256 'cc868444ec8042d08acb4f786205c089931d048c0128cf63480c9670dbb1302e'
    end
  end

  head do
    url 'https://github.com/mashiike/redshift-credentials.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'redshift-credentials'
  end
end

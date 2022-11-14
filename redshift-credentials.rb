class RedshiftCredentials < Formula
  desc 'a command line tool for Amazon Redshift temporary authorization with AWS IAM '
  version '0.3.0'
  homepage 'https://github.com/mashiike/redshift-credentials'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/redshift-credentials/releases/download/v0.3.0/redshift-credentials_0.3.0_darwin_arm64.tar.gz'
      sha256 '5497e3873f6a05157c2a3337452a0da56aa4668aec7c1422f2ac8dd4172e2eb6'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/redshift-credentials/releases/download/v0.3.0/redshift-credentials_0.3.0_darwin_amd64.tar.gz'
      sha256 '24f2b07600a2f0154ecd18daf5066f6143b2c5dff2f3397217e89c88a9814f55'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/redshift-credentials/releases/download/v0.3.0/redshift-credentials_0.3.0_linux_arm64.tar.gz'
      sha256 '2b9aa360a48e884be4183ce8e3ee5a4b67794a521cab41c1e4566881fbf61be3'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/redshift-credentials/releases/download/v0.3.0/redshift-credentials_0.3.0_linux_amd64.tar.gz'
      sha256 'ec156e21c4152a1f3cd5718b5a9cbc3390141da3ea85dd08e272c4ea634d7ea0'
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

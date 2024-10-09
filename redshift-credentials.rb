class RedshiftCredentials < Formula
  desc 'a command line tool for Amazon Redshift temporary authorization with AWS IAM '
  version '0.3.4'
  homepage 'https://github.com/mashiike/redshift-credentials'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/redshift-credentials/releases/download/v0.3.4/redshift-credentials_0.3.4_darwin_arm64.tar.gz'
      sha256 '3879e6a865304b2e336716868f6d8233e3258815294ca5a03f06c5730d1fac35'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/redshift-credentials/releases/download/v0.3.4/redshift-credentials_0.3.4_darwin_amd64.tar.gz'
      sha256 'bbf2a723bb16f9f6b901b053454d88f55776469756074cefa8a43e36dd934f00'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/redshift-credentials/releases/download/v0.3.4/redshift-credentials_0.3.4_linux_arm64.tar.gz'
      sha256 '59f2f3d827c55c05ded26ab1c4c1f05faf3aab1ca3052e630266983d4b63012c'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/redshift-credentials/releases/download/v0.3.4/redshift-credentials_0.3.4_linux_amd64.tar.gz'
      sha256 '0981f00394c26f2ec7cf403006108b96fd347b7759cc86e16cb33a806a835797'
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

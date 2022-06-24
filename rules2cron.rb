class Rules2cron < Formula
  version '0.1.0'
  homepage 'https://github.com/mashiike/rules2cron'
  if OS.mac?
    url "https://github.com/mashiike/rules2cron/releases/download/v0.1.0/rules2cron_0.1.0_darwin_amd64.tar.gz"
    sha256 '19792c1cb85e6fb7414a40941f0d0491dcc3109752baa7d9e05293940b3d1198'
  end
  if OS.linux?
    url "https://github.com/mashiike/rules2cron/releases/download/v0.1.0/rules2cron_0.1.0_linux_amd64.tar.gz"
    sha256 '3dd65d93bd497bb4e9bfbe63d63283fd6e56d4a2a4c1acef4625469ac9c03bf8'
  end
  head 'https://github.com/mashiike/rules2cron.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'rules2cron'
  end
end

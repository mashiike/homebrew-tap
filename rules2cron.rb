class Rules2cron < Formula
  desc ' cron-like notation converter for ScheduleExpression in EventBridge's Rule'
  version '0.1.0'
  homepage 'https://github.com/mashiike/rules2cron'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/rules2cron/releases/download/v0.1.0/rules2cron_0.1.0_darwin_arm64.tar.gz'
      sha256 '676eb60886ded54f4a6170409f3fdb45a6f6c0b124f367ca8b4371e2031c5740'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/rules2cron/releases/download/v0.1.0/rules2cron_0.1.0_darwin_amd64.tar.gz'
      sha256 '19792c1cb85e6fb7414a40941f0d0491dcc3109752baa7d9e05293940b3d1198'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/rules2cron/releases/download/v0.1.0/rules2cron_0.1.0_linux_arm64.tar.gz'
      sha256 '362f5aae526aa6c45ab9fcdc1c1d1c71e8998339a8d10c4cfc59350f1b8217dd'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/rules2cron/releases/download/v0.1.0/rules2cron_0.1.0_linux_amd64.tar.gz'
      sha256 '3dd65d93bd497bb4e9bfbe63d63283fd6e56d4a2a4c1acef4625469ac9c03bf8'
    end
  end

  head do
    url 'https://github.com/mashiike/rules2cron.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'rules2cron'
  end
end

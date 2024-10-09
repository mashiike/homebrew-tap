class TwitterStreamRuleManager < Formula
  desc 'manager for GET or POST /2/tweets/search/stream/rules'
  version '0.0.0'
  homepage 'https://github.com/mashiike/twitter-stream-rule-manager'

  on_macos do
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/twitter-stream-rule-manager/releases/download/v0.0.0/twitter-stream-rule-manager-v0.0.0-darwin-amd64.zip'
      sha256 '8cf1255671078298f662c1d13cb428e0488963968e0a6d73b285d27eed8c8751'
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/twitter-stream-rule-manager/releases/download/v0.0.0/twitter-stream-rule-manager-v0.0.0-linux-amd64.zip'
      sha256 '12118a6926dada29bd06c6c61cba842ca0932040de7f7c794c8aede801f4905e'
    end
  end

  head do
    url 'https://github.com/mashiike/twitter-stream-rule-manager.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'twitter-stream-rule-manager'
  end
end

class TwitterStreamClient < Formula
  desc 'client  for Twitter v2 API Filtered Stream  (GET  /2/tweets/search/stream)'
  version '0.0.6'
  homepage 'https://github.com/mashiike/twitter-stream-client'

  on_macos do
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/twitter-stream-client/releases/download/v0.0.6/twitter-stream-client-v0.0.6-darwin-amd64.zip'
      sha256 'c224d896aa271177ea7cf12bcb79d5d938ee2ba0da58978fb4731239b45a21a7'
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/twitter-stream-client/releases/download/v0.0.6/twitter-stream-client-v0.0.6-linux-amd64.zip'
      sha256 '5517ea41688871968210b4e8ef5bf3db6382f884b13f2cbb6ee64db0e25b31cb'
    end
  end

  head do
    url 'https://github.com/mashiike/twitter-stream-client.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'twitter-stream-client'
  end
end

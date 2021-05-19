class TwitterStreamClient < Formula
  version '0.0.1'
  homepage 'https://github.com/mashiike/twitter-stream-client'
  url "https://github.com/mashiike/twitter-stream-client/releases/download/v0.0.1/twitter-stream-client-v0.0.1-darwin-amd64"
  sha256 '56d68108d5f2507af73dc2cc192169fa7b3db64d14c979d8363bfe3625c1cdc1'
  head 'https://github.com/mashiike/twitter-stream-client.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'twitter-stream-client'
  end
end

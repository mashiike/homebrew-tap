class TwitterStreamClient < Formula
  version '0.0.6'
  homepage 'https://github.com/mashiike/twitter-stream-client'
  url "https://github.com/mashiike/twitter-stream-client/releases/download/v0.0.6/twitter-stream-client-v0.0.6-darwin-amd64.zip"
  sha256 'c224d896aa271177ea7cf12bcb79d5d938ee2ba0da58978fb4731239b45a21a7'
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

class TwitterStreamRuleManager < Formula
  version '0.0.0'
  homepage 'https://github.com/mashiike/twitter-stream-rule-manager'
  url "https://github.com/mashiike/twitter-stream-rule-manager/releases/download/v0.0.0/twitter-stream-rule-manager-v0.0.0-darwin-amd64"
  sha256 '6ce6a2afe0712b13289a90d54085ae94672b87abd9d66d7f64048e9a34d892d1'
  head 'https://github.com/mashiike/twitter-stream-rule-manager.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'twitter-stream-rule-manager'
  end
end

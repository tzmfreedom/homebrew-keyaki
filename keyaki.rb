class Keyaki < Formula
  desc "Keyakizaka46 Command Line Interface"
  homepage "https://github.com/tzmfreedom/keyaki"

  @@version = "0.1.0"
  version @@version

  if Hardware::CPU.is_64_bit?
    @@binname = 'keyaki-darwin-amd64'
    url "https://github.com/tzmfreedom/keyaki/releases/download/v#{@@version}/#{@@binname}"
    sha256 'c0890a340e4bf4720d8b505656ba4a993aebb2dc4db439f974e3adc3808846d1'
  else
    @@binname = 'keyaki-darwin-386'
    url "https://github.com/tzmfreedom/keyaki/releases/download/v#{@@version}/#{@@binname}"
    sha256 '24d823010cd5a702b93dd8c921a4af913b6db9ce2bc764ba48c8fcb3cf18ebd5'
  end

  def install
    mv @@binname, 'keyaki'
    bin.install 'keyaki'
  end

  test do
    system "false"
  end
end


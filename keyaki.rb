class Keyaki < Formula
  desc "Keyakizaka46 Command Line Interface"
  homepage "https://github.com/tzmfreedom/keyaki"

  @@version = "0.1.0"
  version @@version

  if Hardware::CPU.is_64_bit?
    @@binname = 'keyaki-darwin-amd64'
    url "https://github.com/tzmfreedom/keyaki/releases/download/v#{@@version}/#{@@binname}"
    sha256 'c43012aed234092d020fffa0ca3160bef08dd809bf006a6e7eb05ac84dccf50a'
  else
    @@binname = 'keyaki-darwin-386'
    url "https://github.com/tzmfreedom/keyaki/releases/download/v#{@@version}/#{@@binname}"
    sha256 'cd6c27fc7e2aced68ce79ffeaac1a13c7cd42db3ceebf8e351ef2296b84f5c1b'
  end

  def install
    mv @@binname, 'keyaki'
    bin.install 'keyaki'
  end

  test do
    system "false"
  end
end


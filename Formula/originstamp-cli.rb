# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class OriginstampCli < Formula
  desc "A CLI for the OriginStamp API"
  homepage "https://github.com/dennis-tra/originstamp-cli"
  url "https://github.com/dennis-tra/originstamp-cli/archive/v0.1.0.tar.gz"
  sha256 "578b3977556e0ffd998c0770d523d130c11b600a76111db44492f3ed59581633"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"stamp", "cmd/stamp/main.go"
  end

  test do
  	system "#{bin}/stamp", "--version"
  end
end

# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class OriginstampCli < Formula
  desc "Go client for the OriginStamp API"
  homepage "https://github.com/dennis-tra/originstamp-cli"
  url "https://github.com/dennis-tra/originstamp-cli/archive/v0.1.1.tar.gz"
  sha256 "50bf3785c5cd592f6935d73ee889025513b8bc7a6430b2a39fccbbdefa3c57ec"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"stamp", "cmd/stamp/main.go"
  end

  test do
  	system "#{bin}/stamp", "--version"
  end
end

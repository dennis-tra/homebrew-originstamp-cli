class OriginstampCli < Formula
  desc "Go client for the OriginStamp API"
  homepage "https://github.com/dennis-tra/originstamp-cli"
  url "https://github.com/dennis-tra/originstamp-cli/archive/v0.1.2.tar.gz"
  sha256 "da52306f7b3e1a393c64ccf8aec901d106485fbdcd5b7ccb6b4af6a6411c3402"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"stamp", "cmd/stamp/main.go"
  end

  test do
  	system "#{bin}/stamp", "--version"
  end
end

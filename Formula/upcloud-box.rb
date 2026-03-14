class UpcloudBox < Formula
  desc "Provision and deploy a secure Docker host on UpCloud"
  homepage "https://github.com/suruaku/upcloud-box"
  url "https://github.com/suruaku/upcloud-box/releases/download/v1.0.6/upcloud-box_v1.0.6_darwin_arm64.tar.gz"
  version "1.0.6"
  sha256 "39a15c0f7d6da5edd268b57a040271caf702cd06818e04bd26504b4ac7f066b2"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "upcloud-box"
    generate_completions_from_executable(bin/"upcloud-box", "completion")
  end

  test do
    output = shell_output("#{bin}/upcloud-box --version")
    assert_match "v1.0.6", output
  end
end

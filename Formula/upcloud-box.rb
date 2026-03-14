class UpcloudBox < Formula
  desc "Provision and deploy a secure Docker host on UpCloud"
  homepage "https://github.com/suruaku/upcloud-box"
  url "https://github.com/suruaku/upcloud-box/releases/download/v1.0.7/upcloud-box_v1.0.7_darwin_arm64.tar.gz"
  version "1.0.7"
  sha256 "3b68a867fc51a0107d070ab1896bb90aa212e63d21a37024045444318992efa9"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "upcloud-box"
    generate_completions_from_executable(bin/"upcloud-box", "completion")
  end

  test do
    output = shell_output("#{bin}/upcloud-box --version")
    assert_match "v1.0.7", output
  end
end

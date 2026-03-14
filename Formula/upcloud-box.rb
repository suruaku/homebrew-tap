class UpcloudBox < Formula
  desc "Provision and deploy a secure Docker host on UpCloud"
  homepage "https://github.com/suruaku/upcloud-box"
  url "https://github.com/suruaku/upcloud-box/releases/download/v1.0.4/upcloud-box_v1.0.4_darwin_arm64.tar.gz"
  version "1.0.4"
  sha256 "11f9c80543ea84c89d4d7832acf96d04c410024054c323b73c433b0e274ecb1d"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "upcloud-box"
    generate_completions_from_executable(bin/"upcloud-box", "completion")
  end

  test do
    output = shell_output("#{bin}/upcloud-box --version")
    assert_match "v1.0.4", output
  end
end

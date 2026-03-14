class UpcloudBox < Formula
  desc "Provision and deploy a secure Docker host on UpCloud"
  homepage "https://github.com/suruaku/upcloud-box"
  url "https://github.com/suruaku/upcloud-box/releases/download/v1.0.3/upcloud-box_v1.0.3_darwin_arm64.tar.gz"
  version "1.0.3"
  sha256 "999397d3ac29a1f008ff0afe69c87a972a19d5998d543eb66b1a0897fe87e26e"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "upcloud-box"
    generate_completions_from_executable(bin/"upcloud-box", "completion")
  end

  test do
    output = shell_output("#{bin}/upcloud-box --version")
    assert_match "v1.0.3", output
  end
end

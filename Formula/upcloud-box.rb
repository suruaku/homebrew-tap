class UpcloudBox < Formula
  desc "Provision and deploy a secure Docker host on UpCloud"
  homepage "https://github.com/suruaku/upcloud-box"
  url "https://github.com/suruaku/upcloud-box/releases/download/v1.0.1/upcloud-box_v1.0.1_darwin_arm64.tar.gz"
  version "1.0.1"
  sha256 "7c5a759946e9afaf0c1965ce76d12c91e7566fe0841f5f5ebcf5a2ceaa581b10"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "upcloud-box"
    generate_completions_from_executable(bin/"upcloud-box", "completion")
  end

  test do
    output = shell_output("#{bin}/upcloud-box --version")
    assert_match "v1.0.1", output
  end
end

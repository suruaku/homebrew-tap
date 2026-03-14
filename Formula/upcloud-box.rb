class UpcloudBox < Formula
  desc "Provision and deploy a secure Docker host on UpCloud"
  homepage "https://github.com/suruaku/upcloud-box"
  url "https://github.com/suruaku/upcloud-box/releases/download/v1.0.8/upcloud-box_v1.0.8_darwin_arm64.tar.gz"
  version "1.0.8"
  sha256 "48ea4fbc21fc9e988a1e161f9b4714824ac905ef39b1a42a9a93a64080925289"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "upcloud-box"
    generate_completions_from_executable(bin/"upcloud-box", "completion")
  end

  test do
    output = shell_output("#{bin}/upcloud-box --version")
    assert_match "v1.0.8", output
  end
end

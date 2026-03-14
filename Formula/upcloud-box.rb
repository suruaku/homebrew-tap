class UpcloudBox < Formula
  desc "Provision and deploy a secure Docker host on UpCloud"
  homepage "https://github.com/suruaku/upcloud-box"
  url "https://github.com/suruaku/upcloud-box/releases/download/v1.0.2/upcloud-box_v1.0.2_darwin_arm64.tar.gz"
  version "1.0.2"
  sha256 "52db45a174c65e96313156e4bd3273e5e2ca18d43f35e11e5f6d2598aa3d5698"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "upcloud-box"
    generate_completions_from_executable(bin/"upcloud-box", "completion")
  end

  test do
    output = shell_output("#{bin}/upcloud-box --version")
    assert_match "v1.0.2", output
  end
end

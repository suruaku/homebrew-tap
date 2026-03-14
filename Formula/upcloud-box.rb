class UpcloudBox < Formula
  desc "Provision and deploy a secure Docker host on UpCloud"
  homepage "https://github.com/suruaku/upcloud-box"
  url "https://github.com/suruaku/upcloud-box/releases/download/v1.0.5/upcloud-box_v1.0.5_darwin_arm64.tar.gz"
  version "1.0.5"
  sha256 "c780c4d823195d94aced3207c5a690a122cf559ad6c73fcff3583bddc51362f6"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "upcloud-box"
    generate_completions_from_executable(bin/"upcloud-box", "completion")
  end

  test do
    output = shell_output("#{bin}/upcloud-box --version")
    assert_match "v1.0.5", output
  end
end

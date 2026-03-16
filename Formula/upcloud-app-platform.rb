class UpcloudAppPlatform < Formula
  desc "Deploy and operate apps on UpCloud PaaS"
  homepage "https://github.com/suruaku/upcloud-app-platform"
  url "https://github.com/suruaku/upcloud-app-platform/releases/download/v2.0.4/upcloud-app-platform_v2.0.4_darwin_arm64.tar.gz"
  version "2.0.4"
  sha256 "bcb39a8c64b9c1f4a8f30a459aa635f4c001b6e4ad970f1e1c2a0fc169d6de8b"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "upcloud-app-platform"
    generate_completions_from_executable(bin/"upcloud-app-platform", "completion")
  end

  test do
    output = shell_output("#{bin}/upcloud-app-platform --version")
    assert_match "v2.0.4", output
  end
end

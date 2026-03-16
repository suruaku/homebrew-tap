class UpcloudAppPlatform < Formula
  desc "Deploy and operate apps on UpCloud PaaS"
  homepage "https://github.com/suruaku/upcloud-app-platform"
  url "https://github.com/suruaku/upcloud-app-platform/releases/download/v1.0.9/upcloud-box_v1.0.9_darwin_arm64.tar.gz"
  version "1.0.9"
  sha256 "5556698c0f149c94890409fa2ecd4dea7ae8184c390e281a3f202675a2b6a762"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "upcloud-box" => "upcloud-app-platform"
    generate_completions_from_executable(bin/"upcloud-app-platform", "completion")
  end

  test do
    output = shell_output("#{bin}/upcloud-app-platform --version")
    assert_match "v1.0.9", output
  end
end

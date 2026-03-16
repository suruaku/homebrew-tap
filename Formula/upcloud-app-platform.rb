class UpcloudAppPlatform < Formula
  desc "Deploy and operate apps on UpCloud PaaS"
  homepage "https://github.com/suruaku/upcloud-app-platform"
  url "https://github.com/suruaku/upcloud-app-platform/releases/download/v2.0.0/upcloud-app-platform_v2.0.0_darwin_arm64.tar.gz"
  version "2.0.0"
  sha256 "b5d235cfeb4dd9f4165ce4f5bff421f7fab69c8e7d55d8ea130526872bd2035b"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "upcloud-box" => "upcloud-app-platform"
    generate_completions_from_executable(bin/"upcloud-app-platform", "completion")
  end

  test do
    output = shell_output("#{bin}/upcloud-app-platform --version")
    assert_match "v2.0.0", output
  end
end

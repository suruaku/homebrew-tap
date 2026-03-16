class UpcloudAppPlatform < Formula
  desc "Deploy and operate apps on UpCloud PaaS"
  homepage "https://github.com/suruaku/upcloud-app-platform"
  url "https://github.com/suruaku/upcloud-app-platform/releases/download/v2.0.2/upcloud-app-platform_v2.0.2_darwin_arm64.tar.gz"
  version "2.0.2"
  sha256 "9c02ba97c47ce8ddd50bc331d951c0791af6c5236577c2d1605eae4fc3032629"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "upcloud-app-platform"
    generate_completions_from_executable(bin/"upcloud-app-platform", "completion")
  end

  test do
    output = shell_output("#{bin}/upcloud-app-platform --version")
    assert_match "v2.0.2", output
  end
end

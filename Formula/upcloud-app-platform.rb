class UpcloudAppPlatform < Formula
  desc "Deploy and operate apps on UpCloud PaaS"
  homepage "https://github.com/suruaku/upcloud-app-platform"
  url "https://github.com/suruaku/upcloud-app-platform/releases/download/v2.0.1/upcloud-app-platform_v2.0.1_darwin_arm64.tar.gz"
  version "2.0.1"
  sha256 "2f3ffeb2f9add819283fa496867ee4ab3ceff0d392c6a3ce2ba578f030cf71c1"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "upcloud-app-platform"
    generate_completions_from_executable(bin/"upcloud-app-platform", "completion")
  end

  test do
    output = shell_output("#{bin}/upcloud-app-platform --version")
    assert_match "v2.0.1", output
  end
end

class Ofsht < Formula
  desc "Command-line tool for managing Git worktrees with automation features"
  homepage "https://github.com/wadackel/ofsht"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/wadackel/ofsht/releases/download/v0.4.1/ofsht-aarch64-apple-darwin.tar.gz"
      sha256 "4afd8152e1715044e920f634ba8a3c7d42260c37223e0d67ff610d5197d9eaf8"
    end

    on_intel do
      url "https://github.com/wadackel/ofsht/releases/download/v0.4.1/ofsht-x86_64-apple-darwin.tar.gz"
      sha256 "2d580c9cd3b06c35d07bf7ac0ea8153122a03480cd0eff9f3151559fd4c9df05"
    end
  end

  def install
    bin.install "ofsht"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ofsht --version")
  end
end

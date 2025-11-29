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
      url "https://github.com/wadackel/ofsht/releases/download/v0.1.11/ofsht-aarch64-apple-darwin.tar.gz"
      sha256 "f11caf92b7f1457ab5a065f245cd294e8598e617cd341f81914e28b56e64dfdd"
    end

    on_intel do
      url "https://github.com/wadackel/ofsht/releases/download/v0.1.11/ofsht-x86_64-apple-darwin.tar.gz"
      sha256 "e7f92166786a6d702c4820fe1318ef7429fbee6c6dda3d679e45a2f53bac8702"
    end
  end

  def install
    bin.install "ofsht"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ofsht --version")
  end
end

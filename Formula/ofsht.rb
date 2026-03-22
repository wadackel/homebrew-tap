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
      url "https://github.com/wadackel/ofsht/releases/download/v0.6.0/ofsht-aarch64-apple-darwin.tar.gz"
      sha256 "cfe43ef99ab49dc771fc502555eb8d1da56e86944cf499ecc0056277127b3a2b"
    end

    on_intel do
      url "https://github.com/wadackel/ofsht/releases/download/v0.6.0/ofsht-x86_64-apple-darwin.tar.gz"
      sha256 "ca55f7e863e6d336a5b8a67686b0fa49eac4f878d0822aed13483ba92a332b4b"
    end
  end

  def install
    bin.install "ofsht"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ofsht --version")
  end
end

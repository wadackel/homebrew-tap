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
      url "https://github.com/wadackel/ofsht/releases/download/v0.3.0/ofsht-aarch64-apple-darwin.tar.gz"
      sha256 "06537940c8e6486622ac9789a8a64f65af25c0d4f958482f0c9cabccd06a39bb"
    end

    on_intel do
      url "https://github.com/wadackel/ofsht/releases/download/v0.3.0/ofsht-x86_64-apple-darwin.tar.gz"
      sha256 "375465c6b11661d84834afeb5ad90e8055df74b4986877a93aa2569146e2b2e5"
    end
  end

  def install
    bin.install "ofsht"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ofsht --version")
  end
end

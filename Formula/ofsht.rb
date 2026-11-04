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
      url "https://github.com/wadackel/ofsht/releases/download/v0.8.1/ofsht-aarch64-apple-darwin.tar.gz"
      sha256 "ebbd452dc91f927a0950824c7202aa87b27f367a6899e447a269f22ed5d320b6"
    end

    on_intel do
      url "https://github.com/wadackel/ofsht/releases/download/v0.8.1/ofsht-x86_64-apple-darwin.tar.gz"
      sha256 "c3694f925c1cfdf5570e5453194fac02ba7079f804f35b871e5f0f4bcd274e3d"
    end
  end

  def install
    bin.install "ofsht"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ofsht --version")
  end
end

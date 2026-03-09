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
      url "https://github.com/wadackel/ofsht/releases/download/v0.4.0/ofsht-aarch64-apple-darwin.tar.gz"
      sha256 "43c59ae3a56d0b5f4148de8389224abd4ab3ee0ada92bcdd8c55f235e09bec9b"
    end

    on_intel do
      url "https://github.com/wadackel/ofsht/releases/download/v0.4.0/ofsht-x86_64-apple-darwin.tar.gz"
      sha256 "24f6b98279b0c2713000010e7b255e4730891ae04cb24b4562633ae17a7fa2a8"
    end
  end

  def install
    bin.install "ofsht"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ofsht --version")
  end
end

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
      url "https://github.com/wadackel/ofsht/releases/download/v0.1.10/ofsht-aarch64-apple-darwin.tar.gz"
      sha256 "7b639ebb886330e09c4edc1d96bc90d224c6db4bbcbe12fa0177070862198742"
    end

    on_intel do
      url "https://github.com/wadackel/ofsht/releases/download/v0.1.10/ofsht-x86_64-apple-darwin.tar.gz"
      sha256 "9aca0859a49549e77e60617b6c31f9659ad1059dd76617ebc115da5552446c58"
    end
  end

  def install
    bin.install "ofsht"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ofsht --version")
  end
end

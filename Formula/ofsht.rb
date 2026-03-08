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
      url "https://github.com/wadackel/ofsht/releases/download/v0.3.1/ofsht-aarch64-apple-darwin.tar.gz"
      sha256 "6a980d096b61e27ffb33470467e6b9e396e5831ca3ca55a8cf12e6545f5a80f8"
    end

    on_intel do
      url "https://github.com/wadackel/ofsht/releases/download/v0.3.1/ofsht-x86_64-apple-darwin.tar.gz"
      sha256 "40aa653cc81ab7019bebe7e84baa3decbe800795468a764c6ee779be46c0f14b"
    end
  end

  def install
    bin.install "ofsht"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ofsht --version")
  end
end

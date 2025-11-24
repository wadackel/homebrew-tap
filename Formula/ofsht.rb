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
      url "https://github.com/wadackel/ofsht/releases/download/v0.1.9/ofsht-aarch64-apple-darwin.tar.gz"
      sha256 "88ff5f6f904362a51f2d266d8c7dfb3cb48ebebc4af7606544a3c64fe7d04470"
    end

    on_intel do
      url "https://github.com/wadackel/ofsht/releases/download/v0.1.9/ofsht-x86_64-apple-darwin.tar.gz"
      sha256 "c48bbe74f0ea1a9fe3fce6fc7433f630cb1ad8161cd8b00fd8727bcb29b5b08d"
    end
  end

  def install
    bin.install "ofsht"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ofsht --version")
  end
end

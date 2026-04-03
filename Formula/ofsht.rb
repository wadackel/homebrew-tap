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
      url "https://github.com/wadackel/ofsht/releases/download/v0.6.1/ofsht-aarch64-apple-darwin.tar.gz"
      sha256 "3e5b902dd4dc139318e048a51ba8416ced9729ddb8229eb3850870f6d670068b"
    end

    on_intel do
      url "https://github.com/wadackel/ofsht/releases/download/v0.6.1/ofsht-x86_64-apple-darwin.tar.gz"
      sha256 "7d34ef93aafd573489a33c9b9ac1ae086052c1e2da7913b90e35209591d27e50"
    end
  end

  def install
    bin.install "ofsht"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ofsht --version")
  end
end

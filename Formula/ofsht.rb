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
      url "https://github.com/wadackel/ofsht/releases/download/v0.1.5/ofsht-aarch64-apple-darwin.tar.gz"
      sha256 "50e88b286ac123f951adae55635f5114d1934b0e1a7e71bc6544c13b93a91005"
    end

    on_intel do
      url "https://github.com/wadackel/ofsht/releases/download/v0.1.5/ofsht-x86_64-apple-darwin.tar.gz"
      sha256 "979a1fea2428c7b4fe3d96340cef6c9261792a93e2c0ab381343dd262f4f78a6"
    end
  end

  def install
    bin.install "ofsht"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ofsht --version")
  end
end

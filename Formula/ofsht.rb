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
      url "https://github.com/wadackel/ofsht/releases/download/v0.2.1/ofsht-aarch64-apple-darwin.tar.gz"
      sha256 "a978c5120c90095ecf35a24ba841e749a7602aa9ebfde771d2876420b76895ce"
    end

    on_intel do
      url "https://github.com/wadackel/ofsht/releases/download/v0.2.1/ofsht-x86_64-apple-darwin.tar.gz"
      sha256 "0a64efff4e5501df0bec6d5ba9a64a07760d28dc86ab44d0aa7c5d725ed8cd78"
    end
  end

  def install
    bin.install "ofsht"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ofsht --version")
  end
end

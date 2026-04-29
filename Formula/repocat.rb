class Repocat < Formula
  desc "GitHub repository hardening CLI driven by a declarative .repo.yml baseline"
  homepage "https://github.com/Battle-Creek-LLC/repocat"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Battle-Creek-LLC/repocat/releases/download/v#{version}/repocat-aarch64-apple-darwin.tar.gz"
      sha256 "c2fcbea1d407ffc39d358c640b8af82f6b8cbf00ff20b4a1229ed89ecf531958"
    end

    on_intel do
      url "https://github.com/Battle-Creek-LLC/repocat/releases/download/v#{version}/repocat-x86_64-apple-darwin.tar.gz"
      sha256 "e11d406c23d353b1dc99114b8f23dc4f4131815e11456bf3934616749852df17"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Battle-Creek-LLC/repocat/releases/download/v#{version}/repocat-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7f90632f28d50bde32a5ea92729c4f39e46bfcdec2d95028874db2a626e03e64"
    end

    on_intel do
      url "https://github.com/Battle-Creek-LLC/repocat/releases/download/v#{version}/repocat-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e51dbff1bdde2bf89a1a26f595cf5d316e6018d7abf0a0e1489e98db0db2f146"
    end
  end

  def install
    bin.install "repocat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/repocat version")
  end
end

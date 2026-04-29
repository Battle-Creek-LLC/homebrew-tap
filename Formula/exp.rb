class Exp < Formula
  desc "CLI experiment tracker for agent runs, prompt testing, and simulations"
  homepage "https://github.com/Battle-Creek-LLC/exp"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Battle-Creek-LLC/exp/releases/download/v#{version}/exp-aarch64-apple-darwin.tar.gz"
      sha256 "c41668cab7dbed3e7ba5ec981c0d9186bf97d8824abc985a273833b9ee5b8f9b"
    end

    on_intel do
      url "https://github.com/Battle-Creek-LLC/exp/releases/download/v#{version}/exp-x86_64-apple-darwin.tar.gz"
      sha256 "dcda1e012b33eb64106c5f7484eeb6a3c45afeaab3357e6c92ed510494c5728d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Battle-Creek-LLC/exp/releases/download/v#{version}/exp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f49adf4b790885629e1b97fa9e0c2552c87d38f2e4bf00235d34ebfb33cbaab9"
    end

    on_intel do
      url "https://github.com/Battle-Creek-LLC/exp/releases/download/v#{version}/exp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0a0e4204f6ef5673e31daf05690da0e67dcbd53e8115a3dc537e13cb15ea5db6"
    end
  end

  def install
    bin.install "exp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/exp --version")
  end
end

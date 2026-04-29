class Ddog < Formula
  desc "Datadog CLI for humans and AI agents — readable at a TTY, NDJSON when piped"
  homepage "https://github.com/Battle-Creek-LLC/ddog"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Battle-Creek-LLC/ddog/releases/download/v#{version}/ddog-aarch64-apple-darwin.tar.gz"
      sha256 "a5837ed863d6942ea7cfa28bb865ba35b6ebf4c6ce00f08310fd396260503ed5"
    end

    on_intel do
      url "https://github.com/Battle-Creek-LLC/ddog/releases/download/v#{version}/ddog-x86_64-apple-darwin.tar.gz"
      sha256 "912fb688550c54849de078599d02293794d2d6e5fc9aec35e8b1223f8c559d61"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Battle-Creek-LLC/ddog/releases/download/v#{version}/ddog-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "892f7a943eb2a40a8a2cd534ceeffc00cbc7fa9128182bb09f34682a7589b7b6"
    end

    on_intel do
      url "https://github.com/Battle-Creek-LLC/ddog/releases/download/v#{version}/ddog-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2430005b0f9499e96f71c681e0954a3bb5362854c2987148558313115dc85393"
    end
  end

  def install
    bin.install "ddog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ddog --version")
  end
end

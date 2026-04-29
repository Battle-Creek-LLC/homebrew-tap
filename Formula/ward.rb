class Ward < Formula
  desc "Claude Code hook CLI — PII guard, leak detection, event logging"
  homepage "https://github.com/Battle-Creek-LLC/ward"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Battle-Creek-LLC/ward/releases/download/v#{version}/ward-aarch64-apple-darwin.tar.gz"
      sha256 "baeae936f4fc5be5b24fd405b7bc6adb507ff8c446b3ed07bdac56191efea21c"
    end

    on_intel do
      url "https://github.com/Battle-Creek-LLC/ward/releases/download/v#{version}/ward-x86_64-apple-darwin.tar.gz"
      sha256 "51ccee226bf3e3619e256fc5364eaaba85667e884796d134d2b4c8f02bb93432"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Battle-Creek-LLC/ward/releases/download/v#{version}/ward-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f4399ca42eee415c0c514cabab77f8060e950dfad40e8f757f1da97862abaa66"
    end

    on_intel do
      url "https://github.com/Battle-Creek-LLC/ward/releases/download/v#{version}/ward-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "576a2eb917a992b0272e048212163ea7c67ff6d6647e726727225552ead69270"
    end
  end

  def install
    bin.install "ward"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ward --version")
  end
end

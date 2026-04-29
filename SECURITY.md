# Security Policy

## Reporting a Vulnerability

Please report security vulnerabilities privately via GitHub's
[private vulnerability reporting](https://docs.github.com/en/code-security/security-advisories/guidance-on-reporting-and-writing-information-about-vulnerabilities/privately-reporting-a-security-vulnerability)
feature on this repository's **Security** tab.

We aim to acknowledge reports within 5 business days and provide an
initial assessment within 10 business days. Please do not file public
issues for security-sensitive reports.

## Scope

This repository is a Homebrew tap — a thin metadata layer that points
Homebrew at upstream release artifacts. Vulnerabilities in the
distributed software belong in the upstream project's tracker:

- `moot` → https://github.com/Battle-Creek-LLC/moot/security

Issues that are in scope for this tap:

- Tampered or incorrect `sha256` checksums in a formula.
- Formula pointing at an unintended URL.
- Repository configuration that would let an attacker introduce one of
  the above.

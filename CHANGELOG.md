# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.1.0] - 2025-03-09

### Added
- Initial release of ID Calendar TUI
- Full calendar view with Indonesian public holidays
- Vim-like navigation (h/l for months, j/k for years)
- Arrow key navigation support
- Jump to today with 'g'
- Color-coded holidays:
  - National holidays (red)
  - Religious holidays (magenta)
  - Cultural holidays (cyan)
- Holiday types displayed: National, Islamic, Hindu, Chinese, Christian
- Terminal UI with centered layout
- Windows compatibility support
- Docker support for containerized usage
- RubyGems distribution
- GitHub Container Registry (GHCR) distribution
- Automated release workflow via GitHub Actions

### Technical
- Removed unused gems (tty-reader, tty-box)
- Clean dependency list: pastel, tty-cursor only
- Support for Ruby 2.6+

[0.1.0]: https://github.com/adiprnm/id-calendar-tui/releases/tag/v0.1.0
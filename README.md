# Indonesia Calendar TUI

A terminal-based calendar application for Indonesian public holidays with vim-like navigation.

## Features

- Full calendar view with Indonesian public holidays
- Vim-like navigation (h/j/k/l)
- Navigate months with arrow keys, < > or , .
- Jump to today with `g`
- View yearly holiday list with `y`
- Toggle help with `?`
- Color-coded holidays (National, Religious, Cultural)

## Installation

```bash
cd indonesia-cal-tui
bundle install
```

## Usage

```bash
bundle exec ruby bin/calendar
```

## Navigation

| Key | Action |
|-----|--------|
| h, < | Previous month |
| l, > | Next month |
| j | Move selection down |
| k | Move selection up |
| w | Next month (alternative) |
| b | Previous month (alternative) |
| g | Go to today |
| y | View yearly holidays |
| ? | Toggle help |
| q | Quit |

## Holidays Included

- National Holidays (Hari Besar Nasional)
- Islamic Holidays (Hari Raya Keagamaan)
- Hindu Holidays (Hari Raya Hindu)
- Chinese New Year & Cap Go Meh (Hari Raya Imlek)
- Christian Holidays (Hari Raya Kristen)

## Requirements

- Ruby 2.6+
- pastel gem
- tty-cursor gem

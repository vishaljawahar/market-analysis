# India Market Daily Skill

A shareable Codex skill for generating a daily Indian stock market briefing from the most recent completed NSE/BSE trading session.

If you want a simple non-technical walkthrough, see [user-guide.md](./user-guide.md).

## What it does

- finds the last actual trading day before today
- handles weekends and market holidays correctly
- prioritizes official market data sources
- summarizes the market setup for the day
- suggests 3 to 5 stock ideas
- can produce a trade sheet with entry, stop-loss, and targets

## Project Structure

```text
.
├── README.md
├── user-guide.md
├── scripts
│   └── install.sh
└── skills
    └── india-market-daily
        ├── SKILL.md
        └── agents
            └── openai.yaml
```

## Trigger

Use the skill explicitly with:

```text
$india-market-daily
```

That is the shortest reliable command-style trigger. In supported Codex UIs, the skill metadata can also surface a default prompt.

## Install

Copy the skill into your Codex skills directory:

```bash
./scripts/install.sh
```

By default this installs to:

```text
$CODEX_HOME/skills/india-market-daily
```

If `CODEX_HOME` is not set, the script falls back to:

```text
~/.codex/skills/india-market-daily
```

## Usage Examples

```text
$india-market-daily
```

```text
$india-market-daily with trade sheet
```

```text
$india-market-daily for a low-risk setup only
```

## Scheduling

Yes, this can be scheduled every weekday morning through a Codex automation. A typical setup is weekday runs before market open in the user's local timezone, for example 8:45 AM IST.

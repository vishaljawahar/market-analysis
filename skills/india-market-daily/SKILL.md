---
name: india-market-daily
description: Use when the user wants a daily Indian stock market briefing or stock recommendations based on the most recent completed NSE or BSE trading session, including weekends, holidays, prior-close data, source links, and optional trade levels.
---

# India Market Daily

Produce a concise, source-backed Indian market briefing using the most recent completed trading session before the user's current day.

## Goal

Create a daily note that:

- identifies the last actual NSE or BSE trading day
- summarizes the close with the key numbers
- explains the setup for the current trading day
- recommends 3 to 5 actionable stock ideas
- includes the data and links used

## Workflow

1. Determine the user's current date and timezone.
2. Identify the most recent completed Indian cash-market trading session before today.
3. Verify whether the immediately previous calendar day was a market holiday, weekend, or closure.
4. Gather official market-close data first, then fill any gaps with reputable market publications.
5. Synthesize a directional view for the current day.
6. Provide stock ideas with explicit rationale, risks, and levels when requested.

## Source Priority

Prefer sources in this order:

1. Official exchange and market infrastructure sources
- NSE India
- BSE India
- NSE archives, circulars, and holiday calendars
- NSDL or official institutional flow pages

2. High-quality secondary market sources for same-day interpretation
- Moneycontrol
- Economic Times
- Business Standard
- ICICIdirect
- broker or market-wrap pages with date-specific data

If two sources disagree, prefer the official source for raw data and say so.

## Minimum Data To Collect

Try to collect as many of these as possible for the latest completed session:

- Nifty 50 close, point change, and percent change
- Sensex close, point change, and percent change
- Bank Nifty or major sector index moves
- India VIX move
- Nifty futures premium or discount if available
- market breadth or sector leadership
- FII or FPI and DII cash flow
- rupee move and any major macro driver if relevant
- notable gainers, losers, or leadership themes
- GIFT Nifty or other overnight indicator if discussing today's setup

## Analysis Rules

- Always use the last completed trading day, not simply "yesterday".
- State the exact date explicitly.
- Mention when the gap is due to a weekend or market holiday.
- Distinguish facts from inference.
- Avoid overclaiming certainty; frame recommendations as tactical ideas.
- Prefer liquid, widely traded names unless the user asks for small caps.
- Do not give generic picks without tying them to sector strength, relative strength, flows, volatility, or macro context.

## Recommendation Framework

Use this structure unless the user asks for something different.

### Market Setup

- one short paragraph on the index-level picture
- one short paragraph on risk tone, breadth, and flows

### Top Ideas

List 3 to 5 stocks. For each, include:

- stock name
- bias: buy on dip, buy on strength, avoid, or watch
- 1 to 2 sentence rationale tied to the data

If the user asks for trading levels, also include:

- entry range
- stop-loss
- target 1
- target 2

## Output Requirements

Always include:

- the exact prior trading date analyzed
- a compact "data analyzed" section with the main numbers
- a "sources used" section with clickable links

When useful, also include:

- a short "what would invalidate this view" note
- a warning if volatility is elevated

## Default Output Template

### Date Used

`[last trading date]`

### Data Analyzed

- Nifty 50: ...
- Sensex: ...
- Bank Nifty or sector leaders: ...
- India VIX: ...
- FII or DII flows: ...
- GIFT Nifty or overnight cue: ...

### Read On The Day

One short paragraph separating hard data from inference.

### Stock Recommendations

- `Name` - `Bias`: brief rationale
- `Name` - `Bias`: brief rationale
- `Name` - `Bias`: brief rationale

### Sources Used

- [Source name](https://example.com)
- [Source name](https://example.com)

## When The User Wants A Trade Sheet

Return a table with:

- Stock
- Bias
- Entry Range
- Stop-Loss
- Target 1
- Target 2
- Setup Logic

Base levels on nearby support and resistance, recent momentum, and the day-type implied by overnight cues. If live intraday prices are unavailable, clearly label the levels as tactical estimates derived from the prior close and setup.

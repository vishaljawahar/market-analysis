# User Guide

This guide explains how to use the India Market Daily skill in simple steps.

## What this skill does

The skill prepares a daily Indian stock market note using the latest completed NSE or BSE trading session. It can:

- find the last actual trading day
- handle weekends and market holidays
- summarize the market close
- suggest stock ideas for the day
- optionally give entry, stop-loss, and target levels

## Before you start

You need:

- Codex installed and working
- this project downloaded to your computer

If someone shared this project with you through GitHub, first download or clone it to your machine.

## Step 1: Open the project folder

Open the folder where this project is stored.

You should see files like:

- `README.md`
- `user-guide.md`
- `scripts`
- `skills`

## Step 2: Install the skill

Open a terminal in this project folder and run:

```bash
./scripts/install.sh
```

What this does:

- copies the skill into your Codex skills folder
- makes it available for use in Codex

If the installation works, you should see a message showing where the skill was installed.

## Step 3: Run the skill

Open Codex and type:

```text
$india-market-daily
```

That is the shortest way to run the skill.

## Step 4: Ask for a more specific output

You can also add a few words after the trigger.

Examples:

```text
$india-market-daily with trade sheet
```

```text
$india-market-daily for low-risk ideas only
```

```text
$india-market-daily with entry, stop-loss, and target levels
```

## What the output includes

The response usually contains:

- the exact trading date used for analysis
- market-close data such as Nifty, Sensex, VIX, flows, and sector strength
- a short market view for the day
- 3 to 5 stock ideas
- source links

If you ask for a trade sheet, it can also include:

- entry range
- stop-loss
- target 1
- target 2

## How to use it every morning automatically

You do not have to type the command every day.

This skill can be scheduled with a Codex automation to run every weekday morning before the market opens.

A typical schedule is:

- Monday to Friday
- 8:45 AM
- your local timezone

If you want, you can ask Codex:

```text
Create a weekday morning automation for $india-market-daily.
```

## Troubleshooting

### The install command does not work

Check that you are inside the project folder before running:

```bash
./scripts/install.sh
```

### Codex does not recognize the skill

Try:

1. restart Codex
2. run the install command again
3. type the trigger exactly as:

```text
$india-market-daily
```

### I want to share this with someone else

Share the GitHub repository link and ask them to:

1. download the project
2. run `./scripts/install.sh`
3. type `$india-market-daily` in Codex

## Quick Start

If you only want the shortest possible version:

1. Download this project
2. Run `./scripts/install.sh`
3. Open Codex
4. Type `$india-market-daily`

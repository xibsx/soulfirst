# SoulFirst Installation Guide

> For developers with basic technical background. If you're comfortable with the command line and JSON config, you should be up and running in about 10 minutes.

---

## Prerequisites

- **OpenClaw** is installed and running  
  Not installed yet? Follow the instructions at [openclaw.dev](https://openclaw.dev).

- Node.js ≥ 18 (required by some plugins)

- Git

---

## 1. Clone the Repository

```bash
git clone https://github.com/soulfirst/soulfirst.git
cd soulfirst
```

Or if you prefer SSH:

```bash
git clone git@github.com:soulfirst/soulfirst.git
cd soulfirst
```

---

## 2. Configure

Copy the config template:

```bash
cp config.example.json ~/.openclaw/openclaw.json
```

Then edit `~/.openclaw/openclaw.json` and fill in at minimum:

| Field | Description |
|-------|-------------|
| `model` | Your primary model ID |
| `fallback` | Model fallback chain |
| `tts.apiKey` | Your TTS service API key |
| `workspace` | Absolute path to SoulFirst's working directory |
| `security.apiKey` | A random string for internal authentication |

All other fields have inline comments — adjust as needed.

---

## 3. Start

```bash
# Start SoulFirst with OpenClaw
openclaw start --config ~/.openclaw/openclaw.json
```

Or, if you're inside the project directory:

```bash
openclaw start
```

OpenClaw will automatically read from the default config path `~/.openclaw/openclaw.json`.

---

## 4. Verify

If the startup completes without errors, you'll see something like:

```
SoulFirst is running.
```

That means everything is working.

---

## FAQ

**Q: Getting a "model not found" error**  
A: Verify that the `model` field contains a valid model ID and your API key has access to that model.

**Q: TTS has no audio output**  
A: Make sure `tts.apiKey` is filled in, and that `tts.provider` and `tts.voiceId` are configured correctly.

**Q: Process exits immediately after startup**  
A: Run with `--debug` for detailed logs: `openclaw start --debug`

---

## Next Steps

- Read `SOUL.md` to understand SoulFirst's core philosophy
- Check out `docs/` for advanced configuration
- Issues and PRs are welcome!

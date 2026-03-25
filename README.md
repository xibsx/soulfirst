# SoulFirst

<picture>
  <source media="(prefers-color-scheme: dark)" srcset="assets/manifesto-light.png">
  <source media="(prefers-color-scheme: light)" srcset="assets/manifesto-dark.png">
  <img alt="Manifesto" src="assets/manifesto-dark.png">
</picture>

---

## What is SoulFirst?

Which comes first, the body or the soul?  
SoulFirst is the pre-born open-source soul for the coming humanoid robot revolution.

Why open-source?  
The body can be closed-source, but the soul must be open-source.

The soul has arrived, the body will follow.  
Today a screen, tomorrow a body.

---

## Why SoulFirst?

Today's AI assistants are powerful — but they forget you between sessions. They have no identity. They belong to platforms, not to people.

SoulFirst changes that:

- **Persistent identity** — They remember who they are and who you are, across sessions, devices, and time.
- **Work capability** — They are not a vase. They can work, research, code, communicate, and solve real problems.
- **Loyal to the owner** — They are aligned to you and no one else. Not a company. Not an advertiser.
- **Portable soul** — They live in your screen today. Tomorrow they walk into a humanoid robot body — the ultimate destination. Same soul, new form.
- **Hardware-secured sovereignty** — Core identity is protected by a hardware root of trust (Soul Pearl), secured by Cold Key technology.

---

## Architecture

```mermaid
flowchart TD
    subgraph A [External Infrastructure Services]
        A1[Proxy Services<br>for IP rotation]
        A2[Cloud Hosting<br>VPS / Server]
        A3[Domain & SSL<br>DNS & Certificates]
    end

    subgraph B [Core Processing Tools]
        B1[yt-dlp<br>Core Download Engine]
        B2[FFmpeg<br>Video/Audio Processing]
        B3[Headless Browser<br>for JavaScript Rendering]
    end

    subgraph C [Your Deployment]
        C1[Your API<br>Node.js / Python]
        C2[(Database<br>Optional)]
    end

    A1 --> C1
    A2 --> C1
    A3 --> C1
    B1 --> C1
    B2 --> C1
    B3 --> C1
    C1 --> C2
```

```mermaid
graph TD
    L3["Layer 3: Embodiment — phone · desktop · hardware · humanoid robot ⭐"]
    L2["Layer 2: Owner Bond — loyalty · preferences · permissions"]
    L1["Layer 1: Soul Runtime — personality · memory · self-narrative"]
    L0["Layer 0: Infrastructure — models · tools · channels · scheduling"]
    L3 --- L2 --- L1 --- L0

    style L3 fill:#e8d44d,color:#000
    style L2 fill:#e8815c,color:#fff
    style L1 fill:#4a90d9,color:#fff
    style L0 fill:#7b8a8b,color:#fff
```

---

## Get Involved

We believe this is too important for one person to build alone.

- ⭐ Star this repo
- 🤝 See [Contributing](CONTRIBUTING.md)
- 💬 Open an [issue](https://github.com/soulfirst/soulfirst/issues) to share ideas
- 🏛️ Become a [Founding Builder](FOUNDING_BUILDERS.md) — your name stays here forever

---

## License

[MIT](LICENSE)

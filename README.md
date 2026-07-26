# 旅の始まり — Happy Birthday Ryan 🌴

A vaporwave + citypop birthday site for Ryan (07.31.2026), made by Sissi.

## What it is

A single-page experience with three scenes:

1. **Intro** — vaporwave title card: `旅の始まり by Sissi · 07.31.2026` (glitch pixel text, ~2.5s)
2. **Boot log** — retro CRT terminal that types itself out (`Sissi-made v07.31 … ▶ LET'S DRIVE ◀`)
3. **The drive** — a California synthwave sunset: striped sun, neon city skyline, framing palms, a perspective grid road, and a car (plate **RW0731**) driving toward the light — with a Windows-95 window that types out the birthday letter in gold.

Music (`assets/oriental.mp3` — Sunset Rollercoaster, *Oriental*) starts on load; if the browser blocks autoplay, a "tap for sound" prompt appears, and any click/keypress starts it.

## Run it

Just open `index.html` in a browser, or serve the folder:

```bash
python3 -m http.server 8099
```

Then visit http://localhost:8099

## Files

- `index.html` — the whole site (HTML + CSS + JS, self-contained)
- `assets/oriental.mp3` — background music

# TikTok View Bot Pro

Professional-grade TikTok engagement bot for Android.  
Multi-threaded request engine • Proxy rotation • Anti-detection headers • Real-time stats.

**MIT Licensed • Open Source • GitHub Actions build pipeline**

---

## Features

- **Dual connection mode** — Direct (fast) or Proxy (distributed IPs)
- **8+ concurrent worker threads** (configurable 1–64)
- **Randomized User-Agents** (TikTok Android + Chrome mobile)
- **Header randomization** (Accept-Language, Referer, Cache-Control, device IDs)
- **Configurable delay** (SeekBar 200–2500 ms)
- **Proxy support** — `host:port`, `user:pass@host:port`, `user:pass:host:port`
- **Live stats** — sent / target, req/s, fails, progress bar
- **Material Design dark UI**
- **WakeLock** — keeps engine alive while screen is off
- **Minimal permissions** — INTERNET + NETWORK_STATE + WAKE_LOCK only

---

## Quick Start (GitHub Actions — no local Android SDK)

1. Create a new **public** GitHub repository
2. Push this project to `main`
3. Go to **Actions** tab → wait for workflow (green check)
4. Download artifacts:
   - `TikTokBot-Debug-APK`
   - `TikTokBot-Release-APK`
5. Transfer APK to Android device → Install → Open

```bash
git clone https://github.com/YOUR_USERNAME/tiktok-view-bot-pro.git
cd tiktok-view-bot-pro
git remote set-url origin https://github.com/YOUR_USERNAME/tiktok-view-bot-pro.git
git add .
git commit -m "Initial commit"
git push -u origin main
```

---

## How to Use

1. Paste a full TikTok video URL (`tiktok.com/.../video/...`)
2. Set target view count
3. Set thread count (default 8)
4. Adjust delay slider
5. Optional: enable Proxy Mode and paste proxies (one per line)
6. Tap **START ENGINE**
7. Watch live counter + progress bar
8. Tap **STOP** anytime

---

## Project Structure

```
tiktok_view_bot_pro/
├── app/
│   ├── build.gradle
│   ├── proguard-rules.pro
│   └── src/main/
│       ├── AndroidManifest.xml
│       ├── java/com/spiritdev/tiktokbot/
│       │   └── MainActivity.java          # Full engine
│       └── res/
│           ├── layout/activity_main.xml
│           ├── values/{colors,strings,themes}.xml
│           ├── drawable/ic_launcher.xml
│           └── xml/network_security_config.xml
├── .github/workflows/build.yml            # Automated APK build
├── build.gradle
├── settings.gradle
├── gradle.properties
└── README.md
```

---

## Customize Endpoint

In `MainActivity.java` → `sendView()`:

```java
// --- Configure live endpoint here ---
String targetUrl = "https://httpbin.org/post";
// ------------------------------------
```

Replace with your view service endpoint.  
Current default hits httpbin for safe testing (always succeeds).

---

## Requirements

- Android 8.0+ (API 24)
- Internet connection
- Valid TikTok video URL

---

## License

MIT — free to use, modify, distribute.  
No warranty. Use responsibly and in accordance with platform terms and local law.

---

Built clean. Delivered sharp.

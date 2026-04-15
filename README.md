
# 🧰 Tools and Stuff for Messing with Android

A small toolkit built for learning, experimenting, and understanding how devices behave on a network using Termux.

---

## 🔧 Main Tool

### scout.sh

Interactive scanner using nmap.

Features:
- Multiple scan types
- Auto-saving results
- Simple menu interface

---

## 🧪 Extras

Located in `/extras`

- `rtsp_scan.sh` → check RTSP services (cameras/streams)
- `view_scans.sh` → display saved scan logs
- `edit_scout.sh` → quickly edit main script

---

## 📁 Structure

```text
.
├── scout.sh
├── DOCTRINE.md
├── extras/
└── scans/
## Requirements
nmap
Install in Termux:

In Termux, install nmap:

    pkg update
    pkg install nmap

Clone the repo:

 git clone https://github.com/N-scout/tools-and-stuff-for-messing-with-android.git

Go into the repo folder:

    cd tools-and-stuff-for-messing-with-android

Make scripts executable:

    chmod +x scout.sh
    chmod +x extras/*.sh

Run the main tool:

    ./scout.sh
## Disclaimer

This toolkit is for:
- Learning
- Personal lab use
- Devices you own or have permission to test

Do not use on networks without permission.

## Credits

Built by Nate & GPT

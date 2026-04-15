#!/data/data/com.termux/files/usr/bin/bash

echo "=== Nate's Scanner ==="
echo ""

echo "[0] IP discovery scan"
echo "[1] Quick scan"
echo "[2] Service scan"
echo "[3] Aggressive scan"
echo "[4] Android-focused scan"
read -p "Choice: " choice

read -p "Target: " target

if [ -z "$target" ]; then
    echo "No target entered."
    read -p "Press Enter to exit..."
    exit
fi

mkdir -p "$HOME/scans"
outfile="$HOME/scans/scan_$(date +%s).txt"

echo ""
echo "[+] Running scan..."

case $choice in
    0)
        nmap -sn "$target" | tee "$outfile"
        ;;
    1)
        nmap -Pn "$target" | tee "$outfile"
        ;;
    2)
        nmap -Pn -sT -sV "$target" | tee "$outfile"
        ;;
    3)
        nmap -A "$target" | tee "$outfile"
        ;;
    4)
        nmap -Pn -sT -sV -p 22,5555,8022,8080,8000,3000,5000,8443,4711,27042,27043 "$target" | tee "$outfile"
        ;;
    *)
        echo "Invalid option."
        ;;
esac

echo ""
echo "[+] Scan saved to: $outfile"
read -p "Press Enter to exit..."

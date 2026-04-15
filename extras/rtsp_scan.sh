#!/data/data/com.termux/files/usr/bin/bash

read -p "Target IP: " target

nmap -p 7000 -sV --script=rtsp-methods -d "$target"

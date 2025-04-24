#!/bin/bash
# Nmap Auto Scan Script by Mayur

echo "[+] Target IP or Domain:"
read target

echo "[*] Quick Scan Running..."
nmap -T4 -F $target -oN quick-scan.txt

echo "[*] Service Version Scan Running..."
nmap -sV $target -oN service-scan.txt

echo "[*] Full Port TCP Scan Running..."
nmap -p- -T4 $target -oN full-port-scan.txt

echo "[+] Scans Completed. Check output files."

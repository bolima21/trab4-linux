#!/bin/bash

# 1A 
grep -o '[01]*' ./bruxarias.txt > 1a.txt

# 1B 
grep -o -E '1[01]{0,7}' ./bruxarias.txt > 1b.txt

# 1C 
grep -E '^1[01]{0,7}$' ./bruxarias.txt > 1c.txt

# 1D 
grep -o -E '1[0-9]+' ./bruxarias.txt > 1d.txt

# 1E 
grep -o -E '[ue]tt' ./bruxarias.txt > 1e.txt

# 1F 
grep -o -E '\b[A-Z][a-z]{2,}\b' ./bruxarias.txt > 1f.txt

# 1G 
grep -o -E '\b[A-Z][A-Z0-9_]*\b' ./bruxarias.txt > 1g.txt

# 1H 
grep -o -E '((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)' ./bruxarias.txt > 1h.txt

# 2A 
find /etc -type d > 2a.txt

# 2B 
find /etc -maxdepth 1 -type d > 2b.txt

# 2C 
find /etc -type f -size +1k > 2c.txt

# 2D 
find /var -type f -mtime -7 > 2d.txt

# 3A 
awk -F: '{print $1}' /etc/passwd > 3a.txt

# 3B 
awk -F: 'NR>=10 && NR<=20 {print $1}' /etc/passwd > 3b.txt

# 4A 
sudo  -i -w "s/^$USER:/exercicio:/g" /etc/passwd > 4a.txt

# 4B 
sudo -i -w "/^$USER:/d" /etc/passwd > 4b.txt


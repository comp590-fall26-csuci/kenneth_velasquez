#!/bin/bash
FILE="Documents/Passwords.txt"
OUT_DIR="lab2passwords"

mkdir -p "$OUT_DIR"

count=1
while IFS= read -r password; do
	echo "$password"
	echo "$password" > "./$OUT_DIR/password${count}.txt"
	((count++))

done < <(sort "$FILE")

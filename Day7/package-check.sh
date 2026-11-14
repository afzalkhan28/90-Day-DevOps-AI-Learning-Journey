
#!/bin/bash

# Package Availability Checker

echo "================================="
echo "      PACKAGE CHECKER"
echo "================================="

packages=("curl" "wget" "git" "python3" "docker")

for package in "${packages[@]}"
do
    if command -v "$package" >/dev/null 2>&1; then
        echo "[INSTALLED] $package"
    else
        echo "[NOT FOUND] $package"
    fi
done

echo ""
echo "Package checking completed."


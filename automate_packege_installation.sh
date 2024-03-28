#!/bin/bash

packages=("httpd" "nginx")

for package in "${packages[@]}"
do
    yum install "$package" -y
    if [ $? -eq 0 ]; then
        echo "Package $package installed successfully"
    else
        echo "Failed to install package $package"
    fi
done
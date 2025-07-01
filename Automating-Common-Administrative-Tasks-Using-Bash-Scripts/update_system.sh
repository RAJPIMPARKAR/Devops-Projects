#!/bin/bash

echo "Updating package lists..."
sudo apt update

echo "Upgrading packages..."
sudo apt upgrade -y

echo "System update completed."

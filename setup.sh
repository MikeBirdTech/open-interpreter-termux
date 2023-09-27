#!/bin/sh

# Display a welcome message
echo "Starting the Termux setup..."

# Update and upgrade the package list
echo "Updating and upgrading package lists..."
pkg update && pkg upgrade -y

# Install pip via Python
echo "Installing Python and pip..."
pkg install -y python

# Install Rust and binutils
echo "Installing Rust and binutils..."
pkg install -y rust
pkg install -y binutils

# Install Python packages via pip
echo "Installing Python packages..."
pip install open-interpreter

# Display a completion message
echo "Setup completed successfully. You can now use Python, Rust, and open-interpreter."

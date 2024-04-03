# Windows Environment Setup Script

## Overview
This PowerShell script is designed to automate the setup of a Windows environment. It handles the installation of a variety of development tools, productivity applications, communication platforms, and utilities, followed by the setup of Windows Subsystem for Linux (WSL) with Ubuntu.

## What the Script Does
1. **Updates all existing packages** on the system through Winget.
2. **Installs a predefined set of applications**:
   - Development tools like Python, Visual Studio Code, Git, Docker Desktop, and more.
   - Productivity and utility applications such as 1Password, Spotify, Discord, Brave Browser, and others.
   - Communication tools including WhatsApp and Telegram.
   - Additional tools like 7-Zip, VLC Media Player, and the Epic Games Launcher.
3. **Sets up WSL with Ubuntu** if not already installed, which might require a system restart.
4. **Updates and upgrades Ubuntu packages** within WSL for a fresh and secure start.

## Prerequisites
- Windows 10 or Windows 11 with administrative privileges.
- Winget must be installed and available in your system path.
- An active internet connection to download software and packages.

## License
This script is provided "as is", without warranty of any kind. Use it at your own risk.

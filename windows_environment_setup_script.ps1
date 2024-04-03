# Update system packages
winget upgrade --all

# Install specific applications via Winget
winget install --id=Python.Python.3
winget install --id=Microsoft.VisualStudioCode
winget install --id=JetBrains.Toolbox
winget install --id=AgileBits.1Password
winget install --id=AgileBits.1PasswordCLI
winget install --id=Spotify.Spotify
winget install --id=Discord.Discord
winget install --id=BraveSoftware.BraveBrowser
winget install --id=ProtonTechnologiesAG.ProtonVPN
winget install --id=Valve.Steam
winget install --id=Jellyfin.JellyfinMediaPlayer
winget install --id=Microsoft.PowerToys
winget install --id=WhatsApp.WhatsApp
winget install --id=Telegram.TelegramDesktop
winget install --id=IgorPavlov.7Zip
winget install --id=VideoLAN.VLC
winget install --id=RustLang.Rust.GNU
winget install --id=Mozilla.Firefox
winget install --id=EpicGames.EpicGamesLauncher
winget install --id=Git.Git
winget install --id=Docker.DockerDesktop
winget install --id=Microsoft.Office

# Update system packages again after installations
winget upgrade --all

# Check if WSL is installed, install WSL and Ubuntu if not
wsl --list --quiet | Select-String -Pattern "Ubuntu" -Quiet
if (!$?) {
    wsl --install -d Ubuntu
    # Inform the user that a reboot might be required and the script will stop
    Write-Host "WSL and Ubuntu installation initiated. Your system might need to restart to complete the installation."
}

# If WSL and Ubuntu are already installed, update and upgrade Ubuntu packages
wsl -d Ubuntu -e sudo apt update && sudo apt upgrade -y

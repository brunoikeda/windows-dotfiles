function Set-VSCode-Configuration {
  $VSCodeSettingsPath = Join-Path -Path $env:appdata -ChildPath "Code" | Join-Path -ChildPath "User";
  $DotfilesVSCodeSettingsFolder = $pwd;
  
  if (-not (Test-Path -Path $VSCodeSettingsPath)) {
    Write-Host "Configuring Visual Studio Code:" -ForegroundColor "Green";
    New-Item $VSCodeSettingsPath -ItemType directory;
  }

  Get-ChildItem -Path "${DotfilesVSCodeSettingsFolder}\*" -Include "*.json" -Recurse | Copy-Item -Destination $VSCodeSettingsPath;
}

choco install -y "vscode" --params "/NoDesktopIcon /NoQuicklaunchIcon /NoContextMenuFiles /NoContextMenuFolders";
Set-VSCode-Configuration;
refreshenv;
code --install-extension "ue.alphabetical-sorter";
code --install-extension "formulahendry.auto-rename-tag";
code --install-extension "ms-azuretools.vscode-docker";
code --install-extension "usernamehw.errorlens";
code --install-extension "eamodio.gitlens";
code --install-extension "oderwat.indent-rainbow";
code --install-extension "robole.markdown-snippets";
code --install-extension "pkief.material-icon-theme";
code --install-extension "ms-vscode.powershell";
code --install-extension "esbenp.prettier-vscode";
code --install-extension "ms-vscode-remote.remote-containers";
code --install-extension "ms-vscode-remote.remote-wsl";
code --install-extension "jock.svg";
code --install-extension "rangav.vscode-thunder-client";
code --install-extension "vmware.vscode-boot-dev-pack";
code --install-extension "vscjava.vscode-maven";
code --install-extension "visualstudioexptteam.vscodeintellicode";
$app = $args[0]

$srcDir = "$pwd/src"

Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass -Force;

if (($app -eq "chocolatey") -or ($app -eq "all") -or ($app -eq $null)) { Invoke-Expression (Join-Path -Path $srcDir -ChildPath "Chocolatey" | Join-Path -ChildPath "Chocolatey.ps1"); }
if (($app -eq "vscode") -or ($app -eq "all") -or ($app -eq $null)) { Invoke-Expression (Join-Path -Path $srcDir -ChildPath "VSCode" | Join-Path -ChildPath "VSCode.ps1"); }
if (($app -eq "java") -or ($app -eq "all") -or ($app -eq $null)) { Invoke-Expression (Join-Path -Path $srcDir -ChildPath "Java" | Join-Path -ChildPath "JDK.ps1"); }
if (($app -eq "git") -or ($app -eq "all") -or ($app -eq $null)) { Invoke-Expression (Join-Path -Path $srcDir -ChildPath "Git" | Join-Path -ChildPath "Git.ps1"); }
if (($app -eq "ditto") -or ($app -eq "all") -or ($app -eq $null)) { Invoke-Expression (Join-Path -Path $srcDir -ChildPath "Ditto" | Join-Path -ChildPath "ditto.ps1"); }
if (($app -eq "node") -or ($app -eq "all") -or ($app -eq $null)) { Invoke-Expression (Join-Path -Path $srcDir -ChildPath "Node" | Join-Path -ChildPath "nvm.ps1"); }
if (($app -eq "node") -or ($app -eq "all") -or ($app -eq $null)) { Invoke-Expression (Join-Path -Path $srcDir -ChildPath "Node" | Join-Path -ChildPath "node.ps1"); }
if (($app -eq "docker") -or ($app -eq "all") -or ($app -eq $null)) { Invoke-Expression (Join-Path -Path $srcDir -ChildPath "Docker" | Join-Path -ChildPath "Docker.ps1"); }
if (($app -eq "wsl") -or ($app -eq "all") -or ($app -eq $null)) { Invoke-Expression (Join-Path -Path $srcDir -ChildPath "WSL" | Join-Path -ChildPath "WSL.ps1"); }
#if (($app -eq "notepad") -or ($app -eq "all") -or ($app -eq $null)) { Invoke-Expression (Join-Path -Path $srcDir -ChildPath "Notepad++" | Join-Path -ChildPath "Notepad++.ps1"); }
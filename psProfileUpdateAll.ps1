# Powershell Profiles are as follows:

# All Users Master
$fileA = 'C:\Windows\System32\WindowsPowerShell\v1.0\profile.ps1'
# Default User
$fileB = 'C:\Users\mk\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1'
# VSCode User
$fileC = 'C:\Users\mk\Documents\WindowsPowerShell\Microsoft.VSCode_profile.ps1'
# If Else Statement to compare the values of the Profiles against the All Users Master
if ((Get-FileHash $fileA).hash -ne (Get-FileHash $fileC).hash)
{Clear-Content $fileC; Add-Content -Path $fileC -Value (Get-Content $fileA)}
Elseif ((Get-FileHash $fileA).hash -ne (Get-FileHash $fileB).hash)
{Clear-Content $fileB; Add-Content -Path $fileB -Value (Get-Content $fileA)}
Else {Exit}
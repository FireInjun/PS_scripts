Function refresh() {
Stop-Process -processname powershell -Force
Stop-Process -processname conEmu64 -Force
Stop-Process -processname explorer -Force
Stop-Process -processname conhost -Force
Start-Process C:\Windows\explorer.exe
Start-Process C:\tools\cmder\Cmder.exe
}

refresh
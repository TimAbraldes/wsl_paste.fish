function wsl_paste
	powershell.exe Get-Clipboard | sed 's/\r$//g'
end

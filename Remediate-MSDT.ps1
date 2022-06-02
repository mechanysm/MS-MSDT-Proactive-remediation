New-PSDrive -PSProvider registry -Root HKEY_CLASSES_ROOT -Name HKCR
Set-Item -Path "HKCR:\ms-msdt" -Value "URL:ms-msdt_bk"
Rename-Item -Path "HKCR:\ms-msdt" -newName "ms-msdt_bk"
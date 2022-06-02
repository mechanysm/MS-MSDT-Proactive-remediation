New-PSDrive -PSProvider registry -Root HKEY_CLASSES_ROOT -Name HKCR -ErrorAction SilentlyContinue
try
{
    if((Test-Path -Path 'HKCR:\ms-msdt') -eq $true) {
        echo "Registry Key Exists, Remove Key"
        Remove-PSDrive -Name HKCR
        exit 1
    }
    else {
        echo "Registry Key Does Not Exist, Do Nothing"
        Remove-PSDrive -Name HKCR
        exit 0
    }
}
catch{
    $errMsg = $_.Exception.Message
    Write-Error $errMsg
    Remove-PSDrive -Name HKCR
    exit 1
}

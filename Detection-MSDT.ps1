New-PSDrive -PSProvider registry -Root HKEY_CLASSES_ROOT -Name HKCR
try
{
    if((Test-Path -Path 'HKCR:\ms-msdt') -eq $true) {
        echo "Registry Key Exists, Remove Key"
        exit 1
    }
    else {
        echo "Registry Key Does Not Exist, Do Nothing"
        exit 0
    }
}
catch{
    $errMsg = $_.Exception.Message
    Write-Error $errMsg
    exit 1
}
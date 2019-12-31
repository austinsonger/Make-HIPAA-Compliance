## Recover Console: Allow Automatic Administrative Logon
$registrypath = "HKLM:/Software/Microsoft/Windows NT/CurrentVersion/Setup/RecoveryConsole"
$name = "SecurityLevel"
$value = 0
Write-Host $registrypath
SetHipaaControl ($registrypath, $name, $value)

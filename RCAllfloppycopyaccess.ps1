## Recovery console: Allow floppy copy and access to all drives and all folders
$registrypath = "HKLM:/Software/Microsoft/Windows NT/CurrentVersion/Setup/RecoveryConsole"
$name = "SetCommand"
$value = 0
Write-Host $registrypath
SetHipaaControl ($registrypath, $name, $value)

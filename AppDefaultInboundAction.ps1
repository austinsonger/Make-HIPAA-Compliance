## Retention Method for Application Log
$registrypath = "HKLM:/System/CurrentControlSet/Services/Eventlog/Application"
$name = "DefaultInboundAction"
$value = 0
Write-Host $registrypath
SetHipaaControl ($registrypath, $name, $value)

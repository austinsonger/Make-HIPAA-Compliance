## 'System Event Notification' service
# Expected Value is Automatic (2)
$registrypath = "HKLM:/System/CurrentControlSet/Services/SENS"
$name = "Start"
$value = 2
Write-Host $registrypath
SetHipaaControl ($registrypath, $name, $value)

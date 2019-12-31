## Performance Logs and Alerts service
# (3) is expected
$registrypath = "HKLM:/System/CurrentControlSet/Services/pla"
$name = "Start"
$value = 3
Write-Host $registrypath
SetHipaaControl ($registrypath, $name, $value)

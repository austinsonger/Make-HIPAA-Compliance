## 'SQL Server VSS Writer' service
#Expected value is 4 (Disabled), Currently Set to Automatic (2)
$registrypath = "HKLM:/System/CurrentControlSet/Services/SqlWriter"
$name = "Start"
$value = 2
Write-Host $registrypath
SetHipaaControl ($registrypath, $name, $value)

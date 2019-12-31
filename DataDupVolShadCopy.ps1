## Data Duplication Volume Shadow Copy
# Automatic (2), Automatic Delayed Start (21), Manual (3), Disabled (4) - All are acceptable
$registrypath = "HKLM:/System/CurrentControlSet/Services/ddpvssvc"
$name = "Start"
$value = 4
Write-Host $registrypath
SetHipaaControl ($registrypath, $name, $value)

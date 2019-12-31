## Microsoft 'Volume Shadow Copy Service Provider' service
# Automatic (2), Automatic Delayed Start (21), Manual (3), Disabled (4) - All are acceptable
$registrypath = "HKLM:System/CurrentControlSet/Services/swprv"
$name = "Start"
$value = 3
Write-Host $registrypath
SetHipaaControl ($registrypath, $name, $value)

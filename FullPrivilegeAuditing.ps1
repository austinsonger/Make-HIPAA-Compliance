## Audit: Audit the use of backup and restore privilege setting (Critical)
$registrypath = "HKLM:/SYSTEM/CurrentControlSet/Control/Lsa"
$name = "FullPrivilegeAuditing"
$value = "00"
Write-Host $registrypath
SetHipaaControl ($registrypath, $name, $value)

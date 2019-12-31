## 'Audit: Shut Down system immediately if unable to log security audits
$registrypath = "HKLM:/System/CurrentControlSet/Control/Lsa"
$name = "CrashOnAuditFail"
$value = 0
Write-Host $registry-path
SetHipaaControl ($registrypath, $name, $value)

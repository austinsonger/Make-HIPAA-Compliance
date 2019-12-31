## Windows Firewall: Display a notification (Domain)
#
$registrypath = "HKLM:/Software/Policies/Microsoft/WindowsFirewall/DomainProfile"
$name = "DisableNotifications"
$value = 0
Write-Host $registrypath
SetHipaaControl ($registrypath, $name, $value)

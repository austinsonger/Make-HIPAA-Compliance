## MSS: (AutoReboot) Allow Windows to automatically restart after a system crash
# 0 = Disabled, 1 = Enabled, Key not found are all acceptable
$registrypath = "HKLM:/System/CurrentControlSet/Control/CrashControl"
$name = "AutoReboot"
$value = 1
Write-Host $registrypath
SetHipaaControl ($registrypath, $name, $value)

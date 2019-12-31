mkdir C:\Backup-Script
reg export HKLM\Software C:\Backup-Script\SystemBackup.reg
#Creates Green HIPAA Directory for Reg Backups
#Backs Up Registry
function SetHipaaControl ()
{
    If(-not(Test-Path -Path $registrypath))
        {
            New-Item -Path $registrypath
            New-ItemProperty -Path $registrypath -Name $name -Value $value
        }
Else
        {
            Set-ItemProperty -Path $registrypath -Name $name -Value $value
        }

}
## 'Hyper-V Volume Shadow Copy Requestor' Service
# Automatic (2), Automatic Delayed Start (21), Manual (3), Disabled (4), *Manual is expected
$registrypath = "HKLM:System/CurrentControlSet/Services/vmicvss"
$name = "Start"
$value = 3
Write-Host $registrypath
SetHipaaControl ($registrypath, $name, $value)

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


## Microsoft File Server Shadow Copy Agent
# Automatic (2), Automatic Delayed Start (21), Manual (3), Disabled (4) - All are acceptable
$registrypath = "HKLM:/System/CurrentControlSet/Services/fssagent"
$name = "Start"
$value = 3
Write-Host $registrypath
SetHipaaControl ($registrypath, $name, $value)

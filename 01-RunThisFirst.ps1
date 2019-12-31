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

Install-WindowsFeature AD-Domain-Services -IncludeManagementTools

Import-Module ADDSDeployment
Install-ADDSDomainController `
-InstallDNS `
-NoGlobalCatalog:$false `
-CreateDnsDelegation:$false `
-CriticalReplicationOnly:$false `
-DatabasePath “C:\Windows\NTDS” `
-DomainName (Read-Host "What do you want the domain to be called?") `
-LogPath “C:\Windows\NTDS” `
-NoRebootOnCompletion:$false `
-SiteName “Default-First-Site-Name” `
-SysvolPath “C:\Windows\SYSVOL” `
-Force:$true



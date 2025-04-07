# Récupérer l'InterfaceAlias de la première interface active (Up) qui n'est pas une interface de boucle (Loopback)
$InterfaceAlias = (Get-NetAdapter | Where-Object { $_.Status -eq "Up" -and $_.HardwareInterface -eq $true }).InterfaceAlias

# Vérifier si une interface active a été trouvée
if ($InterfaceAlias) {
    Write-Host "Interface trouvée : $InterfaceAlias"
#Installer le rôle AD DS (Active Directory Domain Services)
Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools
#  Promouvoir le serveur en tant que contrôleur de domaine (redémarrage requis) Changer les variantes pour adapter
Import-Module ADDSDeployment
$DomainName = "admin.lan"
$SafeModeAdministratorPassword = ConvertTo-SecureString -AsPlainText "Iprec123456" -Force
Install-ADDSForest -DomainName $DomainName -SafeModeAdministratorPassword $SafeModeAdministratorPassword -InstallDNS -Force
# Configurer adresse DNS
Set-DnsClientServerAddress -InterfaceIndex $InterfaceAlias -ServerAddresses 192.168.184.10
}
Restart-Computer -Force

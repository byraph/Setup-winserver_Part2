# Setup-winserver_Part2

# Script PowerShell – Contrôleur de Domaine Windows Server 2019 à 2025

Ce script PowerShell permet de **promouvoir automatiquement un serveur Windows** en **contrôleur de domaine Active Directory (AD DS)**. Il s’adresse aux versions **Windows Server 2019, 2022 et 2025**, et inclut les rôles essentiels ainsi que les paramètres DNS de base.

> ⚠️ Exécuter ce script avec PowerShell en tant qu’**administrateur**

---

## ✅ Fonctionnalités du script

- 🔍 **Détection automatique de l’interface réseau active**
- 🛠️ **Installation du rôle AD DS** (Active Directory Domain Services)
- 🌱 **Création d’une nouvelle forêt Active Directory**
- 🌐 **Configuration DNS sur l’interface réseau**
- 🔁 **Redémarrage automatique du serveur**

---

⚙️ Paramètres à adapter
Avant d’utiliser ce script en production, modifiez :

Le nom de domaine : *****

Le mot de passe DSRM : "*******"

L’adresse DNS : 192.168.000.000

🧪 Testé avec succès sur :
✅ Windows Server 2019

✅ Windows Server 2022

✅ Windows Server 2025 

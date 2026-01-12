<#
.SYNOPSIS
    Script para crear la estructura de Active Directory desde archivos CSV.
.DESCRIPTION
    
.EXAMPLE
    .\Estructura_Active_directory.ps1
.NOTES
    Autor: Samuel Sáez y Pablo Sainz de la Maza
    Fecha: 03/12/2025
    Version: 1.0
    Notas:
#>

Import-Module ActiveDirectory

# --- Rutas dinámicas ---
$BasePath = Split-Path -Parent $MyInvocation.MyCommand.Path
$OUFile      = Join-Path $BasePath "UO_Grupo3.csv"
$GroupsFile  = Join-Path $BasePath "Grupos_Grupo3.csv"
$UsersFile   = Join-Path $BasePath "Usuarios_Grupo3.csv"

Write-Host "Importando datos desde: $BasePath"

# ================================
# 1. CREACIÓN DE OUs
# ================================
Write-Host "Creando OUs"

$OUs = Import-Csv -Path $OUFile

foreach ($ou in $OUs) {
    $Name = $ou.Name
    $Path = $ou.Path

    if (-not (Get-ADOrganizationalUnit -LDAPFilter "(ou=$Name)" -ErrorAction SilentlyContinue)) {
        New-ADOrganizationalUnit -Name $Name -Path $Path
        Write-Host "OU creada: $Name"
    } else {
        Write-Host "OU ya existe: $Name"
    }
}

# ================================
# 2. CREACIÓN DE GRUPOS
# ================================
Write-Host "Creando Grupos"

$Groups = Import-Csv -Path $GroupsFile

foreach ($g in $Groups) {
    $Name = $g.Name
    $Scope = $g.Scope
    $Category = $g.Category
    $Path = $g.OU

    if (-not (Get-ADGroup -Filter "Name -eq '$Name'" -ErrorAction SilentlyContinue)) {
        New-ADGroup -Name $Name -GroupScope $Scope -GroupCategory $Category -Path $Path
        Write-Host "Grupo creado: $Name"
    } else {
        Write-Host "Grupo ya existe: $Name"
    }
}

# ================================
# 3. CREACIÓN DE USUARIOS
# ================================
Write-Host "Creando Usuarios"

$Users = Import-Csv -Path $UsersFile

foreach ($usr in $Users) {
    $Name = $usr.FirstName
    $Surname = $usr.LastName
    $Sam = $usr.SamAccountName
    $UPN = $usr.UserPrincipalName
    $OU = $usr.OU
    $Group = $usr.Groups

    if (-not (Get-ADUser -Filter "SamAccountName -eq '$($Sam)'")) {

        $Password = ConvertTo-SecureString "Usuario@1" -AsPlainText -Force

        New-ADUser `
            -Name $Name `
            -Surname $Surname `
            -SamAccountName $Sam `
            -UserPrincipalName $UserPrincipalName `
            -Path $OU `
            -AccountPassword $Password `
            -Enabled $true

        Write-Host "Usuario creado: $Sam"

    } else {
        Write-Host "Usuario ya existe: $Sam"
    }

    # Añadir al grupo
    if (Get-ADGroup -Filter "Name -eq '$($Group)'") {
        Add-ADGroupMember -Identity $Group -Members $Sam -ErrorAction SilentlyContinue
        Write-Host "  → Añadido al grupo: $Group"
    } else {
        Write-Host "  → ERROR: Grupo no encontrado: $Group"
    }
}

Write-Host "`n=== Importación completada ==="

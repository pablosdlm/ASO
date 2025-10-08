<#
.SYNOPSIS
    Crear carpetas en Powershell
.DESCRIPTION
    Crear carpetas pidiendo un numero
.PARAMETER [Nombre parámetro]
    Sin parámetros
.EXAMPLE
    .\Crear-Carpetas.ps1
.NOTES
    Autor: Pablo Sainz de la Maza
    Fecha: 06/10/2025
    Version: 1.0
#>
clear-host
$numero = read-host "Dame un numero"
$carpeta = if ($numero % 2 -eq 0) {"Pares"} else {"Impares"}
if (-not (Test-Path $env:USERPROFILE\Desktop\$carpeta)) {
    New-Item $env:USERPROFILE\Desktop\$carpeta -ItemType Directory
    Write-Host "El numero $numero es $carpeta"
}

<#if ($numero % 2 -eq 0) {
    mkdir $env:USERPROFILE\Desktop\Pares
    Write-Host "Se ha creado la carpeta Pares"
}
else {
    mkdir $env:USERPROFILE\Desktop\Impares
    Write-Host "Se ha creado la carpeta Impares"  
}#>
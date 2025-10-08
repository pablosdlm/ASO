<#
.SYNOPSIS
    Arrays en Powershell
.DESCRIPTION
    Crear arrays
.PARAMETER [Nombre parámetro]
    Sin parámetros
.EXAMPLE
    .\Arrays.ps1
.NOTES
    Autor: Pablo Sainz de la Maza
    Fecha: 29/09/2025
    Version: 1.0
#>
Clear-Host
$nombres=@()
$nombres+="Luis"
$nombres+="Pedro"
$nombres+="Maria"
#Mostrar por pantalla con índice positivo
write-host $nombres[0] $nombres[1] $nombres[2]
# Mostrar por pantalla con índice negativo
write-host $nombres[-3] $nombres[-2] $nombres[-1]
# Mostrar el último array
Write-Host "Ultimo: " $nombres[$nombres.Count -1]
# Mostrar el último array. Segundo metodo
Write-Host "Ultimo: " $nombres[-1]

# Ruta documentos
$documentos = "$env:USERPROFILE\Documents"
$scriptsPath = Join-Path $documentos "Scripts"
$ficheros = Get-ChildItem $documentos
<#
.SYNOPSIS
    Crear logs en documentos en Powershell
.DESCRIPTION
    Crear logs en la carpeta documentos
.PARAMETER [Nombre parámetro]
    Sin parámetros
.EXAMPLE
    .\Gestion-Log.ps1
.NOTES
    Autor: Pablo Sainz de la Maza
    Fecha: 06/10/2025
    Version: 1.0
#>
Clear-Host
# Comprueba si existe o no la carpeta de Logs y la crea en caso de que no exista
if (-not(test-path $env:USERPROFILE\Documents\Logs)) {
    mkdir $env:USERPROFILE\Documents\Logs
}
else {
    Write-Host "La carpeta ya existe"
}
# Bucle para crear los 10 archivos
for ($i=1; $i -le 10; $i++){
    New-Item $env:USERPROFILE\Documents\logs\log$i.txt -ItemType File
}
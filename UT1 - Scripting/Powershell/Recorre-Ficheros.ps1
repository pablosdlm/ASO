<#
.SYNOPSIS
    Recorrer ficheros en Powershell
.DESCRIPTION
    En la anterior carpeta Logs, escribe dentro de cada fichero un texto como: “Este es el fichero logX.txt”.
    Recorre los ficheros y muestra en pantalla la primera línea de cada uno.
.PARAMETER [Nombre parámetro]
    Sin parámetros
.EXAMPLE
    .\Recorre-Ficheros.ps1
.NOTES
    Autor: Pablo Sainz de la Maza
    Fecha: 06/10/2025
    Version: 1.0
#>
Clear-Host
for ($i=1; $i -le 10; $i++){
    Write-Output "Este es el fichero log$i.txt" > $env:USERPROFILE\Documents\Logs\log$i.txt
    Write-Host "$(get-content $env:USERPROFILE\Documents\Logs\log$i.txt)"
}
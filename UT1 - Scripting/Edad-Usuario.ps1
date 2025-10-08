<#
.SYNOPSIS
    Condicionales en Powershell
.DESCRIPTION
    Aplicar condicionales para demostrar si alguien es mayor o menor de edad
.PARAMETER [Nombre parámetro]
    Sin parámetros
.EXAMPLE
    .\CondicionalEdad.ps1
.NOTES
    Autor: Pablo Sainz de la Maza
    Fecha: 1/10/2025
    Version: 1.0
#>
Clear-Host
$edad = Read-Host "Que edad tienes: "
if ($edad -lt 18) {
    write-host "Eres menor de edad"
} else {
    Write-Host "Eres mayor de edad"
}
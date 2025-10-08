<#
.SYNOPSIS
    Condicionales en Powershell
.DESCRIPTION
    Aplicar condicionales para demostrar si un número es par o impar
.PARAMETER [Nombre parámetro]
    Sin parámetros
.EXAMPLE
    .\CondicionalParImpar.ps1
.NOTES
    Autor: Pablo Sainz de la Maza
    Fecha: 1/10/2025
    Version: 1.0
#>
Clear-Host
[double] $prompt = read-host "Dime un número: "
if ($prompt % 2 -eq 0) {
    write-host "El número $prompt es par"
} else {
    write-host "El número $prompt es impar"
}

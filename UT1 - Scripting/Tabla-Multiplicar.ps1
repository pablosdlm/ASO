<#
.SYNOPSIS
    Bucles en Powershell
.DESCRIPTION
    Aplicando bucles para hacer tablas de multiplicar
.PARAMETER [Nombre parámetro]
    Sin parámetros
.EXAMPLE
    .\BuclesTablasMultiplicar.ps1
.NOTES
    Autor: Pablo Sainz de la Maza
    Fecha: 1/10/2025
    Version: 1.0
#>
clear-host
for ($i = 1; $i -le 10; $i++) {
    $resultado = 5 * $i
    Write-Host "5 x $i = $resultado"
}
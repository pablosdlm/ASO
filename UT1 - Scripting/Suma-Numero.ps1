<#
.SYNOPSIS
    Bucle Sumas
.DESCRIPTION
    Calcular sumas del 1 al 100
.PARAMETER [Nombre parámetro]
    Sin parámetros
.EXAMPLE
    .\Suma-Numero.ps1
.NOTES
    Autor: Pablo Sainz de la Maza
    Fecha: 1/10/2025
    Version: 1.0
#>
Clear-Host
for ($i = 1; $i -le 100; $i++) {
    $suma = $suma+$i
}
write-host "El resultado de la suma es: $suma"
<#
.SYNOPSIS
    Calcular el cuadrado de un número en Powershell
.DESCRIPTION
    Crear un array del 1 al 10 y mostrar su cuadrado
.PARAMETER [Nombre parámetro]
    Sin parámetros
.EXAMPLE
    .\Calcula-Cuadrado.ps1
.NOTES
    Autor: Pablo Sainz de la Maza
    Fecha: 06/10/2025
    Version: 1.0
#>
$numeros=1..10
foreach ($n in $numeros) {
    $resultado = $n * $n 
}
Write-host "El resultado es $resultado"
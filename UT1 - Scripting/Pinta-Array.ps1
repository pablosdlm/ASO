<#
.SYNOPSIS
    Bucle Array
.DESCRIPTION
    Array
.PARAMETER [Nombre parámetro]
    Sin parámetros
.EXAMPLE
    .\Pinta-Array.ps1
.NOTES
    Autor: Pablo Sainz de la Maza
    Fecha: 1/10/2025
    Version: 1.0
#>
Clear-Host
$nombres = @("Yeremias", "Chino", "Tonio", "Chincheto", "Cajas")

foreach ($n in $nombres) {
    write-host "Hola, $n"
}

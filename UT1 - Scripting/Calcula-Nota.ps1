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
clear-host
$nota = Read-Host "Dame una nota del 0 al 10: "
$notatexto = "Nota Imposible"
switch($nota)
{
    {($nota -ge 0) -and ($nota -lt 5)} {$notatexto = "Insuficiente"; break;}
    {($nota -eq  5)} {$notatexto = "Suficiente"; break;}
    {($nota -ge 6) -and ($nota -lt 9)} {$notatexto = "Notable"; break;}
    {($nota -ge 9) -and ($nota -le 10)} {$notatexto = "Sobresaliente"; break;}
}
Write-host "La nota $nota es $notatexto"
<#
.SYNOPSIS
    Bucles anidados en Powershell
.DESCRIPTION
    Generar los números de 1 a 9 colocados en una tabla de 3 por 3 (ascendente y descendente).
.PARAMETER [Nombre parámetro]
    Sin parámetros
.EXAMPLE
    .\Bucle-Anidado.ps1
.NOTES
    Autor: Pablo Sainz de la Maza
    Fecha: 13/10/2025
    Version: 1.0
#>
Clear-Host
$contador = 9;
if ($contador -eq 9){ $tablaabajo =$true }
else{ $tablaabajo=$false }
$numerofilas = 3; $numerocolumnas = 3
for ($fila=1; $fila -le $numerofilas; $fila++){
    $textofila = "";
    for ($columna=1; $columna -le $numerocolumnas; $columna++)
    {
        $textofila = $textofila + $contador + " "
        if ($tablaabajo){ $contador--}
        else {$contador++}
    }
    write-host $textofila
}

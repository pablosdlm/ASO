<#
.SYNOPSIS
    Crear carpetas con vectores en Powershell
.DESCRIPTION
    Creación de carpetas “ASIR1, ASIR2, DAW1, DAW2, DAM1,DAM2, SMR1, SMR2, SMRd1, SMRd2”, a partir de un vector de nombres. Creación de 20 subcarpetas de usuarios por cada carpeta cread
.PARAMETER [Nombre parámetro]
    Sin parámetros
.EXAMPLE
    .\Carpetas-Vectores.ps1
.NOTES
    Autor: Pablo Sainz de la Maza
    Fecha: 13/10/2025
    Version: 1.0
#>
Clear-Host
$usuarios = "C:\users\$env:USERNAME" # Ruta del escritorio del usuario actual
$carpetas=@("ASIR1", "ASIR2", "DAW1", "DAW2", "DAM1", "DAM2", "SMR1", "SMR2", "SMRd1", "SMRd2") # Array de nombres de carpetas
# Bucle para recorrer el array de nombres de carpetas
foreach ($carpeta in $carpetas){
    # Comprobación y creación de carpetas principales
    if (-not(test-path "$usuarios\Desktop\usuarios\$carpeta")) {
    New-Item -ItemType Directory -Path "$usuarios\Desktop\usuarios\$carpeta"
    Write-Host "Carpeta $carpeta creada"
        # Bucle para crear las 20 subcarpetas de usuarios
        for ($i=1; $i -le 20; $i++){
            $usuarioNum = "{0:D2}" -f $i
            # Comprobación y creación de subcarpetas
            if (-not(test-path "$usuarios\Desktop\usuarios\$carpeta\usuario$usuarioNum")) {
                New-Item -ItemType Directory -Path "$usuarios\Desktop\usuarios\$carpeta\usuario$usuarioNum"
                Write-Host "Subcarpeta usuario$usuarioNum creada"
            }
            else {
                Write-Host "La subcarpeta usuario$i ya existe"
            }
        }
    }
    else {
        Write-Host "La carpeta $carpeta ya existe"
    }
}
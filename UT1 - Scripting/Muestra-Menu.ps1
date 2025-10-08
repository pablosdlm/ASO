<#
.SYNOPSIS
    Hacer un menú en Powershell
.DESCRIPTION
    Hacer un menú
.PARAMETER [Nombre parámetro]
    Sin parámetros
.EXAMPLE
    .\Muestra-Menu.ps1
.NOTES
    Autor: Pablo Sainz de la Maza
    Fecha: 06/10/2025
    Version: 1.0
#>
    Clear-Host
    Write-Host "===== MENU PRINCIPAL ====="
    Write-Host "1 -> Mostrar la fecha actual"
    Write-Host "2 -> Mostrar el usuario actual"
    Write-Host "3 -> Salir"
    Write-Host "=========================="
    $opcion = Read-Host "Selecciona una opcion (1-3)"

    switch ($opcion) {
        1 {
            Write-Host "La fecha actual es: $(Get-Date)"
            break
        }
        2 {
            Write-Host "El usuario actual es: $env:USERNAME"
            break
        }
        3 {
            Write-Host "Saliendo del programa..."
        }
        Default {
            Write-Host "Opcion no valida. Intenta de nuevo."
            break
        }
    }
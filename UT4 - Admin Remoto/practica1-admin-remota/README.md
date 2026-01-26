# UT4 - Administración remota con WAC (Windows Admin Center) y Cockpit

## Documentación de WAC
### 1. Acceso a WAC (Windows Admin Center)
![Acceso a WAC](capturas/wac-acceso.png)
### 2. Administración remota del servidor
![Información del servidor](capturas/wac-servidor.png)
![Rendimiento de la CPU y Memoria del servidor](capturas/wac-rendimiento.png)
![Servicios del servidor](capturas/wac-servicios.png)

| Sistema administrado | Herramienta | Protocolo | Puerto |
|:----------------------:|:-------------:|:-----------:|:--------:|
| Windows Server 2025 |  WAC | RDP | 6600

## Documentación de Cockpit
### 1. Estado del servicio de Cockpit y el socket
Para saber el estado del servicio y del socket, se ejecuta `sudo systemctl status cockpit` y `sudo systemctl status cockpit.socket`

![Mostrar el estado del servicio de Cockpit](capturas/cockpit-servicio.png)

### 2. Creación del usuario y añadir al grupo sudo
Necesitamos crear un usuario que se dedique específicamente a las tareas de monitorización remota. Para ello, creamos el usuario con el comando `sudo adduser remoto` y lo metemos al grupo *sudo* para que tenga permisos de **root** usando el comando `sudo usermod -aG sudo remoto`.

![Creación del usuario y añadir al grupo sudo](capturas/cockpit-usuario.png)

### 3. Accediendo a Cockpit desde el equipo cliente mediante navegador y se muestra la interfaz
**Para observar el rendimiento de Ubuntu Server, he usado Ubuntu Desktop, en vez de Windows 11, para tener mejor rendimiento del equipo.**

Una vez hayamos comprobado que el servicio está activo y hemos creado el usuario específico para monitorización remota, podemos acceder a la interfaz web introduciendo en la URL la **dirección IP del servidor** y el **puerto 9090**, cuyo puerto es el que establece para **HTTPS**. De forma que la URL queda: [https://10.0.35.130:9090](https://10.0.35.130:9090)

![Interfaz de Cockpit y acceso](capturas/cockpit-acceso.png)

### 4. Rendimiento del servidor
Para revisar el uso de CPU y de memoria RAM, hay que dirigirse al apartado **Visión global**, donde podremos ver dichos usos e información del sistema.
![Rendimiento del servidor](capturas/cockpit-rendimiento.png)

| Sistema | Usuario remoto | Herramienta | Protocolo | Puerto |
|:---------:|:----------------:|:-------------:|:-----------:|:--------:|
| Ubuntu Server | Monitor | Cockpit | HTTPS | 9090 |
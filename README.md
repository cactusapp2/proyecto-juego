# Wizards Game Project

## Descripción del Proyecto

"Wizards" es un juego de fantasía en línea que permite a los jugadores coleccionar y entrenar magos, equiparlos con objetos mágicos, y aventurarse en mazmorras para ganar recompensas. Los jugadores pueden participar en rankings y obtener medallas por sus logros. El juego utiliza una base de datos MySQL para gestionar la información de los usuarios, magos, objetos, transacciones y otros elementos del juego.

### Link Web
- [https://proyecto-juego-ten.vercel.app/](https://proyecto-juego-ten.vercel.app/)

## Tareas Actuales

### 1. Diseño y Creación de la Base de Datos

- **Descripción**: Creación de la estructura de la base de datos en MySQL para almacenar la información del juego.
- **Estado**: ✅
- **Detalles**: Se ha creado un script SQL que incluye tablas para usuarios, magos, objetos, mazmorras, transacciones, medallas, rankings, sellos mágicos, cajas de botín, y el panel de administrador.

### 2. Implementación de la Tabla de Usuarios

- **Descripción**: Crear la tabla de `Users` para gestionar la información de los jugadores.
- **Estado**: ✅
- **Detalles**: La tabla `Users` contiene campos como id, username, email, wallet_address, password, created_at, fee, magic_gold, crystal, awaken_seal y lang.

### 3. Implementación de la Tabla de Magos

- **Descripción**: Crear la tabla de `Mages` para almacenar la información de los magos coleccionados por los usuarios.
- **Estado**: ✅
- **Detalles**: La tabla `Mages` incluye campos como id, user_id, name, rarity, magic_power, cooldown_time, magic_gold_bonus y created_at.

### 4. Implementación de la Tabla de Objetos

- **Descripción**: Crear la tabla de `Items` para gestionar los objetos mágicos del juego.
- **Estado**: ✅
- **Detalles**: La tabla `Items` contiene campos como id, name, magic_power, star_level, magic_gold_bonus, user_id, awakened y created_at.

### 5. Implementación de la Tabla de Mazmorras

- **Descripción**: Crear la tabla de `Dungeons` para definir las mazmorras del juego.
- **Estado**: ✅
- **Detalles**: La tabla `Dungeons` incluye campos como id, name, level, magic_power_requirement y created_at.

### 6. Implementación de la Tabla de Transacciones

- **Descripción**: Crear la tabla de `Transactions` para registrar todas las transacciones financieras del juego.
- **Estado**: ✅
- **Detalles**: La tabla `Transactions` contiene campos como id, user_id, amount, transaction_type, status y created_at.

### 7. Creación de Tablas de Historial

- **Descripción**: Crear tablas para registrar el historial de mazmorras (`DungeonHistory`), cajas de botín (`LootBoxHistory`) y retiros (`WithdrawalHistory`).
- **Estado**: ✅
- **Detalles**: Estas tablas permiten registrar y seguir las actividades y transacciones de los jugadores en el juego.

### 8. Implementación del Panel de Administrador

- **Descripción**: Crear la tabla `AdminPanel` para gestionar las acciones administrativas del juego.
- **Estado**: ✅
- **Detalles**: La tabla `AdminPanel` contiene campos como id, admin_id, action, details y created_at.

## Próximas Tareas

### 9. Desarrollo del Frontend del Juego

- **Descripción**: Implementar la interfaz de usuario del juego en el cliente web o móvil.
- **Estado**: ⌚
- **Detalles**: Desarrollo de la interfaz de usuario para que los jugadores puedan interactuar con el juego.

### 10. Integración del Backend y Frontend

- **Descripción**: Conectar el frontend con la base de datos y lógica del backend.
- **Estado**: ⌚
- **Detalles**: Integración de las API necesarias para la comunicación entre el frontend y el backend del juego.

### 11. Pruebas y Optimización

- **Descripción**: Realizar pruebas del sistema completo y optimizar el rendimiento.
- **Estado**: ⌚
- **Detalles**: Asegurar que el juego funcione sin problemas y que la base de datos sea eficiente.

## Instrucciones de Uso

### Requisitos

- MySQL 8.0 o superior
- Un servidor web (por ejemplo, Apache o Nginx)
- PHP 7.4 o superior (opcional, si se utiliza un backend en PHP)

### Instalación

1. Clonar el repositorio del proyecto.
2. Importar el script SQL (`wizards_game.sql`) en su servidor MySQL.
3. Configurar el servidor web y el backend según sea necesario.

### Ejecución

1. Acceder a la URL del servidor web donde se ha desplegado el proyecto.
2. Registrarse y comenzar a jugar.



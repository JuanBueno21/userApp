# Descripción de la Aplicación

Esta aplicación es una lista de usuarios que muestra información básica de cada usuario y permite ver detalles más específicos de cada uno de ellos.

## Tecnologías Utilizadas

- **Flutter 3.0+**: Se utilizó para el desarrollo de la aplicación móvil.
- **Riverpod**: Utilizado para el manejo de estados en la aplicación.
- **Router**: Empleado para el manejo de las rutas en la navegación.
- **DIO**: Utilizado para realizar las peticiones HTTP y obtener los datos de la API.

## Estructura de la Aplicación

La aplicación consta de los siguientes módulos o pantallas:

### Lista de Usuarios

En esta pantalla se muestra una lista de usuarios con su nombre, correo electrónico y sitio web.

### Detalle de un Usuario

En esta pantalla se muestra toda la información restante del usuario seleccionado, incluyendo dirección, compañía, etc.

## Consumo de la API

Los datos de la aplicación se obtienen de la API JsonPlaceholder:

- **Usuarios:** [https://jsonplaceholder.typicode.com/users](https://jsonplaceholder.typicode.com/users)
- **Usuario:** [https://jsonplaceholder.typicode.com/users/{id}](https://jsonplaceholder.typicode.com/users/{id})

## Desarrollo de la Aplicación

La aplicación fue desarrollada con el objetivo de evaluar habilidades propias de un desarrollador móvil, incluyendo el uso del lenguaje, buenas prácticas, conocimiento de herramientas de terceros y arquitecturas básicas.

## Arquitectura y Estructura del Proyecto

El proyecto sigue una estructura modular que separa la lógica de negocio de la interfaz de usuario. Se emplea Riverpod para el manejo de estados y el enrutador para la navegación entre pantallas. Además, se utilizan widgets reutilizables para mejorar la mantenibilidad del código.


# Aplicación de Gestión de Contactos en ASP.NET WebForms

## Descripción
Esta aplicación web en VB.NET permite la gestión de contactos, ofreciendo funcionalidades para agregar, editar, eliminar y visualizar contactos, así como exportarlos a formato XML.

## Entorno de Desarrollo
- **Framework**: .NET Framework 4.7.2
- **Front-end**: Bootstrap 5.0.2 para un diseño responsivo y amigable.
- **Back-end**: VB.NET como lenguaje de programación.
- **Base de datos**: Se utiliza una base de datos local `.mdf` integrada en el proyecto, gestionada por Visual Studio.

## Estructura de la Base de Datos
Aquí puedes ver la estructura de la tabla `Contactos` utilizada en la aplicación:

![Estructura de la Tabla de Contactos](tabla_contactos.png)

## Características
- **Gestión de contactos**: Permite realizar operaciones CRUD (Crear, Leer, Actualizar, Borrar) sobre los contactos.
- **Exportación a XML**: Facilita la exportación de la lista de contactos a un archivo XML.
- **Diseño Responsivo**: Utiliza Bootstrap para asegurar una buena visualización en dispositivos móviles y de escritorio.

## Estructura de Archivos
- `Inicio.aspx`: Página principal que muestra la lista de contactos y las opciones para agregar un nuevo contacto o exportar la lista a XML.
- `AgregarContacto.aspx`: Página para agregar un nuevo contacto a la base de datos.
- `EditarContacto.aspx`: Página para editar la información de un contacto existente.
- `App_Code/`: Contiene las clases de lógica de negocio y acceso a datos.
  - `ConexionBD.vb`: Gestiona la conexión a la base de datos.
  - `ContactoDAL.vb`: Capa de acceso a datos para los contactos.
  - `ContactoDTO.vb`: Objeto de Transferencia de Datos para un contacto.
  - `ContactoXMLManager.vb`: Clase para manejar la exportación de contactos a XML.
- `App_Data/`: Contiene la base de datos `Database.mdf`.
- `Controls/`: Contiene controles de usuario reutilizables para el encabezado y pie de página.

## Configuración y Despliegue
1. Asegúrese de tener .NET Framework 4.7.2 instalado.
2. La base de datos y la tabla `Contactos` ya deben estar configuradas y listas para usarse dentro del proyecto.
3. Compile y ejecute la aplicación en Visual Studio.



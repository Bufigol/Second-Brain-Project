# Aplicación Second Brain Framework

## 🚀 Potenciando la Gestión del Conocimiento Personal

La aplicación Second Brain Framework es un sistema de gestión de conocimiento personal multiplataforma diseñado para ayudarte a capturar, organizar y conectar tus pensamientos e ideas de manera efectiva. Inspirada en la metodología "Construyendo un Segundo Cerebro", esta aplicación tiene como objetivo proporcionar un entorno robusto e intuitivo para gestionar tu base de conocimiento personal.

## 🌟 Características Principales

-   **Captura Sistemática de Información:** Reúne sin esfuerzo notas, ideas y conocimientos de diversas fuentes.
-   **Gestión de Notas Atómicas:** Crea y gestiona notas pequeñas y autónomas, centradas en un solo concepto, fomentando la claridad y la reutilización.
-   **Conexiones Semánticas:** Establece relaciones significativas entre notas, permitiéndote descubrir nuevas ideas y patrones en tu conocimiento.
-   **Disponibilidad Multiplataforma:** Accede y sincroniza sin problemas tu base de conocimiento en plataformas web y móviles.
-   **Interfaz de Usuario Intuitiva:** Disfruta de una interfaz limpia y fácil de usar diseñada para un trabajo de conocimiento enfocado.

## 🛠️ Pila de Tecnología

Esta aplicación está construida utilizando una combinación de tecnologías modernas:

-   **Backend:** Ruby on Rails - Proporciona una API robusta y escalable para manejar datos y lógica de negocio.
-   **Bases de Datos:**
    -   MySQL - Se utiliza para datos estructurados, como información de usuario, detalles de proyectos y etiquetas.
    -   MongoDB - Se utiliza para el almacenamiento flexible y sin esquema de notas atómicas, lo que permite contenido enriquecido y metadatos.
-   **Móvil:** Java (Android) - Impulsa la aplicación móvil nativa de Android, proporcionando acceso sin conexión y funciones específicas del dispositivo.
-   **Web:** JavaScript (React/Next.js) - Ofrece una experiencia web interactiva y receptiva, permitiendo el acceso desde cualquier navegador moderno.

## 📂 Estructura del Proyecto

El proyecto está organizado en los siguientes directorios:

-   `sql_scripts/`: Contiene scripts SQL para configurar la base de datos MySQL, incluyendo definiciones de esquema, migraciones y datos iniciales.
-   `backend_rails/`: Alberga el backend de API de Ruby on Rails, incluyendo modelos, controladores, servicios y pruebas.
-   `mobile_java/`: Contiene el código base Java para la aplicación móvil de Android, implementando la arquitectura MVVM y el almacenamiento local.
-   `frontend_web/`: Contiene el código base JavaScript para la aplicación web basada en React, aprovechando Next.js para el renderizado del lado del servidor y el enrutamiento.
-   `project_misc/`: Una colección de documentación relacionada con el proyecto, incluyendo este README, las guías de Contribución, la Política de Seguridad, el Código de Conducta, una Licencia de muestra y la Hoja de Ruta de Desarrollo.

## ⚙️ Configuración

Para comenzar con la aplicación Second Brain Framework, sigue estos pasos:

1.  **Clona el repositorio:**
    ```bash
    git clone [URL_del_repositorio]
    cd [directorio_del_repositorio]
    ```
2.  **Configura las bases de datos:**
    -   Configura MySQL y crea el esquema de base de datos necesario utilizando los `sql_scripts` proporcionados.
    -   Configura MongoDB y crea las colecciones necesarias.
    -   Actualiza los archivos `database.yml` en el proyecto `backend_rails` con tus credenciales de base de datos.
3.  **Instala las dependencias:**
    -   Navega al directorio `backend_rails` e instala las gemas de Ruby: `bundle install`.
    -   Navega al directorio `frontend_web` e instala las dependencias de npm: `npm install`.
    -   Navega al directorio `mobile_java` y configura tu entorno de desarrollo de Android.
4.  **Ejecuta las migraciones de la base de datos:**
    -   En el directorio `backend_rails`, ejecuta `rails db:migrate` para aplicar las migraciones de la base de datos.
    -   Es posible que debas completar la base de datos con datos de inicialización: `rails db:seed`.

## 🛡️ Seguridad

Tomamos en serio la seguridad de nuestra aplicación. Para obtener detalles sobre nuestras prácticas y políticas de seguridad, consulta el archivo [SECURITY.md](SECURITY.md).

## 🤝 Contribución

¡Agradecemos las contribuciones de la comunidad para ayudar a mejorar el Second Brain Framework! Por favor, lee nuestro archivo [CONTRIBUTING.md](CONTRIBUTING.md) para obtener guías sobre cómo contribuir de manera efectiva.

## 📜 Código de Conducta

Estamos comprometidos a fomentar un entorno inclusivo y acogedor para todos los contribuyentes. Por favor, lee nuestro archivo [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md) para obtener detalles.

## 📝 Licencia

Este proyecto está licenciado bajo los términos de la [Licencia Pública General de GNU v3](LICENSE.md). Consulta el archivo [LICENSE.md](LICENSE.md) para obtener más información.

## 📞 Contacto

Para cualquier pregunta, inquietud o comentario, contáctanos en [f.vasquez.tort@protonmail.me](mailto:f.vasquez.tort@protonmail.me).

## 🗺️ Hoja de Ruta de Desarrollo

Para obtener una visión general del plan de desarrollo del proyecto y los hitos clave, consulta el archivo [Second Brain Project - Desarrollo Paso a Paso.md](Second%20Brain%20Project%20-%20Desarrollo%20Paso%20a%20Paso.md).

---

¡Construyamos juntos el futuro de la gestión del conocimiento personal!
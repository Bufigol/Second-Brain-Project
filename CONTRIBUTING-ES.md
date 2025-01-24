# 🧠 Contribuyendo a Second Brain Framework

## 📋 Descripción General del Proyecto

Second Brain Framework es una aplicación multiplataforma para la gestión del conocimiento personal. Nuestro objetivo es capacitar a los usuarios para que capturen, conecten y utilicen su conocimiento de manera efectiva. Agradecemos las contribuciones de la comunidad para ayudarnos a lograrlo.

## 🔧 Pila de Tecnología

Aquí está la pila de tecnología que estamos utilizando para este proyecto:

-   **Backend:** Ruby on Rails
-   **Bases de Datos:** MySQL, MongoDB
-   **Móvil:** Java (Android)
-   **Web:** JavaScript (React/Next.js)

## 🤝 Guías para la Contribución

¡Agradecemos tu interés en contribuir a Second Brain Framework! Para asegurar un proceso fluido y colaborativo, por favor, adhiérete a las siguientes guías.

### 🌿 Flujo de Trabajo de Desarrollo

1.  **Haz un "fork" del repositorio:** Comienza creando tu propia copia ("fork") del repositorio en GitHub.
2.  **Crea una rama descriptiva:** Antes de comenzar cualquier trabajo, crea una nueva rama desde la rama `main` con un nombre claro que indique el tipo de trabajo y la característica/corrección que aborda.

    ```bash
    git checkout -b [tipo]/[descripción]
    # Ejemplos:
    # git checkout -b feature/conexiones-semánticas
    # git checkout -b fix/problema-sincronización-notas
    ```
3.  **Haz commit con un mensaje estructurado:** Utiliza un formato estructurado para tus mensajes de commit. Esto ayuda a comprender los cambios y mantiene el historial de commit limpio.

    ```bash
    git commit -m "tipo(alcance): breve descripción

    Explicación detallada si es necesario.
    Cierra #número-de-incidencia"
    ```

    **Ejemplo de Mensaje de Commit:**

    ```
    git commit -m "fix(web): Resolver error de inicio de sesión con credenciales inválidas

    Este commit aborda un error donde los usuarios no podían iniciar sesión
    si ingresaban credenciales inválidas. Añade un mensaje de error
    apropiado para este escenario.
    Cierra #123"
    ```

### Tipos de Commit

Utilizamos los siguientes tipos de commit para clasificar los cambios:

-   `feat`: Nueva funcionalidad
-   `fix`: Corrección de error
-   `docs`: Actualizaciones de documentación
-   `refactor`: Mejoras de código (sin cambiar la funcionalidad)
-   `test`: Modificaciones de pruebas
-   `chore`: Tareas de mantenimiento (scripts de construcción, dependencias, etc.)

## 🎨 Guías Específicas de Lenguaje

Por favor, adhiérete a las siguientes guías cuando trabajes con tecnologías específicas en nuestro proyecto.

### Ruby on Rails (Backend)

-   Sigue la [Guía de Estilo de Ruby](https://rubystyle.guide/).
-   Utiliza [RuboCop](https://docs.rubocop.org/) para el análisis de código (linting) y mantener la calidad del código.
-   Escribe pruebas RSpec exhaustivas para asegurar la robustez.
-   Implementa endpoints de API RESTful que se adhieran a las mejores prácticas.
-   Utiliza objetos de servicio para la lógica de negocio compleja para mantener los controladores delgados.
-   Implementa mecanismos de autenticación seguros (por ejemplo, JWT).

### JavaScript (Web Frontend)

-   Adhiérete a las mejores prácticas de [React](https://reactjs.org/) y [Next.js](https://nextjs.org/).
-   Utiliza ESLint para la calidad y consistencia del código.
-   Diseña componentes con la reutilización y la modularidad en mente.
-   Optimiza tu código para el rendimiento.
-   Asegura una UI responsiva y accesible.
-   Utiliza herramientas de gestión de estado adecuadas (por ejemplo, Redux, Context API).

### Java (Aplicación Móvil)

-   Sigue los estándares de [Desarrollo de Android](https://developer.android.com/guide).
-   Implementa la [arquitectura MVVM](https://developer.android.com/topic/architecture/mvvm) para una clara separación de responsabilidades.
-   Escribe pruebas unitarias y de UI completas.
-   Optimiza la aplicación para el rendimiento móvil.
-   Asegura una sincronización de datos fluida entre la aplicación y el backend.

### Prácticas de Base de Datos

#### MySQL & MongoDB

-   Utiliza convenciones de nomenclatura significativas y consistentes para tablas/colecciones, columnas/campos.
-   Implementa estrategias de indexación eficientes para el rendimiento.
-   Asegura la validación de datos a nivel de aplicación y/o base de datos.
-   Gestiona los cambios de esquema de la base de datos utilizando migraciones.
-   Optimiza las consultas de la base de datos para el rendimiento.

## 🚨 Proceso de Contribución

1.  **Abre una Incidencia en GitHub:** Antes de comenzar cualquier trabajo significativo, por favor, abre una incidencia en GitHub para discutir los cambios o correcciones de errores propuestos. Esto nos permite coordinar y asegurar que tus contribuciones se alineen con los objetivos del proyecto.
2.  **Discute los Cambios Propuestos:** Participa en discusiones con los mantenedores del proyecto y otros colaboradores en la incidencia de GitHub. Aclara los requisitos y explora posibles enfoques de implementación.
3.  **Crea una Solicitud de Extracción (Pull Request - PR):** Una vez que estés listo para enviar tu trabajo, crea una solicitud de extracción contra la rama `main`. Asegúrate de hacer referencia a la incidencia de GitHub asociada en la descripción del PR.
4.  **Pasa las Verificaciones Automatizadas de CI/CD:** Tu PR se someterá automáticamente a verificaciones de CI/CD, incluyendo pruebas y análisis de código (linting). Asegúrate de que todas las verificaciones pasen antes de solicitar una revisión.
5.  **Completa la Revisión de Código:** Los mantenedores del proyecto revisarán tu código. Mantente abierto a la retroalimentación y realiza los cambios necesarios para abordar los comentarios.
6.  **Fusiona Después de la Aprobación:** Una vez que la revisión del código esté completa y todos los comentarios se hayan abordado, tu PR se fusionará en la rama `main`.

## 📦 Referencia de la Estructura del Proyecto

-   `sql_scripts/`: Contiene scripts SQL para la configuración y migraciones de la base de datos.
-   `backend_rails/`: Alberga el backend de API de Rails.
-   `mobile_java/`: Contiene el código base Java para la aplicación móvil de Android.
-   `frontend_web/`: Contiene el código base de la aplicación web React.
-   `project_misc/`: Una colección de documentación, guías y archivos misceláneos.

## 🔍 Criterios de Revisión

Tus contribuciones se revisarán basándose en los siguientes criterios:

-   **Calidad del Código:** ¿Es el código limpio, bien organizado y fácil de entender?
-   **Rendimiento:** ¿Está la implementación optimizada para el rendimiento?
-   **Seguridad:** ¿Sigue el código las mejores prácticas de seguridad?
-   **Cobertura de Pruebas:** ¿Hay suficientes pruebas unitarias y de integración?
-   **Documentación:** ¿Está el código bien documentado, incluyendo comentarios en línea y actualizaciones del README?
-   **Consistencia Arquitectónica:** ¿Encaja la implementación dentro de la arquitectura general y las convenciones del proyecto?

## 💡 Áreas Clave de Enfoque

Al contribuir, por favor, considera estas áreas centrales de la aplicación:

-   **Gestión de Notas Atómicas:** Creación, almacenamiento y recuperación eficientes de notas atómicas.
-   **Conexiones Semánticas:** Establecer y utilizar relaciones semánticas entre notas.
-   **Sincronización Multiplataforma:** Asegurar una sincronización de datos fluida y consistente entre la web y el móvil.
-   **Flujo de Trabajo de Captura de Conocimiento:** Implementar un flujo de trabajo intuitivo para que los usuarios capturen, organicen y utilicen su conocimiento.

---

🚀 ¡Estamos emocionados de ver tus contribuciones! ¡Construyamos juntos el futuro de la gestión del conocimiento personal!
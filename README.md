Reto de Automatización QA - BackEnd (ServeRest)

Este proyecto contiene la resolución del reto técnico de automatización para el endpoint `/usuarios` de la API ServeRest.

Tecnologías y Frameworks Utilizados
- Lenguaje Java 8
- Framework principal: Karate DSL 1.2.0.RC2 
- Gestor de dependencias: Maven
- IDE: IntelliJ IDEA

Estrategia de Automatización e Informe Técnico
1. Organice el proyecto aislando los entornos globales en karate-config.js de la suite de pruebas funcionales users.feature.
2. Diseñe flujos integrados de principio a fin que cubren la creación (POST), consulta por ID (GET), actualización (PUT) y eliminar (DELETE) de recursos en un mismo flujo lógico interconectado.
3. Inclui escenarios de control de errores para validar la respuesta correcta del servidor (Estatus 400) ante correos duplicados e identificadores inexistentes.
4. Invalidación estricta de estructuras mediante esquemas JSON de Karate (string, number) asegurando que los tipos de datos recibidos se mantengan consistentes con la documentación de la API.

Ejecución
Para descargar las dependencias y ejecutar toda la suite de pruebas automatizadas de forma limpia, correr el siguiente comando en el IntelliJ:
```bash
mvn clean test
```
Reportes de la Ejecución
Al finalizar el proceso, los reportes interactivos en formato HTML nativo de Karate se generan automáticamente en la siguiente ruta local del proyecto:
`target/karate-reports/karate-summary.html`

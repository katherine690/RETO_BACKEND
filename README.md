# Reto de Automatización QA - BackEnd (ServeRest)

Este proyecto contiene la resolución del reto técnico de automatización para el endpoint `/usuarios` de la API ServeRest, desarrollado bajo estrictas buenas prácticas de ingeniería de calidad utilizando Karate DSL.

## 🛠️ Tecnologías y Frameworks Utilizados
- **Lenguaje base:** Java 8
- **Framework principal:** Karate DSL 1.2.0.RC2 (Optimizado para máxima compatibilidad local)
- **Gestor de dependencias:** Maven
- **IDE:** IntelliJ IDEA

## 🎯 Estrategia de Automatización e Informe Técnico
1. **Estructura Limpia:** Se organizó el proyecto aislando los entornos globales en `karate-config.js` de la suite de pruebas funcionales `users.feature`.
2. **Cobertura CRUD Completa:** Se automatizaron flujos integrados de principio a fin que cubren la creación (POST), consulta por ID (GET), actualización (PUT) y remoción (DELETE) de recursos en un mismo flujo lógico interconectado.
3. **Casos Negativos y Robustez:** Se incluyeron escenarios de control de errores para validar la respuesta correcta del servidor (Estatus 400) ante correos duplicados e identificadores inexistentes.
4. **Validación de Contratos (Esquemas):** Se implementó validación estricta de estructuras mediante esquemas JSON de Karate (`#string`, `#number`) asegurando que los tipos de datos recibidos se mantengan consistentes con la documentación de la API.
5. **Estabilidad de Datos:** Se optimizó la inserción utilizando aserciones lógicas condicionales nativas del framework para mitigar colisiones por registros previos y garantizar la repetibilidad de la suite en entornos de integración continua (CI).

## 🚀 Instrucciones de Ejecución
Para descargar las dependencias y ejecutar toda la suite de pruebas automatizadas de forma limpia, corre el siguiente comando en tu terminal de IntelliJ:

```bash
mvn clean test
```

## 📊 Reportes de Ejecución
Al finalizar el proceso, los reportes interactivos en formato HTML nativo de Karate se generan automáticamente en la siguiente ruta local del proyecto:
`target/karate-reports/karate-summary.html`

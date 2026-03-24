# 🚀 Demoblaze API Automation - Karate DSL

![Karate DSL](https://img.shields.io/badge/Framework-Karate%20DSL-blue?style=for-the-badge)
![Java](https://img.shields.io/badge/Java-11%2B-orange?style=for-the-badge)
![Maven](https://img.shields.io/badge/Build-Maven-red?style=for-the-badge)

Este proyecto contiene una suite de pruebas automatizadas para la API de **[Demoblaze](https://www.demoblaze.com/)**, cubriendo los procesos críticos de registro y autenticación de usuarios.

---

## 📋 Tabla de Contenidos
1. [Escenarios de Prueba](#-escenarios-de-prueba)
2. [Requisitos Previos](#-requisitos-previos)
3. [Configuración e Instalación](#-configuración-e-instalación)
4. [Ejecución de Pruebas](#-ejecución-de-pruebas)
5. [Reportes](#-reportes)
6. [Tecnologías Utilizadas](#-tecnologías-utilizadas)

---

## 🧪 Escenarios de Prueba

La suite valida los siguientes flujos utilizando el estándar **Gherkin**:

* **POST /signup**:
    * Creación exitosa de usuario con datos aleatorios (`UUID`).
    * Validación de error al intentar registrar un nombre de usuario ya existente.
* **POST /login**:
    * Autenticación exitosa (retorno de `Auth_token`).
    * Validación de error con contraseña incorrecta.

---
## 🛠️ Requisitos Previos

Java JDK 11 o superior.
IntelliJ IDEA (Versión Community o Ultimate).
Plugin de Karate para IntelliJ (opcional, para resaltado de sintaxis).

---
## ⚙️ Configuración e Instalación

Clonar/Descargar: Descarga este repositorio en tu máquina.
Abrir en IntelliJ: Selecciona File > Open.

Navega hasta la carpeta y selecciona el archivo pom.xml.

Haz clic en Open as Project.

Carga de Dependencias: Maven descargará automáticamente Karate DSL y JUnit 5.

---
## 🚀 Ejecución de Pruebas

Desde la Interfaz (IDE)
Busca el archivo src/test/java/tests/RunTest.java.

Haz clic derecho sobre el archivo y selecciona Run 'RunTest'.

---

## 📊 Reportes

Karate genera automáticamente un reporte visual muy potente. Una vez terminada la prueba, abre el siguiente archivo en tu navegador:

"target/karate-reports/karate-summary.html"

Este reporte incluye:

Tiempo de respuesta de cada petición.
Detalle de los JSON enviados y recibidos.

---

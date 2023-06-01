# TourismApp

Esta es una aplicación web de turismo que permite a los usuarios seleccionar destinos, explorar negocios locales, comprar productos y reservar hoteles.

## Tecnologías Utilizadas

- Java
- JSP (JavaServer Pages)
- Servlets
- OracleSQL
- HTML
- CSS
- JavaScript

## Requisitos

Para ejecutar esta aplicación, necesitarás tener instalado lo siguiente:

- Java Development Kit (JDK)
- Apache Tomcat Server
- OracleSQL
- NetBeans
- Maven

## Configuración

Sigue los pasos a continuación para configurar y ejecutar la aplicación:

1. Clona este repositorio en tu máquina local:

   ```shell
   git clone https://github.com/JeisonRoblero/TourismApp.git
   ```

2. Navega hasta el directorio del proyecto:
  
  ```shell
   cd TourismApp
   ```
3. Importa la base de datos:

- Abre Sql developer oo cualquier otra herramienta de cliente de Oracle SQL.
- Crea una nueva base de datos llamada tourism.
- Importa los archivos sql ubicados en el directorio sql a la base de datos tourism.

4. Actualiza la configuración de la base de datos:

- Abre el archivo `src/java/com/project/clases/ConexionOracle.java`.
- Actualiza la URL, el nombre de usuario y la contraseña de la base de datos si es necesario.
- Construye la aplicación:

5. Despliega el archivo WAR generado (`TourismApp.war`) en el servidor Apache Tomcat.
6. Accede a la aplicación en tu navegador web en `http://localhost:8080/TourismApp`.

## Contribuciones
Se aceptan contribuciones a este proyecto. Si tienes alguna sugerencia o mejora, crea un nuevo issue o envía un pull request.

## Licencia
Este proyecto está licenciado bajo la Licencia MIT.

## Capturas
![image](https://github.com/JeisonRoblero/TourismApp/assets/89631773/cf71a70f-36c3-4961-a7f4-1b8f7962d45b)
![image](https://github.com/JeisonRoblero/TourismApp/assets/89631773/daf74895-338f-4ac4-880f-2efc4ed3f984)
![image](https://github.com/JeisonRoblero/TourismApp/assets/89631773/ff1c9781-6b29-467b-a4ed-4b6c6aaee48a)
![image](https://github.com/JeisonRoblero/TourismApp/assets/89631773/feaca239-2719-40d4-a1aa-593a4aa13d5b)
![image](https://github.com/JeisonRoblero/TourismApp/assets/89631773/50e429ea-74f2-4412-bbaf-a46283b04520)
![image](https://github.com/JeisonRoblero/TourismApp/assets/89631773/564776d3-dba8-430f-b86b-29dd976d1b19)
![image](https://github.com/JeisonRoblero/TourismApp/assets/89631773/0e59eb5d-faea-4ee9-ab76-0db94c7f6d69)
![image](https://github.com/JeisonRoblero/TourismApp/assets/89631773/836fc238-ea34-4c56-9bf7-11dfdbc84a4c)

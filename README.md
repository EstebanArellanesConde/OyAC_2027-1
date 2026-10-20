# Organización y Arquitectura de Computadoras — 2027-1

Repositorio de apuntes, ejercicios, tareas y prácticas de la asignatura **Organización y Arquitectura de Computadoras (OyAC)**, correspondiente al semestre 2027-1 de la Facultad de Ingeniería de la Universidad Nacional Autónoma de México (UNAM).

El objetivo de este repositorio es mantener organizados los materiales del curso, documentar las soluciones desarrolladas y conservar evidencia técnica de las implementaciones realizadas durante el semestre.

## 📚 Contenido

- **Sistemas de control y cartas ASM:** diseño, análisis y documentación de máquinas de estados algorítmicas.
- **Métodos de direccionamiento:** entrada-estado, trayectoria e implícito.
- **Secuenciadores:** direccionamiento de instrucciones, continuación, saltos condicionales, saltos de transformación e interrupciones.
- **Diseño digital:** descripción e implementación de circuitos digitales.
- **VHDL:** entidades, arquitecturas, máquinas de estados y lógica secuencial.
- **Intel Quartus Prime:** configuración de proyectos, compilación, asignación de pines y depuración.
- **Diagramas de bloques (.BDF):** integración de módulos VHDL y conexiones de entradas y salidas.
- **Tareas y prácticas:** soluciones, resultados, observaciones y documentación técnica.

## 🛠️ Herramientas

| Herramienta | Uso |
|---|---|
| Intel Quartus Prime Lite 20.1 | Diseño, síntesis y compilación de circuitos digitales. |
| VHDL | Descripción de hardware digital. |
| Block Diagram/Schematic File (.BDF) | Integración gráfica de módulos y señales. |
| Git y GitHub | Control de versiones y documentación. |

## 📂 Organización del repositorio

Los archivos se organizan de acuerdo con las tareas, prácticas y temas del curso. Cada directorio o conjunto de archivos debe contener los materiales correspondientes a su actividad.

Los archivos de diseño se conservan junto con su documentación y dependencias necesarias para facilitar su revisión y reproducción.

## 💻 Flujo de trabajo en Quartus Prime

Para trabajar con los proyectos de diseño digital:

1. Abrir el proyecto mediante su archivo `.qpf`.
2. Verificar los archivos fuente `.vhd` y los diagramas `.bdf` incluidos en el proyecto.
3. Confirmar que el nombre de la entidad principal (*Top-Level Entity*) coincida con el diseño superior.
4. Revisar las conexiones entre los módulos, los nombres de las señales y sus anchos.
5. Configurar las asignaciones de pines cuando el diseño se vaya a implementar en la FPGA.
6. Ejecutar **Processing → Start Compilation**.
7. Revisar los mensajes de compilación y corregir los errores antes de continuar.

### Convenciones de diseño

- Mantener consistentes los nombres de las entidades, arquitecturas, módulos y señales.
- Evitar declaraciones duplicadas de entidades en la biblioteca de trabajo.
- Separar el diseño superior de los módulos internos cuando se utilicen diagramas `.BDF`.
- Documentar las entradas, salidas, señales de control y estados relevantes.
- Conservar los archivos fuente necesarios para reproducir cada diseño.

## 📝 Documentación y criterios

Las soluciones y prácticas se documentan procurando incluir, según corresponda:

- Enunciado u objetivo de la actividad.
- Fundamento teórico y método utilizado.
- Carta ASM, tabla de estados o diagrama

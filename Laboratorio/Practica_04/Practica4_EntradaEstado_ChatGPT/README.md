# Práctica 4 — Memorias con direccionamiento Entrada-Estado

Proyecto base para Quartus Prime / ModelSim. La implementación separa la memoria de control (ROM) de la lógica de secuenciación.

## Archivos
- `practica4.vhd`: secuenciador y memoria de control.
- `tb_practica4.vhd`: testbench básico.
- `practica4.qsf`: configuración mínima de proyecto Quartus.
- `practica4.qpf`: archivo de proyecto.
- `Practica4.sdc`: reloj de simulación/síntesis (ajustar al reloj de la tarjeta).
- `memoria_entrada_estado.csv`: tabla legible de la memoria.

## Importante
La hoja de la práctica muestra una carta ASM, pero no especifica tarjeta FPGA, pines ni frecuencia de reloj. Por ello el QSF no asigna pines físicos y el proyecto es portable. Debes asignarlos en Pin Planner según tu tarjeta.

La carta escaneada tiene algunos bloques de salida poco legibles/vacíos. La tabla implementa los rótulos que sí se distinguen y explicita las decisiones interpretadas. Verifica los rótulos con tu profesor antes de entregar.

## Interfaz
`clk`, `reset`, `Z`, `W`, `X`, `Y` son entradas. `estado` permite observar el estado presente; `prueba` muestra el bit probado; `estado_siguiente` muestra el estado siguiente; `salidas(5 downto 0)` representa S5..S0.

Codificación de estados: A=000, B=001, C=010, D=011, E=100, F=101, G=110.

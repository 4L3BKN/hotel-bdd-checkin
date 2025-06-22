# Base de Datos para Sistema de Check-in/Check-out de Hotel

Este repositorio contiene el diseño e implementación de la base de datos para una aplicación web que simula el funcionamiento de un hotel con gestión de reservas, habitaciones y tours.

El proyecto fue desarrollado en conjunto, pero toda la parte de base de datos fue de mi autoría: modelado, creación de tablas, views, stored procedures, functions y triggers.

## Funcionalidades

- Modelado relacional de un sistema hotelero con huéspedes, reservas, habitaciones y tours.
- Triggers que automatizan operaciones clave como:
  - Actualización automática del total a pagar por tours.
  - Cálculo de días de estadía.
  - Validación de que las fechas de los tours estén dentro del periodo de la reserva.
- Functions que calculan dinámicamente:
  - El total por concepto de tours.
  - El precio final total considerando estadía y tours.
- Procedures para consultar reservas actuales e historicas.
- Views que resumen información útil, como las calificaciones por habitación.
- Estructura lista para integrarse con una aplicación web en PHP (no incluida en este repositorio).

## Tecnologías

- MySQL
- SQL (DDL, DML, DCL)
- Stored Procedures
- Triggers
- Views
- Functions

## Estructura del repositorio

- `tablas/`: scripts para crear las tablas del modelo relacional.
- `triggers/`: automatización de reglas de negocio.
- `procedures/`: procedimientos para consultas reutilizables.
- `functions/`: funciones para cálculos dinámicos.
- `views/`: vistas para reportes y dashboards.

## Notas

- Este proyecto fue parte de una asignatura universitaria.
- Todo el diseño e implementación de la base de datos fue realizado por mí.
- La aplicación web asociada fue implementada por un compañero y no está incluida aquí.

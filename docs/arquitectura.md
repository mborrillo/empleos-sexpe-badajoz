# Arquitectura

## Objetivo

Transformar boletines PDF en información estructurada y analizable.

## Flujo

1. Recepción de boletín PDF
2. Almacenamiento en repositorio documental
3. Extracción de texto
4. Clasificación mediante LLM
5. Generación de JSON estructurado
6. Inserción en PostgreSQL
7. Explotación analítica

## Componentes

### Repositorio documental

Almacena PDFs originales.

### OpenAI

Responsable de:

- Extracción
- Clasificación
- Normalización
- Identificación de skills

### PostgreSQL (Neon)

Fuente maestra del dato.

### Power BI

Consumo analítico.

## Principios

- Mantener PDF original.
- Mantener texto original.
- Separar capa operacional de capa analítica.
- No perder información durante la transformación.

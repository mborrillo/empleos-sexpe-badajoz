# Empleos Sexpe Badajoz

Proyecto para la extracción, almacenamiento y análisis de los boletines de empleo del Ayuntamiento de Badajoz.

## Objetivos

- Extraer automáticamente ofertas de empleo.
- Extraer convocatorias de empleo público.
- Extraer acciones formativas.
- Construir una base histórica consultable.
- Analizar tendencias del mercado laboral.

## Arquitectura

PDF
→ OpenAI
→ PostgreSQL (Neon)
→ Views Analíticas
→ Power BI / Looker Studio

## Componentes

### PostgreSQL

Base operacional normalizada (3FN).

### OpenAI

Extracción estructurada desde PDF.

### n8n

Automatización del pipeline.

### Power BI

Visualización y análisis.

## Estado

Fase actual:
Diseño de modelo de datos y extracción.

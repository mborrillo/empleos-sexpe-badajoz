# Proceso de Extracción

## Objetivo

Transformar un boletín PDF en datos estructurados almacenados en PostgreSQL.

---

# Flujo General

PDF
↓
Extracción JSON
↓
Validación JSON
↓
Carga PostgreSQL
↓
Power BI

---

# Paso 1 - Incorporar PDF

Guardar el nuevo boletín en:

samples/

Ejemplo:

boletin_516.pdf

Realizar commit en GitHub.

---

# Paso 2 - Extraer Información

Utilizar:

prompts/extraction_prompt_v1.md

y

schemas/full_boletin.schema.json

para generar:

boletin_516_output.json

Guardar el resultado en:

samples/

---

# Paso 3 - Validar JSON

Verificar:

* JSON válido
* Cumple schema
* No existen campos vacíos incorrectos
* Fechas en formato YYYY-MM-DD

---

# Paso 4 - Revisar Manualmente

Validar:

* Número de ofertas
* Número de cursos
* Número de convocatorias públicas

Comprobar especialmente:

* competencias
* salarios
* localidades
* empresas

---

# Paso 5 - Cargar PostgreSQL

Seguir el proceso definido en:

docs/proceso_carga_neon.md

Orden:

1. boletines
2. localidades
3. empresas
4. ofertas
5. publicaciones
6. competencias
7. empleo público
8. formación

---

# Paso 6 - Verificación

Ejecutar consultas de control.

Ejemplos:

SELECT COUNT(*) FROM ofertas;

SELECT COUNT(*) FROM empleo_publico;

SELECT COUNT(*) FROM formaciones;

---

# Paso 7 - Actualizar Dashboard

Actualizar Power BI.

Verificar:

* nuevas ofertas
* nuevas competencias
* nuevas localidades

---

# Frecuencia

Cada vez que se publique un nuevo boletín.

Actualmente:

1 boletín cada 2 o 3 días.

---

# Regla Principal

El PDF original nunca se modifica ni se elimina.

Siempre conservar:

* PDF original
* JSON generado
* Datos cargados en PostgreSQL


# Modelo de Competencias

## Objetivo

Extraer y estructurar información relacionada con requisitos, competencias, certificaciones y conocimientos solicitados en las ofertas de empleo.

El objetivo es permitir análisis históricos sobre la demanda laboral en la provincia de Badajoz.

---

# Principios

## No almacenar únicamente texto libre

Los requisitos completos seguirán almacenándose en la tabla `ofertas.requisitos`.

Adicionalmente, se extraerán elementos estructurados para análisis.

Ejemplo:

Texto original:

"Experiencia mínima de 2 años, carnet B, conocimientos de inglés y manejo de SAGE50."

Extracción:

* Carnet B
* Inglés
* SAGE50
* Experiencia 2 años

---

# Dimensiones de Competencias

Se identifican las siguientes categorías.

## Skills Generales

Competencias profesionales genéricas.

Ejemplos:

* Atención al cliente
* Trabajo en equipo
* Liderazgo
* Negociación
* Gestión administrativa
* Organización
* Comunicación
* Resolución de problemas

---

## Software

Herramientas informáticas específicas.

Ejemplos:

* Excel
* Word
* Power BI
* SAP
* SAGE50
* Contaplus
* AutoCAD
* Photoshop
* Lightroom
* Adobe Premiere
* After Effects

---

## Idiomas

Idiomas solicitados.

Ejemplos:

* Español
* Inglés
* Portugués
* Francés
* Alemán

Cuando sea posible se extraerá también el nivel:

* Básico
* Intermedio
* Avanzado
* Nativo

---

## Carnets y Licencias

Permisos oficiales.

Ejemplos:

* Carnet B
* Carnet C
* Carnet C+E
* CAP
* Tacógrafo
* Licencia de maquinaria agrícola

---

## Certificaciones

Acreditaciones específicas.

Ejemplos:

* PRL Construcción
* Certificado de Profesionalidad
* MIFID
* LCCI
* Certificación Fotovoltaica

---

## Formación Académica

Nivel educativo requerido.

Ejemplos:

* ESO
* Bachillerato
* FP Grado Medio
* FP Grado Superior
* Grado Universitario
* Máster

También se almacenará la especialidad cuando sea posible.

Ejemplos:

* FP Electricidad
* ADE
* Relaciones Laborales
* Ingeniería Industrial

---

## Experiencia

Experiencia requerida.

Ejemplos:

* Sin experiencia
* 1 año
* 2 años
* 5 años

Se almacenará en años cuando sea posible.

---

# Modelo de Datos

## Tabla competencia_tipo

Tipos de competencia.

Valores iniciales:

* SKILL
* SOFTWARE
* IDIOMA
* CARNET
* CERTIFICACION
* FORMACION
* EXPERIENCIA

---

## Tabla competencias

Catálogo único.

Ejemplos:

Excel
Inglés
Carnet B
SAP
PRL Construcción

---

## Tabla oferta_competencia

Relaciona ofertas con competencias.

Una oferta puede tener múltiples competencias.

Una competencia puede aparecer en múltiples ofertas.

---

# Reglas de Extracción

## Regla 1

No inventar competencias.

Solo extraer información explícitamente presente.

---

## Regla 2

Normalizar nombres.

Ejemplos:

"permiso B"

↓

"Carnet B"

---

"ingles"

↓

"Inglés"

---

## Regla 3

Evitar duplicados.

Ejemplo:

"Excel"

"Microsoft Excel"

↓

Excel

---

# Catálogo Inicial

## Software

Excel
Word
PowerPoint
Power BI
SAP
SAGE50
Contaplus
AutoCAD
Photoshop
Lightroom
Adobe Premiere
After Effects

---

## Idiomas

Español
Inglés
Portugués
Francés
Alemán

---

## Carnets

Carnet AM
Carnet A1
Carnet A2
Carnet B
Carnet C
Carnet C+E
CAP
Tacógrafo

---

## Certificaciones

PRL
MIFID
LCCI
Certificado Profesionalidad

---

# Casos Especiales

## Según convenio

No se considera competencia.

## Disponibilidad para viajar

Se almacena como skill general.

## Incorporación inmediata

No se almacena como competencia.

## Vehículo propio

Se almacena como requisito adicional.

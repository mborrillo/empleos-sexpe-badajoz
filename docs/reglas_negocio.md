# Reglas de Negocio

## Oferta única

Una oferta se considera única cuando coincide:

- título normalizado
- localidad
- empresa

Ejemplo:

CAMARERO
BADAJOZ
Empresa X

Si aparece en varios boletines:

- misma oferta
- varias publicaciones

## Salarios

### Mensuales

1424 euros mensuales

↓

valor_min = 1424
valor_max = 1424
periodicidad = MENSUAL

### Anuales

24000 euros anuales

↓

valor_min = 24000
valor_max = 24000
periodicidad = ANUAL

### Según convenio

valor_min = null
valor_max = null

## Skills

Se almacenan de forma individual.

Ejemplo:

Carnet B
Inglés
Soldadura

## Empresa desconocida

empresa_id = null

## Localidad

Siempre se normaliza.

Ejemplo:

BADAJOZ
Badajoz
badajoz

↓

BADAJOZ

## Contratos

Se convierten al catálogo oficial.

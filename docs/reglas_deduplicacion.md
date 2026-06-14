# Estrategia de Deduplicación

## Objetivo

Identificar publicaciones repetidas de una misma oferta.

## Niveles

### Nivel 1
Matching determinista

Campos:

- titulo_normalizado
- localidad
- empresa

### Nivel 2
Matching semántico

OpenAI

Umbral:

0.95

## Regla

Nunca eliminar publicaciones.

Una oferta puede aparecer múltiples veces.

## Métricas derivadas

- persistencia
- tiempo medio de cobertura
- republicaciones
- ofertas activas

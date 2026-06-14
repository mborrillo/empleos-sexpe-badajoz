# Modelo de Datos

## Entidades principales

### boletines

Representa cada boletín recibido.

### ofertas

Representa una oferta única.

Una oferta puede aparecer en varios boletines.

### publicaciones_oferta

Relaciona una oferta con un boletín.

### skills

Competencias detectadas.

### empleo_publico

Convocatorias públicas.

### formaciones

Cursos y acciones formativas.

## Relaciones

boletines
|
+-- publicaciones_oferta
|
+-- publicaciones_empleo_publico
|
+-- publicaciones_formacion

ofertas
|
+-- oferta_skill
|
+-- empresas
|
+-- localidades
|
+-- sectores

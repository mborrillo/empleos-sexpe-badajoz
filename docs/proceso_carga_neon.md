# Proceso de Carga Neon

## Orden de carga

### 1. Boletín

Insertar en:

boletines

Obtener:

boletin_id

---

### 2. Localidades

Por cada localidad detectada:

* buscar existencia
* si no existe, insertar

Obtener:

localidad_id

---

### 3. Sectores

Buscar sector existente.

Obtener:

sector_id

---

### 4. Empresas

Si existe empresa:

* buscar
* insertar si no existe

Obtener:

empresa_id

---

### 5. Oferta

Insertar en:

ofertas

Obtener:

oferta_id

---

### 6. Publicación

Insertar en:

publicaciones_oferta

Relacionar:

* oferta_id
* boletin_id

---

### 7. Competencias

Para cada competencia:

* buscar por nombre_normalizado
* insertar si no existe

Obtener:

competencia_id

---

### 8. Oferta Competencia

Insertar relación:

oferta_id
competencia_id

---

### 9. Empleo Público

Insertar:

organismos
empleo_publico
publicaciones_empleo_publico

---

### 10. Formación

Insertar:

entidades_formacion
formaciones
publicaciones_formacion

## Regla

Nunca insertar duplicados de catálogos:

* sectores
* localidades
* empresas
* organismos
* entidades_formacion
* competencias

Usar búsqueda previa o UPSERT.

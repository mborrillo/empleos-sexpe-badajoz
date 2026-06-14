# Carga de Boletín

## Objetivo

Insertar un JSON de boletín en PostgreSQL respetando:

* catálogos
* relaciones
* deduplicación

---

# Flujo

boletin.json
↓
boletines
↓
localidades
↓
empresas
↓
ofertas
↓
publicaciones_oferta
↓
competencias
↓
oferta_competencia
↓
empleo_publico
↓
formacion

---

# Reglas

## Localidades

Buscar por nombre.

Si no existe:

INSERT

Si existe:

usar localidad_id existente.

---

## Empresas

Buscar por nombre.

Si no existe:

INSERT

Si existe:

usar empresa_id existente.

---

## Competencias

Buscar por:

nombre_normalizado

Si no existe:

INSERT

Si existe:

usar competencia_id existente.

---

## Oferta

Calcular fingerprint:

titulo_normalizado
+
localidad
+
empresa

Si existe:

NO crear nueva oferta.

Crear únicamente nueva publicación.

---

## Publicación

Siempre crear registro en:

publicaciones_oferta

porque un mismo puesto puede aparecer en varios boletines.

---

## Empleo Público

Misma lógica.

Reutilizar organismos existentes.

---

## Formación

Misma lógica.

Reutilizar entidades formadoras existentes.

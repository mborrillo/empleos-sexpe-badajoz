# Mapeo JSON → PostgreSQL

## boletin

JSON

```json
{
  "numero_boletin": 513,
  "fecha_publicacion": "2026-06-12"
}
```

Tabla

boletines

| JSON              | PostgreSQL         |
| ----------------- | ------------------ |
| numero_boletin    | numero_boletin     |
| fecha_publicacion | fecha_publicacion  |
| nombre_archivo    | nombre_archivo     |
| fuente            | url_pdf (opcional) |

---

## empleo_privado

Tabla principal

ofertas

| JSON                   | PostgreSQL           |
| ---------------------- | -------------------- |
| titulo                 | titulo               |
| descripcion            | descripcion          |
| requisitos             | requisitos           |
| contrato               | contrato             |
| jornada                | jornada              |
| salario.valor_min      | salario_min          |
| salario.valor_max      | salario_max          |
| salario.periodicidad   | salario_periodicidad |
| salario.texto_original | salario_texto        |

---

## localidad

Tabla

localidades

| JSON      | PostgreSQL |
| --------- | ---------- |
| localidad | nombre     |

---

## empresa

Tabla

empresas

| JSON    | PostgreSQL |
| ------- | ---------- |
| empresa | nombre     |

---

## sector

Tabla

sectores

| JSON   | PostgreSQL |
| ------ | ---------- |
| sector | nombre     |

---

## publicación de oferta

Tabla

publicaciones_oferta

| PostgreSQL        |
| ----------------- |
| oferta_id         |
| boletin_id        |
| fecha_publicacion |

---

## contacto

Tabla

contactos

| JSON              | PostgreSQL |
| ----------------- | ---------- |
| contacto.email    | email      |
| contacto.telefono | telefono   |

---

## relación oferta-contacto

Tabla

oferta_contacto

| PostgreSQL  |
| ----------- |
| oferta_id   |
| contacto_id |

---

## competencias

Tabla

competencias

| JSON   | PostgreSQL          |
| ------ | ------------------- |
| nombre | nombre              |
| nombre | nombre_normalizado  |
| tipo   | competencia_tipo_id |

---

## relación oferta-competencia

Tabla

oferta_competencia

| PostgreSQL     |
| -------------- |
| oferta_id      |
| competencia_id |
| nivel          |
| valor_numerico |

---

## empleo público

Tabla

empleo_publico

| JSON             | PostgreSQL       |
| ---------------- | ---------------- |
| puesto           | puesto           |
| descripcion      | descripcion      |
| requisitos       | requisitos       |
| fecha_limite     | fecha_limite     |
| url_convocatoria | url_convocatoria |

---

## organismo

Tabla

organismos

| JSON      | PostgreSQL |
| --------- | ---------- |
| organismo | nombre     |

---

## formación

Tabla

formaciones

| JSON           | PostgreSQL     |
| -------------- | -------------- |
| titulo         | titulo         |
| modalidad      | modalidad      |
| duracion_horas | duracion_horas |
| fecha_inicio   | fecha_inicio   |
| descripcion    | descripcion    |

---

## entidad formadora

Tabla

entidades_formacion

| JSON    | PostgreSQL |
| ------- | ---------- |
| entidad | nombre     |

---

## regla de duplicados

Oferta duplicada:

mismo título normalizado
+
misma localidad
+
misma empresa

No crear nueva oferta.

Crear únicamente una nueva publicación.

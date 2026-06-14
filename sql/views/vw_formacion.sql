CREATE OR REPLACE VIEW vw_formacion AS
SELECT

    f.formacion_id,

    ef.nombre AS entidad,

    f.titulo,

    f.modalidad,

    f.duracion_horas,

    l.nombre AS localidad,

    f.fecha_inicio

FROM formaciones f

LEFT JOIN entidades_formacion ef
    ON f.entidad_id = ef.entidad_id

LEFT JOIN localidades l
    ON f.localidad_id = l.localidad_id;

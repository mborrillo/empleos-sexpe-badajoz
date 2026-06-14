CREATE OR REPLACE VIEW vw_empleo_publico AS
SELECT

    ep.empleo_publico_id,

    o.nombre AS organismo,

    ep.puesto,

    ep.fecha_limite,

    l.nombre AS localidad,

    ep.url_convocatoria

FROM empleo_publico ep

LEFT JOIN organismos o
    ON ep.organismo_id = o.organismo_id

LEFT JOIN localidades l
    ON ep.localidad_id = l.localidad_id;

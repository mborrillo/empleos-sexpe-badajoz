CREATE OR REPLACE VIEW vw_ofertas_detalle AS
SELECT

    po.publicacion_id,

    b.numero_boletin,
    b.fecha_publicacion,

    o.oferta_id,

    o.titulo,

    l.nombre AS localidad,

    e.nombre AS empresa,

    s.nombre AS sector,

    o.contrato,

    o.jornada,

    o.salario_min,
    o.salario_max,
    o.salario_periodicidad,

    o.descripcion,
    o.requisitos

FROM publicaciones_oferta po

INNER JOIN ofertas o
    ON po.oferta_id = o.oferta_id

LEFT JOIN localidades l
    ON o.localidad_id = l.localidad_id

LEFT JOIN empresas e
    ON o.empresa_id = e.empresa_id

LEFT JOIN sectores s
    ON o.sector_id = s.sector_id

INNER JOIN boletines b
    ON po.boletin_id = b.boletin_id;

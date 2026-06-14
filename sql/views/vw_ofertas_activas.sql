CREATE OR REPLACE VIEW vw_ofertas_activas AS
SELECT

    o.oferta_id,

    o.titulo,

    MIN(b.fecha_publicacion) AS primera_aparicion,

    MAX(b.fecha_publicacion) AS ultima_aparicion,

    COUNT(*) AS veces_publicada,

    EXTRACT(
        DAY FROM
        MAX(b.fecha_publicacion) -
        MIN(b.fecha_publicacion)
    ) AS dias_visibilidad

FROM ofertas o

INNER JOIN publicaciones_oferta po
    ON o.oferta_id = po.oferta_id

INNER JOIN boletines b
    ON po.boletin_id = b.boletin_id

GROUP BY
    o.oferta_id,
    o.titulo;

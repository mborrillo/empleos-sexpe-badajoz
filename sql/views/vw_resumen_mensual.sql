CREATE OR REPLACE VIEW vw_resumen_mensual AS
SELECT

    DATE_TRUNC(
        'month',
        b.fecha_publicacion
    ) AS mes,

    COUNT(DISTINCT po.publicacion_id) AS publicaciones,

    COUNT(DISTINCT po.oferta_id) AS ofertas

FROM publicaciones_oferta po

INNER JOIN boletines b
    ON po.boletin_id = b.boletin_id

GROUP BY 1

ORDER BY 1;

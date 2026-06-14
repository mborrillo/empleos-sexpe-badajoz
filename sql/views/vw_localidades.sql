CREATE OR REPLACE VIEW vw_localidades AS
SELECT

    l.nombre,

    COUNT(DISTINCT o.oferta_id) AS total_ofertas,

    COUNT(DISTINCT e.empresa_id) AS total_empresas

FROM localidades l

LEFT JOIN ofertas o
    ON l.localidad_id = o.localidad_id

LEFT JOIN empresas e
    ON o.empresa_id = e.empresa_id

GROUP BY l.nombre;

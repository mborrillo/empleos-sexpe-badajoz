CREATE OR REPLACE VIEW vw_competencias_demanda AS
SELECT

    sk.skill_id,

    sk.nombre AS skill,

    COUNT(*) AS total_ofertas

FROM oferta_skill os

INNER JOIN skills sk
    ON os.skill_id = sk.skill_id

GROUP BY
    sk.skill_id,
    sk.nombre;

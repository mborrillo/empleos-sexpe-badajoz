-- =====================================================
-- BOLETIN
-- =====================================================

INSERT INTO boletines (
    boletin_id,
    numero_boletin,
    fecha_publicacion,
    nombre_archivo
)
VALUES (
    '51300000-0000-0000-0000-000000000001',
    513,
    '2026-06-12',
    'boletin_513.pdf'
);

-- =====================================================
-- LOCALIDADES
-- =====================================================

INSERT INTO localidades (
    nombre,
    provincia,
    comunidad_autonoma
)
VALUES

('BADAJOZ','BADAJOZ','EXTREMADURA'),

('OLIVENZA','BADAJOZ','EXTREMADURA'),

('LOBON','BADAJOZ','EXTREMADURA'),

('MERIDA','BADAJOZ','EXTREMADURA'),

('LA ALBUERA','BADAJOZ','EXTREMADURA'),

('MONTIJO','BADAJOZ','EXTREMADURA'),

('ARROYO DE SAN SERVAN','BADAJOZ','EXTREMADURA'),

('CACERES','CACERES','EXTREMADURA')

ON CONFLICT DO NOTHING;

-- =====================================================
-- EMPRESAS
-- =====================================================

INSERT INTO empresas (
    nombre,
    email_principal
)
VALUES

(
    'Fundacion Sorapan',
    NULL
),

(
    'Importar Camion',
    'cv@importarcamion.com'
),

(
    'Foster Hollywood',
    'tuempleo.empresa@gmail.com'
),

(
    'Servirriegos',
    'pfabregat@servirriegos.es'
),

(
    'Meridianos',
    'ofertasextremadura@meridianos.org'
),

(
    'Caldererias',
    'pilar.blanco@caldererias.es'
),

(
    'Provicon',
    'provicon@provicon2006.es'
),

(
    'Perez Rangel',
    'administracion@perezrangel.com'
),

(
    'Consultrans',
    'guillermo.cantafio@consultrans.es'
)

ON CONFLICT DO NOTHING;

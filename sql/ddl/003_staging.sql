INSERT INTO staging_boletines (
    nombre_archivo,
    json_payload
)
VALUES (
    'boletin_513.pdf',
    $$PEGAR_JSON_AQUI$$::jsonb
);

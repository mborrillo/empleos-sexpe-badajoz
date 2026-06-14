CREATE TABLE staging_boletines (
    staging_id BIGSERIAL PRIMARY KEY,
    fecha_carga TIMESTAMP DEFAULT NOW(),
    nombre_archivo TEXT,
    json_payload JSONB NOT NULL
);

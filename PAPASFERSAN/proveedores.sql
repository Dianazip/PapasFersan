-- Table: public.proveedores

-- DROP TABLE IF EXISTS public.proveedores;

CREATE TABLE IF NOT EXISTS public.proveedores
(
    id_proveedor bigint NOT NULL,
    nombre text COLLATE pg_catalog."default" NOT NULL,
    apellido text COLLATE pg_catalog."default" NOT NULL,
    celular bigint NOT NULL,
    precio_bulto bigint NOT NULL,
    CONSTRAINT proveedores_pkey PRIMARY KEY (id_proveedor)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.proveedores
    OWNER to postgres;
-- Table: public.proveedor

-- DROP TABLE IF EXISTS public.proveedor;

CREATE TABLE IF NOT EXISTS public.proveedor
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

ALTER TABLE IF EXISTS public.proveedor
    OWNER to postgres;
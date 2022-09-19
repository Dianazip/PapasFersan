-- Table: public.administrador

-- DROP TABLE IF EXISTS public.administrador;

CREATE TABLE IF NOT EXISTS public.administrador
(
    cedula bigint NOT NULL,
    nombre text COLLATE pg_catalog."default" NOT NULL,
    apellido text COLLATE pg_catalog."default" NOT NULL,
    usuario text COLLATE pg_catalog."default" NOT NULL,
    "contraseña" text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT administrador_pkey PRIMARY KEY (cedula)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.administrador
    OWNER to postgres;
-- Table: public.persona

-- DROP TABLE IF EXISTS public.persona;

CREATE TABLE IF NOT EXISTS public.persona
(
    cedula bigint NOT NULL,
    nombres text COLLATE pg_catalog."default" NOT NULL,
    apelidos text COLLATE pg_catalog."default" NOT NULL,
    edad bigint NOT NULL,
    celular bigint NOT NULL,
    direccion text COLLATE pg_catalog."default" NOT NULL,
    "rol " text COLLATE pg_catalog."default" NOT NULL,
    "contraseña" text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT clientes_pkey PRIMARY KEY (cedula)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.persona
    OWNER to postgres;
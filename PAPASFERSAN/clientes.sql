-- Table: public.clientes

-- DROP TABLE IF EXISTS public.clientes;

CREATE TABLE IF NOT EXISTS public.clientes
(
    cedula bigint NOT NULL,
    nombres text COLLATE pg_catalog."default" NOT NULL,
    apelidos text COLLATE pg_catalog."default" NOT NULL,
    edad bigint NOT NULL,
    celular bigint NOT NULL,
    direccion text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT clientes_pkey PRIMARY KEY (cedula)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.clientes
    OWNER to postgres;
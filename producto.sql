-- Table: public.producto

-- DROP TABLE IF EXISTS public.producto;

CREATE TABLE IF NOT EXISTS public.producto
(
    id_producto bigint NOT NULL,
    fecha_vencimiento timestamp without time zone NOT NULL,
    id_proveedor bigint NOT NULL,
    tipo_producto text COLLATE pg_catalog."default" NOT NULL,
    presentacion text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT productos_pkey PRIMARY KEY (id_producto),
    CONSTRAINT id_proveedor FOREIGN KEY (id_proveedor)
        REFERENCES public.proveedor (id_proveedor) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.producto
    OWNER to postgres;
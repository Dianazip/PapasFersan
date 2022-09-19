-- Table: public.productos

-- DROP TABLE IF EXISTS public.productos;

CREATE TABLE IF NOT EXISTS public.productos
(
    id_producto bigint NOT NULL,
    fecha_vencimiento timestamp without time zone NOT NULL,
    id_proveedor bigint NOT NULL,
    tipo_producto text COLLATE pg_catalog."default" NOT NULL,
    presentacion text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT productos_pkey PRIMARY KEY (id_producto),
    CONSTRAINT id_proveedor FOREIGN KEY (id_proveedor)
        REFERENCES public.proveedores (id_proveedor) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.productos
    OWNER to postgres;
-- Table: public.compra

-- DROP TABLE IF EXISTS public.compra;

CREATE TABLE IF NOT EXISTS public.compra
(
    id_compra bigint NOT NULL,
    numero_cedula_cliente bigint NOT NULL,
    cantidad_productos bigint NOT NULL,
    valor_total bigint NOT NULL,
    id_producto bigint NOT NULL,
    CONSTRAINT compras_pkey PRIMARY KEY (id_compra),
    CONSTRAINT id_producto FOREIGN KEY (id_producto)
        REFERENCES public.producto (id_producto) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT numero_cedula_cliente FOREIGN KEY (numero_cedula_cliente)
        REFERENCES public.persona (cedula) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.compra
    OWNER to postgres;
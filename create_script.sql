-- Table: public.retail_sales

-- DROP TABLE IF EXISTS public.retail_sales;

CREATE TABLE IF NOT EXISTS public.retail_sales
(
    transaction_id integer NOT NULL,
    sale_date date,
    sale_time time without time zone,
    customer_id integer,
    gender character varying(15) COLLATE pg_catalog."default",
    age integer,
    category character varying(15) COLLATE pg_catalog."default",
    quantity integer,
    price_per_unit double precision,
    cogs double precision,
    total_sale double precision,
    CONSTRAINT retail_sales_pkey PRIMARY KEY (transaction_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.retail_sales
    OWNER to postgres;
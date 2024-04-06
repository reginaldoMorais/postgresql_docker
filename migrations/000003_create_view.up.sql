-- View: public.contact_view

DROP MATERIALIZED VIEW IF EXISTS public.contact_view;

CREATE MATERIALIZED VIEW IF NOT EXISTS public.contact_view
TABLESPACE pg_default
AS
 SELECT
      c.id,
      c.name,
      p.zone,
      p.code,
      p.phone,
      a.street,
      a.number,
      a.zip_code
   FROM public.contact c
      LEFT JOIN public.contact_phone cp ON cp.contact_id = c.id
      LEFT JOIN public.phone p ON p.id = cp.phone_id
      LEFT JOIN public.address a ON a.id = c.address_id

WITH DATA;

ALTER TABLE IF EXISTS public.contact_view
    OWNER TO root;

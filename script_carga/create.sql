DROP TABLE users_load;

CREATE TABLE users_load
(
  name character varying(255),
  talla numeric,
  sexo character varying(255),
  peso_actual numeric,
  edad numeric,
  peso_usual numeric,
  muneca numeric,
  fnacimiento date,
  ocupacion character varying(255),
  fuma character varying(255),
  patologias character varying(255),
  medicacion character varying(1024),
  act_fisica character varying(255),
  peso_objetivo numeric,
  peso_alta numeric,
  osocial character varying(255),
  objetivo character varying(555),
  direccion character varying(255),
  tel character varying(255),
  mail character varying(255) NOT NULL DEFAULT ''::character varying,
  alimentacion character varying(1024),
  comentarios character varying(1024),
  recomendacion character varying(1024),
  peso_min numeric,
  peso_max numeric,
  vive character varying(255),
  cocina character varying(255),
  compra character varying(255)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE users_load
  OWNER TO nutridietas;
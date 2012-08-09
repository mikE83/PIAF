--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: bien_mueble_baja; Type: TABLE; Schema: public; Owner: mike; Tablespace: 
--

CREATE TABLE bien_mueble_baja (
    id_bien_mueble_baja integer NOT NULL,
    fecha_baja date NOT NULL,
    id_mueble integer NOT NULL,
    id_motivo_baja integer NOT NULL,
    usuario_id integer NOT NULL
);


ALTER TABLE public.bien_mueble_baja OWNER TO mike;

--
-- Name: bien_mueble_baja_id_bien_mueble_baja_seq; Type: SEQUENCE; Schema: public; Owner: mike
--

CREATE SEQUENCE bien_mueble_baja_id_bien_mueble_baja_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.bien_mueble_baja_id_bien_mueble_baja_seq OWNER TO mike;

--
-- Name: bien_mueble_baja_id_bien_mueble_baja_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mike
--

ALTER SEQUENCE bien_mueble_baja_id_bien_mueble_baja_seq OWNED BY bien_mueble_baja.id_bien_mueble_baja;


--
-- Name: bien_mueble_baja_id_bien_mueble_baja_seq; Type: SEQUENCE SET; Schema: public; Owner: mike
--

SELECT pg_catalog.setval('bien_mueble_baja_id_bien_mueble_baja_seq', 1, false);


--
-- Name: bien_muebles; Type: TABLE; Schema: public; Owner: mike; Tablespace: 
--

CREATE TABLE bien_muebles (
    id_mueble integer NOT NULL,
    id integer NOT NULL,
    partida character varying NOT NULL,
    cabms character varying NOT NULL,
    descripcion character varying NOT NULL,
    cve_articulo character varying NOT NULL,
    num_serie character varying NOT NULL,
    fecha_alta date NOT NULL,
    fecha_factura character varying NOT NULL,
    id_tipo_bien_mueble integer NOT NULL,
    marca character varying NOT NULL,
    modelo character varying NOT NULL,
    num_inventario character varying NOT NULL,
    costo_alta character varying NOT NULL,
    num_factura character varying NOT NULL,
    id_status_bien_mueble integer NOT NULL,
    is_sitio_actual integer NOT NULL
);


ALTER TABLE public.bien_muebles OWNER TO mike;

--
-- Name: bien_muebles_id_mueble_seq; Type: SEQUENCE; Schema: public; Owner: mike
--

CREATE SEQUENCE bien_muebles_id_mueble_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.bien_muebles_id_mueble_seq OWNER TO mike;

--
-- Name: bien_muebles_id_mueble_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mike
--

ALTER SEQUENCE bien_muebles_id_mueble_seq OWNED BY bien_muebles.id_mueble;


--
-- Name: bien_muebles_id_mueble_seq; Type: SEQUENCE SET; Schema: public; Owner: mike
--

SELECT pg_catalog.setval('bien_muebles_id_mueble_seq', 1, false);


--
-- Name: cat_estado_bien_inmueble; Type: TABLE; Schema: public; Owner: mike; Tablespace: 
--

CREATE TABLE cat_estado_bien_inmueble (
    id_estado_bien_mueble integer NOT NULL,
    descripcion character varying NOT NULL
);


ALTER TABLE public.cat_estado_bien_inmueble OWNER TO mike;

--
-- Name: cat_motivo_baja; Type: TABLE; Schema: public; Owner: mike; Tablespace: 
--

CREATE TABLE cat_motivo_baja (
    id_motivo_baja integer NOT NULL,
    descripcion character varying NOT NULL
);


ALTER TABLE public.cat_motivo_baja OWNER TO mike;

--
-- Name: cat_motivo_baja_id_motivo_baja_seq_1; Type: SEQUENCE; Schema: public; Owner: mike
--

CREATE SEQUENCE cat_motivo_baja_id_motivo_baja_seq_1
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.cat_motivo_baja_id_motivo_baja_seq_1 OWNER TO mike;

--
-- Name: cat_motivo_baja_id_motivo_baja_seq_1; Type: SEQUENCE OWNED BY; Schema: public; Owner: mike
--

ALTER SEQUENCE cat_motivo_baja_id_motivo_baja_seq_1 OWNED BY cat_motivo_baja.id_motivo_baja;


--
-- Name: cat_motivo_baja_id_motivo_baja_seq_1; Type: SEQUENCE SET; Schema: public; Owner: mike
--

SELECT pg_catalog.setval('cat_motivo_baja_id_motivo_baja_seq_1', 1, false);


--
-- Name: cat_motivo_movimiento; Type: TABLE; Schema: public; Owner: mike; Tablespace: 
--

CREATE TABLE cat_motivo_movimiento (
    id_motivo_movimiento integer NOT NULL,
    descripcion character varying NOT NULL
);


ALTER TABLE public.cat_motivo_movimiento OWNER TO mike;

--
-- Name: cat_motivo_movimiento_id_motivo_movimiento_seq_1; Type: SEQUENCE; Schema: public; Owner: mike
--

CREATE SEQUENCE cat_motivo_movimiento_id_motivo_movimiento_seq_1
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.cat_motivo_movimiento_id_motivo_movimiento_seq_1 OWNER TO mike;

--
-- Name: cat_motivo_movimiento_id_motivo_movimiento_seq_1; Type: SEQUENCE OWNED BY; Schema: public; Owner: mike
--

ALTER SEQUENCE cat_motivo_movimiento_id_motivo_movimiento_seq_1 OWNED BY cat_motivo_movimiento.id_motivo_movimiento;


--
-- Name: cat_motivo_movimiento_id_motivo_movimiento_seq_1; Type: SEQUENCE SET; Schema: public; Owner: mike
--

SELECT pg_catalog.setval('cat_motivo_movimiento_id_motivo_movimiento_seq_1', 1, false);


--
-- Name: cat_nivel_usuario; Type: TABLE; Schema: public; Owner: mike; Tablespace: 
--

CREATE TABLE cat_nivel_usuario (
    id_nivel_usuario integer NOT NULL,
    descrp character varying NOT NULL
);


ALTER TABLE public.cat_nivel_usuario OWNER TO mike;

--
-- Name: cat_nivel_usuario_id_nivel_usuario_seq; Type: SEQUENCE; Schema: public; Owner: mike
--

CREATE SEQUENCE cat_nivel_usuario_id_nivel_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.cat_nivel_usuario_id_nivel_usuario_seq OWNER TO mike;

--
-- Name: cat_nivel_usuario_id_nivel_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mike
--

ALTER SEQUENCE cat_nivel_usuario_id_nivel_usuario_seq OWNED BY cat_nivel_usuario.id_nivel_usuario;


--
-- Name: cat_nivel_usuario_id_nivel_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: mike
--

SELECT pg_catalog.setval('cat_nivel_usuario_id_nivel_usuario_seq', 1, true);


--
-- Name: cat_sitio; Type: TABLE; Schema: public; Owner: mike; Tablespace: 
--

CREATE TABLE cat_sitio (
    id_sitio integer NOT NULL,
    descripcion character varying NOT NULL,
    edificio character varying NOT NULL
);


ALTER TABLE public.cat_sitio OWNER TO mike;

--
-- Name: cat_sitio_is_sitio_seq; Type: SEQUENCE; Schema: public; Owner: mike
--

CREATE SEQUENCE cat_sitio_is_sitio_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.cat_sitio_is_sitio_seq OWNER TO mike;

--
-- Name: cat_sitio_is_sitio_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mike
--

ALTER SEQUENCE cat_sitio_is_sitio_seq OWNED BY cat_sitio.id_sitio;


--
-- Name: cat_sitio_is_sitio_seq; Type: SEQUENCE SET; Schema: public; Owner: mike
--

SELECT pg_catalog.setval('cat_sitio_is_sitio_seq', 2, true);


--
-- Name: cat_status_bien_mueble; Type: TABLE; Schema: public; Owner: mike; Tablespace: 
--

CREATE TABLE cat_status_bien_mueble (
    id_status_bien_mueble integer NOT NULL,
    descripcion character varying NOT NULL
);


ALTER TABLE public.cat_status_bien_mueble OWNER TO mike;

--
-- Name: cat_status_bien_mueble_id_status_bien_mueble_seq; Type: SEQUENCE; Schema: public; Owner: mike
--

CREATE SEQUENCE cat_status_bien_mueble_id_status_bien_mueble_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.cat_status_bien_mueble_id_status_bien_mueble_seq OWNER TO mike;

--
-- Name: cat_status_bien_mueble_id_status_bien_mueble_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mike
--

ALTER SEQUENCE cat_status_bien_mueble_id_status_bien_mueble_seq OWNED BY cat_status_bien_mueble.id_status_bien_mueble;


--
-- Name: cat_status_bien_mueble_id_status_bien_mueble_seq; Type: SEQUENCE SET; Schema: public; Owner: mike
--

SELECT pg_catalog.setval('cat_status_bien_mueble_id_status_bien_mueble_seq', 1, false);


--
-- Name: cat_status_inventario; Type: TABLE; Schema: public; Owner: mike; Tablespace: 
--

CREATE TABLE cat_status_inventario (
    id_status_inventario integer NOT NULL,
    descripcion character varying NOT NULL
);


ALTER TABLE public.cat_status_inventario OWNER TO mike;

--
-- Name: cat_status_inventario_id_status_inventario_seq_1; Type: SEQUENCE; Schema: public; Owner: mike
--

CREATE SEQUENCE cat_status_inventario_id_status_inventario_seq_1
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.cat_status_inventario_id_status_inventario_seq_1 OWNER TO mike;

--
-- Name: cat_status_inventario_id_status_inventario_seq_1; Type: SEQUENCE OWNED BY; Schema: public; Owner: mike
--

ALTER SEQUENCE cat_status_inventario_id_status_inventario_seq_1 OWNED BY cat_status_inventario.id_status_inventario;


--
-- Name: cat_status_inventario_id_status_inventario_seq_1; Type: SEQUENCE SET; Schema: public; Owner: mike
--

SELECT pg_catalog.setval('cat_status_inventario_id_status_inventario_seq_1', 1, false);


--
-- Name: cat_status_resguardamte; Type: TABLE; Schema: public; Owner: mike; Tablespace: 
--

CREATE TABLE cat_status_resguardamte (
    id_status_resguardante integer NOT NULL,
    descripcion character varying NOT NULL
);


ALTER TABLE public.cat_status_resguardamte OWNER TO mike;

--
-- Name: cat_status_resguardamte_id_status_resguardante_seq; Type: SEQUENCE; Schema: public; Owner: mike
--

CREATE SEQUENCE cat_status_resguardamte_id_status_resguardante_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.cat_status_resguardamte_id_status_resguardante_seq OWNER TO mike;

--
-- Name: cat_status_resguardamte_id_status_resguardante_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mike
--

ALTER SEQUENCE cat_status_resguardamte_id_status_resguardante_seq OWNED BY cat_status_resguardamte.id_status_resguardante;


--
-- Name: cat_status_resguardamte_id_status_resguardante_seq; Type: SEQUENCE SET; Schema: public; Owner: mike
--

SELECT pg_catalog.setval('cat_status_resguardamte_id_status_resguardante_seq', 1, false);


--
-- Name: cat_status_resguardo; Type: TABLE; Schema: public; Owner: mike; Tablespace: 
--

CREATE TABLE cat_status_resguardo (
    id_status_resguardo integer NOT NULL,
    descripcion character varying NOT NULL
);


ALTER TABLE public.cat_status_resguardo OWNER TO mike;

--
-- Name: cat_status_resguardo_id_status_resguardo_seq_1; Type: SEQUENCE; Schema: public; Owner: mike
--

CREATE SEQUENCE cat_status_resguardo_id_status_resguardo_seq_1
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.cat_status_resguardo_id_status_resguardo_seq_1 OWNER TO mike;

--
-- Name: cat_status_resguardo_id_status_resguardo_seq_1; Type: SEQUENCE OWNED BY; Schema: public; Owner: mike
--

ALTER SEQUENCE cat_status_resguardo_id_status_resguardo_seq_1 OWNED BY cat_status_resguardo.id_status_resguardo;


--
-- Name: cat_status_resguardo_id_status_resguardo_seq_1; Type: SEQUENCE SET; Schema: public; Owner: mike
--

SELECT pg_catalog.setval('cat_status_resguardo_id_status_resguardo_seq_1', 1, false);


--
-- Name: cat_status_usuario; Type: TABLE; Schema: public; Owner: mike; Tablespace: 
--

CREATE TABLE cat_status_usuario (
    id_status_usuario integer NOT NULL,
    descrp character varying NOT NULL
);


ALTER TABLE public.cat_status_usuario OWNER TO mike;

--
-- Name: cat_status_usuario_id_status_usuario_seq; Type: SEQUENCE; Schema: public; Owner: mike
--

CREATE SEQUENCE cat_status_usuario_id_status_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.cat_status_usuario_id_status_usuario_seq OWNER TO mike;

--
-- Name: cat_status_usuario_id_status_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mike
--

ALTER SEQUENCE cat_status_usuario_id_status_usuario_seq OWNED BY cat_status_usuario.id_status_usuario;


--
-- Name: cat_status_usuario_id_status_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: mike
--

SELECT pg_catalog.setval('cat_status_usuario_id_status_usuario_seq', 1, true);


--
-- Name: cat_status_validacion; Type: TABLE; Schema: public; Owner: mike; Tablespace: 
--

CREATE TABLE cat_status_validacion (
    id_status_validacion integer NOT NULL,
    descrcipcion character varying NOT NULL
);


ALTER TABLE public.cat_status_validacion OWNER TO mike;

--
-- Name: cat_status_validacion_id_status_validacion_seq_1; Type: SEQUENCE; Schema: public; Owner: mike
--

CREATE SEQUENCE cat_status_validacion_id_status_validacion_seq_1
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.cat_status_validacion_id_status_validacion_seq_1 OWNER TO mike;

--
-- Name: cat_status_validacion_id_status_validacion_seq_1; Type: SEQUENCE OWNED BY; Schema: public; Owner: mike
--

ALTER SEQUENCE cat_status_validacion_id_status_validacion_seq_1 OWNED BY cat_status_validacion.id_status_validacion;


--
-- Name: cat_status_validacion_id_status_validacion_seq_1; Type: SEQUENCE SET; Schema: public; Owner: mike
--

SELECT pg_catalog.setval('cat_status_validacion_id_status_validacion_seq_1', 1, false);


--
-- Name: cat_tipo_bien_mueble; Type: TABLE; Schema: public; Owner: mike; Tablespace: 
--

CREATE TABLE cat_tipo_bien_mueble (
    id_tipo_bien_mueble integer NOT NULL,
    descripcion character varying NOT NULL
);


ALTER TABLE public.cat_tipo_bien_mueble OWNER TO mike;

--
-- Name: cat_tipo_bien_mueble_id_tipo_bien_mueble_seq; Type: SEQUENCE; Schema: public; Owner: mike
--

CREATE SEQUENCE cat_tipo_bien_mueble_id_tipo_bien_mueble_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.cat_tipo_bien_mueble_id_tipo_bien_mueble_seq OWNER TO mike;

--
-- Name: cat_tipo_bien_mueble_id_tipo_bien_mueble_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mike
--

ALTER SEQUENCE cat_tipo_bien_mueble_id_tipo_bien_mueble_seq OWNED BY cat_tipo_bien_mueble.id_tipo_bien_mueble;


--
-- Name: cat_tipo_bien_mueble_id_tipo_bien_mueble_seq; Type: SEQUENCE SET; Schema: public; Owner: mike
--

SELECT pg_catalog.setval('cat_tipo_bien_mueble_id_tipo_bien_mueble_seq', 1, false);


--
-- Name: inventario_validacion; Type: TABLE; Schema: public; Owner: mike; Tablespace: 
--

CREATE TABLE inventario_validacion (
    id_inventario_validacion integer NOT NULL,
    fecha character varying NOT NULL,
    id_status_validacion integer NOT NULL,
    id_inventario integer NOT NULL,
    id_observacion integer NOT NULL,
    id_mueble integer NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.inventario_validacion OWNER TO mike;

--
-- Name: inventario_validacion_id_inventario_validacion_seq; Type: SEQUENCE; Schema: public; Owner: mike
--

CREATE SEQUENCE inventario_validacion_id_inventario_validacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.inventario_validacion_id_inventario_validacion_seq OWNER TO mike;

--
-- Name: inventario_validacion_id_inventario_validacion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mike
--

ALTER SEQUENCE inventario_validacion_id_inventario_validacion_seq OWNED BY inventario_validacion.id_inventario_validacion;


--
-- Name: inventario_validacion_id_inventario_validacion_seq; Type: SEQUENCE SET; Schema: public; Owner: mike
--

SELECT pg_catalog.setval('inventario_validacion_id_inventario_validacion_seq', 1, false);


--
-- Name: inventarios; Type: TABLE; Schema: public; Owner: mike; Tablespace: 
--

CREATE TABLE inventarios (
    id_inventario integer NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_final date NOT NULL,
    id_status_inventario integer NOT NULL,
    is_sitio integer NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.inventarios OWNER TO mike;

--
-- Name: inventarios_id_inventario_seq; Type: SEQUENCE; Schema: public; Owner: mike
--

CREATE SEQUENCE inventarios_id_inventario_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.inventarios_id_inventario_seq OWNER TO mike;

--
-- Name: inventarios_id_inventario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mike
--

ALTER SEQUENCE inventarios_id_inventario_seq OWNED BY inventarios.id_inventario;


--
-- Name: inventarios_id_inventario_seq; Type: SEQUENCE SET; Schema: public; Owner: mike
--

SELECT pg_catalog.setval('inventarios_id_inventario_seq', 1, false);


--
-- Name: movimientos; Type: TABLE; Schema: public; Owner: mike; Tablespace: 
--

CREATE TABLE movimientos (
    movimiento_id integer NOT NULL,
    id_mueble integer NOT NULL,
    sitio_actual boolean NOT NULL,
    is_sitio integer NOT NULL,
    id_resguardante integer NOT NULL,
    fecha_movimiento date NOT NULL,
    id integer NOT NULL,
    id_motivo_movimiento integer NOT NULL
);


ALTER TABLE public.movimientos OWNER TO mike;

--
-- Name: movimientos_movimiento_id_seq_1; Type: SEQUENCE; Schema: public; Owner: mike
--

CREATE SEQUENCE movimientos_movimiento_id_seq_1
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.movimientos_movimiento_id_seq_1 OWNER TO mike;

--
-- Name: movimientos_movimiento_id_seq_1; Type: SEQUENCE OWNED BY; Schema: public; Owner: mike
--

ALTER SEQUENCE movimientos_movimiento_id_seq_1 OWNED BY movimientos.movimiento_id;


--
-- Name: movimientos_movimiento_id_seq_1; Type: SEQUENCE SET; Schema: public; Owner: mike
--

SELECT pg_catalog.setval('movimientos_movimiento_id_seq_1', 1, false);


--
-- Name: observacion_bien_muebles; Type: TABLE; Schema: public; Owner: mike; Tablespace: 
--

CREATE TABLE observacion_bien_muebles (
    id_observacion integer NOT NULL,
    observaciones character varying NOT NULL,
    id_mueble integer NOT NULL,
    id integer NOT NULL,
    id_resguardante integer NOT NULL,
    id_estado_bien_mueble integer NOT NULL
);


ALTER TABLE public.observacion_bien_muebles OWNER TO mike;

--
-- Name: resguardante; Type: TABLE; Schema: public; Owner: mike; Tablespace: 
--

CREATE TABLE resguardante (
    id_resguardante integer NOT NULL,
    id_sitio integer NOT NULL,
    nombre character varying NOT NULL,
    apaterno character varying NOT NULL,
    amaterno character varying NOT NULL,
    email character varying NOT NULL,
    rfc character varying NOT NULL,
    no_empleado character varying NOT NULL,
    id_status_resguardante integer NOT NULL
);


ALTER TABLE public.resguardante OWNER TO mike;

--
-- Name: resguardante_id_resguardante_seq; Type: SEQUENCE; Schema: public; Owner: mike
--

CREATE SEQUENCE resguardante_id_resguardante_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.resguardante_id_resguardante_seq OWNER TO mike;

--
-- Name: resguardante_id_resguardante_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mike
--

ALTER SEQUENCE resguardante_id_resguardante_seq OWNED BY resguardante.id_resguardante;


--
-- Name: resguardante_id_resguardante_seq; Type: SEQUENCE SET; Schema: public; Owner: mike
--

SELECT pg_catalog.setval('resguardante_id_resguardante_seq', 1, false);


--
-- Name: resguardos; Type: TABLE; Schema: public; Owner: mike; Tablespace: 
--

CREATE TABLE resguardos (
    id_resguardos integer NOT NULL,
    id_resguardante integer NOT NULL,
    id_mueble integer NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_final date NOT NULL,
    id_observacion integer NOT NULL,
    id_status_resguardo integer NOT NULL,
    id integer NOT NULL,
    movimiento_id integer NOT NULL
);


ALTER TABLE public.resguardos OWNER TO mike;

--
-- Name: resguardos_id_resguardos_seq; Type: SEQUENCE; Schema: public; Owner: mike
--

CREATE SEQUENCE resguardos_id_resguardos_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.resguardos_id_resguardos_seq OWNER TO mike;

--
-- Name: resguardos_id_resguardos_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mike
--

ALTER SEQUENCE resguardos_id_resguardos_seq OWNED BY resguardos.id_resguardos;


--
-- Name: resguardos_id_resguardos_seq; Type: SEQUENCE SET; Schema: public; Owner: mike
--

SELECT pg_catalog.setval('resguardos_id_resguardos_seq', 1, false);


--
-- Name: usuario; Type: TABLE; Schema: public; Owner: mike; Tablespace: 
--

CREATE TABLE usuario (
    id integer NOT NULL,
    id_status_usuario integer NOT NULL,
    id_nivel_usuario integer NOT NULL,
    nombre character varying NOT NULL,
    apaterno character varying NOT NULL,
    amaterno character varying NOT NULL,
    login character varying NOT NULL,
    salt character varying,
    password character varying NOT NULL,
    mail character varying NOT NULL,
    id_sitio integer NOT NULL
);


ALTER TABLE public.usuario OWNER TO mike;

--
-- Name: usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: mike
--

CREATE SEQUENCE usuario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.usuario_id_seq OWNER TO mike;

--
-- Name: usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mike
--

ALTER SEQUENCE usuario_id_seq OWNED BY usuario.id;


--
-- Name: usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mike
--

SELECT pg_catalog.setval('usuario_id_seq', 2, true);


--
-- Name: usuario_sesion; Type: TABLE; Schema: public; Owner: mike; Tablespace: 
--

CREATE TABLE usuario_sesion (
    id_usuario_sesion integer NOT NULL,
    id integer NOT NULL,
    token character varying NOT NULL,
    fecha_hora_inicio timestamp without time zone NOT NULL,
    fecha_hora_final timestamp without time zone NOT NULL
);


ALTER TABLE public.usuario_sesion OWNER TO mike;

--
-- Name: usuario_sesion_id_usuario_sesion_seq; Type: SEQUENCE; Schema: public; Owner: mike
--

CREATE SEQUENCE usuario_sesion_id_usuario_sesion_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.usuario_sesion_id_usuario_sesion_seq OWNER TO mike;

--
-- Name: usuario_sesion_id_usuario_sesion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mike
--

ALTER SEQUENCE usuario_sesion_id_usuario_sesion_seq OWNED BY usuario_sesion.id_usuario_sesion;


--
-- Name: usuario_sesion_id_usuario_sesion_seq; Type: SEQUENCE SET; Schema: public; Owner: mike
--

SELECT pg_catalog.setval('usuario_sesion_id_usuario_sesion_seq', 1, false);


--
-- Name: id_bien_mueble_baja; Type: DEFAULT; Schema: public; Owner: mike
--

ALTER TABLE bien_mueble_baja ALTER COLUMN id_bien_mueble_baja SET DEFAULT nextval('bien_mueble_baja_id_bien_mueble_baja_seq'::regclass);


--
-- Name: id_mueble; Type: DEFAULT; Schema: public; Owner: mike
--

ALTER TABLE bien_muebles ALTER COLUMN id_mueble SET DEFAULT nextval('bien_muebles_id_mueble_seq'::regclass);


--
-- Name: id_motivo_baja; Type: DEFAULT; Schema: public; Owner: mike
--

ALTER TABLE cat_motivo_baja ALTER COLUMN id_motivo_baja SET DEFAULT nextval('cat_motivo_baja_id_motivo_baja_seq_1'::regclass);


--
-- Name: id_motivo_movimiento; Type: DEFAULT; Schema: public; Owner: mike
--

ALTER TABLE cat_motivo_movimiento ALTER COLUMN id_motivo_movimiento SET DEFAULT nextval('cat_motivo_movimiento_id_motivo_movimiento_seq_1'::regclass);


--
-- Name: id_nivel_usuario; Type: DEFAULT; Schema: public; Owner: mike
--

ALTER TABLE cat_nivel_usuario ALTER COLUMN id_nivel_usuario SET DEFAULT nextval('cat_nivel_usuario_id_nivel_usuario_seq'::regclass);


--
-- Name: id_sitio; Type: DEFAULT; Schema: public; Owner: mike
--

ALTER TABLE cat_sitio ALTER COLUMN id_sitio SET DEFAULT nextval('cat_sitio_is_sitio_seq'::regclass);


--
-- Name: id_status_bien_mueble; Type: DEFAULT; Schema: public; Owner: mike
--

ALTER TABLE cat_status_bien_mueble ALTER COLUMN id_status_bien_mueble SET DEFAULT nextval('cat_status_bien_mueble_id_status_bien_mueble_seq'::regclass);


--
-- Name: id_status_inventario; Type: DEFAULT; Schema: public; Owner: mike
--

ALTER TABLE cat_status_inventario ALTER COLUMN id_status_inventario SET DEFAULT nextval('cat_status_inventario_id_status_inventario_seq_1'::regclass);


--
-- Name: id_status_resguardante; Type: DEFAULT; Schema: public; Owner: mike
--

ALTER TABLE cat_status_resguardamte ALTER COLUMN id_status_resguardante SET DEFAULT nextval('cat_status_resguardamte_id_status_resguardante_seq'::regclass);


--
-- Name: id_status_resguardo; Type: DEFAULT; Schema: public; Owner: mike
--

ALTER TABLE cat_status_resguardo ALTER COLUMN id_status_resguardo SET DEFAULT nextval('cat_status_resguardo_id_status_resguardo_seq_1'::regclass);


--
-- Name: id_status_usuario; Type: DEFAULT; Schema: public; Owner: mike
--

ALTER TABLE cat_status_usuario ALTER COLUMN id_status_usuario SET DEFAULT nextval('cat_status_usuario_id_status_usuario_seq'::regclass);


--
-- Name: id_status_validacion; Type: DEFAULT; Schema: public; Owner: mike
--

ALTER TABLE cat_status_validacion ALTER COLUMN id_status_validacion SET DEFAULT nextval('cat_status_validacion_id_status_validacion_seq_1'::regclass);


--
-- Name: id_tipo_bien_mueble; Type: DEFAULT; Schema: public; Owner: mike
--

ALTER TABLE cat_tipo_bien_mueble ALTER COLUMN id_tipo_bien_mueble SET DEFAULT nextval('cat_tipo_bien_mueble_id_tipo_bien_mueble_seq'::regclass);


--
-- Name: id_inventario_validacion; Type: DEFAULT; Schema: public; Owner: mike
--

ALTER TABLE inventario_validacion ALTER COLUMN id_inventario_validacion SET DEFAULT nextval('inventario_validacion_id_inventario_validacion_seq'::regclass);


--
-- Name: id_inventario; Type: DEFAULT; Schema: public; Owner: mike
--

ALTER TABLE inventarios ALTER COLUMN id_inventario SET DEFAULT nextval('inventarios_id_inventario_seq'::regclass);


--
-- Name: movimiento_id; Type: DEFAULT; Schema: public; Owner: mike
--

ALTER TABLE movimientos ALTER COLUMN movimiento_id SET DEFAULT nextval('movimientos_movimiento_id_seq_1'::regclass);


--
-- Name: id_resguardante; Type: DEFAULT; Schema: public; Owner: mike
--

ALTER TABLE resguardante ALTER COLUMN id_resguardante SET DEFAULT nextval('resguardante_id_resguardante_seq'::regclass);


--
-- Name: id_resguardos; Type: DEFAULT; Schema: public; Owner: mike
--

ALTER TABLE resguardos ALTER COLUMN id_resguardos SET DEFAULT nextval('resguardos_id_resguardos_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: mike
--

ALTER TABLE usuario ALTER COLUMN id SET DEFAULT nextval('usuario_id_seq'::regclass);


--
-- Name: id_usuario_sesion; Type: DEFAULT; Schema: public; Owner: mike
--

ALTER TABLE usuario_sesion ALTER COLUMN id_usuario_sesion SET DEFAULT nextval('usuario_sesion_id_usuario_sesion_seq'::regclass);


--
-- Data for Name: bien_mueble_baja; Type: TABLE DATA; Schema: public; Owner: mike
--

COPY bien_mueble_baja (id_bien_mueble_baja, fecha_baja, id_mueble, id_motivo_baja, usuario_id) FROM stdin;
\.


--
-- Data for Name: bien_muebles; Type: TABLE DATA; Schema: public; Owner: mike
--

COPY bien_muebles (id_mueble, id, partida, cabms, descripcion, cve_articulo, num_serie, fecha_alta, fecha_factura, id_tipo_bien_mueble, marca, modelo, num_inventario, costo_alta, num_factura, id_status_bien_mueble, is_sitio_actual) FROM stdin;
\.


--
-- Data for Name: cat_estado_bien_inmueble; Type: TABLE DATA; Schema: public; Owner: mike
--

COPY cat_estado_bien_inmueble (id_estado_bien_mueble, descripcion) FROM stdin;
\.


--
-- Data for Name: cat_motivo_baja; Type: TABLE DATA; Schema: public; Owner: mike
--

COPY cat_motivo_baja (id_motivo_baja, descripcion) FROM stdin;
\.


--
-- Data for Name: cat_motivo_movimiento; Type: TABLE DATA; Schema: public; Owner: mike
--

COPY cat_motivo_movimiento (id_motivo_movimiento, descripcion) FROM stdin;
\.


--
-- Data for Name: cat_nivel_usuario; Type: TABLE DATA; Schema: public; Owner: mike
--

COPY cat_nivel_usuario (id_nivel_usuario, descrp) FROM stdin;
1	Sitio
\.


--
-- Data for Name: cat_sitio; Type: TABLE DATA; Schema: public; Owner: mike
--

COPY cat_sitio (id_sitio, descripcion, edificio) FROM stdin;
1	Sistemas y Redes	Altadena
2	Planeación	Altadena
\.


--
-- Data for Name: cat_status_bien_mueble; Type: TABLE DATA; Schema: public; Owner: mike
--

COPY cat_status_bien_mueble (id_status_bien_mueble, descripcion) FROM stdin;
\.


--
-- Data for Name: cat_status_inventario; Type: TABLE DATA; Schema: public; Owner: mike
--

COPY cat_status_inventario (id_status_inventario, descripcion) FROM stdin;
\.


--
-- Data for Name: cat_status_resguardamte; Type: TABLE DATA; Schema: public; Owner: mike
--

COPY cat_status_resguardamte (id_status_resguardante, descripcion) FROM stdin;
\.


--
-- Data for Name: cat_status_resguardo; Type: TABLE DATA; Schema: public; Owner: mike
--

COPY cat_status_resguardo (id_status_resguardo, descripcion) FROM stdin;
\.


--
-- Data for Name: cat_status_usuario; Type: TABLE DATA; Schema: public; Owner: mike
--

COPY cat_status_usuario (id_status_usuario, descrp) FROM stdin;
1	Activo
\.


--
-- Data for Name: cat_status_validacion; Type: TABLE DATA; Schema: public; Owner: mike
--

COPY cat_status_validacion (id_status_validacion, descrcipcion) FROM stdin;
\.


--
-- Data for Name: cat_tipo_bien_mueble; Type: TABLE DATA; Schema: public; Owner: mike
--

COPY cat_tipo_bien_mueble (id_tipo_bien_mueble, descripcion) FROM stdin;
\.


--
-- Data for Name: inventario_validacion; Type: TABLE DATA; Schema: public; Owner: mike
--

COPY inventario_validacion (id_inventario_validacion, fecha, id_status_validacion, id_inventario, id_observacion, id_mueble, id) FROM stdin;
\.


--
-- Data for Name: inventarios; Type: TABLE DATA; Schema: public; Owner: mike
--

COPY inventarios (id_inventario, fecha_inicio, fecha_final, id_status_inventario, is_sitio, id) FROM stdin;
\.


--
-- Data for Name: movimientos; Type: TABLE DATA; Schema: public; Owner: mike
--

COPY movimientos (movimiento_id, id_mueble, sitio_actual, is_sitio, id_resguardante, fecha_movimiento, id, id_motivo_movimiento) FROM stdin;
\.


--
-- Data for Name: observacion_bien_muebles; Type: TABLE DATA; Schema: public; Owner: mike
--

COPY observacion_bien_muebles (id_observacion, observaciones, id_mueble, id, id_resguardante, id_estado_bien_mueble) FROM stdin;
\.


--
-- Data for Name: resguardante; Type: TABLE DATA; Schema: public; Owner: mike
--

COPY resguardante (id_resguardante, id_sitio, nombre, apaterno, amaterno, email, rfc, no_empleado, id_status_resguardante) FROM stdin;
\.


--
-- Data for Name: resguardos; Type: TABLE DATA; Schema: public; Owner: mike
--

COPY resguardos (id_resguardos, id_resguardante, id_mueble, fecha_inicio, fecha_final, id_observacion, id_status_resguardo, id, movimiento_id) FROM stdin;
\.


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: mike
--

COPY usuario (id, id_status_usuario, id_nivel_usuario, nombre, apaterno, amaterno, login, password, mail, id_sitio) FROM stdin;
1	1	1	miguel	vazquez	Villarreal	mvazquez	qw12..	mvazquez83@gmail.com	1
2	1	1	Alma 	Madero 	Martinez	amadero	amadero	madero@gmail.com	1
\.


--
-- Data for Name: usuario_sesion; Type: TABLE DATA; Schema: public; Owner: mike
--

COPY usuario_sesion (id_usuario_sesion, id, token, fecha_hora_inicio, fecha_hora_final) FROM stdin;
\.


--
-- Name: cat_motivo_movimiento_pk; Type: CONSTRAINT; Schema: public; Owner: mike; Tablespace: 
--

ALTER TABLE ONLY cat_motivo_movimiento
    ADD CONSTRAINT cat_motivo_movimiento_pk PRIMARY KEY (id_motivo_movimiento);


--
-- Name: cat_status_bien_mueble_pk; Type: CONSTRAINT; Schema: public; Owner: mike; Tablespace: 
--

ALTER TABLE ONLY cat_status_bien_mueble
    ADD CONSTRAINT cat_status_bien_mueble_pk PRIMARY KEY (id_status_bien_mueble);


--
-- Name: cat_status_usuario_pk; Type: CONSTRAINT; Schema: public; Owner: mike; Tablespace: 
--

ALTER TABLE ONLY cat_status_usuario
    ADD CONSTRAINT cat_status_usuario_pk PRIMARY KEY (id_status_usuario);


--
-- Name: cat_status_validacion_pk; Type: CONSTRAINT; Schema: public; Owner: mike; Tablespace: 
--

ALTER TABLE ONLY cat_status_validacion
    ADD CONSTRAINT cat_status_validacion_pk PRIMARY KEY (id_status_validacion);


--
-- Name: id; Type: CONSTRAINT; Schema: public; Owner: mike; Tablespace: 
--

ALTER TABLE ONLY cat_estado_bien_inmueble
    ADD CONSTRAINT id PRIMARY KEY (id_estado_bien_mueble);


--
-- Name: id_inventario; Type: CONSTRAINT; Schema: public; Owner: mike; Tablespace: 
--

ALTER TABLE ONLY inventarios
    ADD CONSTRAINT id_inventario PRIMARY KEY (id_inventario);


--
-- Name: id_inventario_validacion; Type: CONSTRAINT; Schema: public; Owner: mike; Tablespace: 
--

ALTER TABLE ONLY inventario_validacion
    ADD CONSTRAINT id_inventario_validacion PRIMARY KEY (id_inventario_validacion);


--
-- Name: id_motivo_baja; Type: CONSTRAINT; Schema: public; Owner: mike; Tablespace: 
--

ALTER TABLE ONLY cat_motivo_baja
    ADD CONSTRAINT id_motivo_baja PRIMARY KEY (id_motivo_baja);


--
-- Name: id_mueble; Type: CONSTRAINT; Schema: public; Owner: mike; Tablespace: 
--

ALTER TABLE ONLY bien_muebles
    ADD CONSTRAINT id_mueble PRIMARY KEY (id_mueble);


--
-- Name: id_mueble_baja; Type: CONSTRAINT; Schema: public; Owner: mike; Tablespace: 
--

ALTER TABLE ONLY bien_mueble_baja
    ADD CONSTRAINT id_mueble_baja PRIMARY KEY (id_bien_mueble_baja);


--
-- Name: id_nivel_usuario; Type: CONSTRAINT; Schema: public; Owner: mike; Tablespace: 
--

ALTER TABLE ONLY cat_nivel_usuario
    ADD CONSTRAINT id_nivel_usuario PRIMARY KEY (id_nivel_usuario);


--
-- Name: id_resguardante; Type: CONSTRAINT; Schema: public; Owner: mike; Tablespace: 
--

ALTER TABLE ONLY resguardante
    ADD CONSTRAINT id_resguardante PRIMARY KEY (id_resguardante);


--
-- Name: id_resguardos; Type: CONSTRAINT; Schema: public; Owner: mike; Tablespace: 
--

ALTER TABLE ONLY resguardos
    ADD CONSTRAINT id_resguardos PRIMARY KEY (id_resguardos);


--
-- Name: id_sitio; Type: CONSTRAINT; Schema: public; Owner: mike; Tablespace: 
--

ALTER TABLE ONLY cat_sitio
    ADD CONSTRAINT id_sitio PRIMARY KEY (id_sitio);


--
-- Name: id_status_inventario; Type: CONSTRAINT; Schema: public; Owner: mike; Tablespace: 
--

ALTER TABLE ONLY cat_status_inventario
    ADD CONSTRAINT id_status_inventario PRIMARY KEY (id_status_inventario);


--
-- Name: id_status_resguardante; Type: CONSTRAINT; Schema: public; Owner: mike; Tablespace: 
--

ALTER TABLE ONLY cat_status_resguardamte
    ADD CONSTRAINT id_status_resguardante PRIMARY KEY (id_status_resguardante);


--
-- Name: id_status_resguardo; Type: CONSTRAINT; Schema: public; Owner: mike; Tablespace: 
--

ALTER TABLE ONLY cat_status_resguardo
    ADD CONSTRAINT id_status_resguardo PRIMARY KEY (id_status_resguardo);


--
-- Name: id_tipo_bien_mueble; Type: CONSTRAINT; Schema: public; Owner: mike; Tablespace: 
--

ALTER TABLE ONLY cat_tipo_bien_mueble
    ADD CONSTRAINT id_tipo_bien_mueble PRIMARY KEY (id_tipo_bien_mueble);


--
-- Name: id_usuarios; Type: CONSTRAINT; Schema: public; Owner: mike; Tablespace: 
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT id_usuarios PRIMARY KEY (id);


--
-- Name: movimiento_id; Type: CONSTRAINT; Schema: public; Owner: mike; Tablespace: 
--

ALTER TABLE ONLY movimientos
    ADD CONSTRAINT movimiento_id PRIMARY KEY (movimiento_id);


--
-- Name: observacion_bien_muebles_pk; Type: CONSTRAINT; Schema: public; Owner: mike; Tablespace: 
--

ALTER TABLE ONLY observacion_bien_muebles
    ADD CONSTRAINT observacion_bien_muebles_pk PRIMARY KEY (id_observacion);


--
-- Name: usuario_sesion_pk; Type: CONSTRAINT; Schema: public; Owner: mike; Tablespace: 
--

ALTER TABLE ONLY usuario_sesion
    ADD CONSTRAINT usuario_sesion_pk PRIMARY KEY (id_usuario_sesion);


--
-- Name: bien_muebles_bien_mueble_baja_fk; Type: FK CONSTRAINT; Schema: public; Owner: mike
--

ALTER TABLE ONLY bien_mueble_baja
    ADD CONSTRAINT bien_muebles_bien_mueble_baja_fk FOREIGN KEY (id_mueble) REFERENCES bien_muebles(id_mueble);


--
-- Name: bien_muebles_inventario_validacion_fk; Type: FK CONSTRAINT; Schema: public; Owner: mike
--

ALTER TABLE ONLY inventario_validacion
    ADD CONSTRAINT bien_muebles_inventario_validacion_fk FOREIGN KEY (id_mueble) REFERENCES bien_muebles(id_mueble);


--
-- Name: bien_muebles_movimientos_fk; Type: FK CONSTRAINT; Schema: public; Owner: mike
--

ALTER TABLE ONLY movimientos
    ADD CONSTRAINT bien_muebles_movimientos_fk FOREIGN KEY (id_mueble) REFERENCES bien_muebles(id_mueble);


--
-- Name: bien_muebles_observacion_bien_muebles_fk; Type: FK CONSTRAINT; Schema: public; Owner: mike
--

ALTER TABLE ONLY observacion_bien_muebles
    ADD CONSTRAINT bien_muebles_observacion_bien_muebles_fk FOREIGN KEY (id_mueble) REFERENCES bien_muebles(id_mueble);


--
-- Name: bien_muebles_resguardos_fk; Type: FK CONSTRAINT; Schema: public; Owner: mike
--

ALTER TABLE ONLY resguardos
    ADD CONSTRAINT bien_muebles_resguardos_fk FOREIGN KEY (id_mueble) REFERENCES bien_muebles(id_mueble);


--
-- Name: cat_estado_bien_inmueble_observacion_bien_muebles_fk; Type: FK CONSTRAINT; Schema: public; Owner: mike
--

ALTER TABLE ONLY observacion_bien_muebles
    ADD CONSTRAINT cat_estado_bien_inmueble_observacion_bien_muebles_fk FOREIGN KEY (id_estado_bien_mueble) REFERENCES cat_estado_bien_inmueble(id_estado_bien_mueble);


--
-- Name: cat_motivo_baja_bien_mueble_baja_fk; Type: FK CONSTRAINT; Schema: public; Owner: mike
--

ALTER TABLE ONLY bien_mueble_baja
    ADD CONSTRAINT cat_motivo_baja_bien_mueble_baja_fk FOREIGN KEY (id_motivo_baja) REFERENCES cat_motivo_baja(id_motivo_baja);


--
-- Name: cat_motivo_movimiento_movimientos_fk; Type: FK CONSTRAINT; Schema: public; Owner: mike
--

ALTER TABLE ONLY movimientos
    ADD CONSTRAINT cat_motivo_movimiento_movimientos_fk FOREIGN KEY (id_motivo_movimiento) REFERENCES cat_motivo_movimiento(id_motivo_movimiento);


--
-- Name: cat_nivel_usuario_usuarios_fk; Type: FK CONSTRAINT; Schema: public; Owner: mike
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT cat_nivel_usuario_usuarios_fk FOREIGN KEY (id_nivel_usuario) REFERENCES cat_nivel_usuario(id_nivel_usuario);


--
-- Name: cat_sitios_bien_muebles_fk; Type: FK CONSTRAINT; Schema: public; Owner: mike
--

ALTER TABLE ONLY bien_muebles
    ADD CONSTRAINT cat_sitios_bien_muebles_fk FOREIGN KEY (is_sitio_actual) REFERENCES cat_sitio(id_sitio);


--
-- Name: cat_sitios_inventarios_fk; Type: FK CONSTRAINT; Schema: public; Owner: mike
--

ALTER TABLE ONLY inventarios
    ADD CONSTRAINT cat_sitios_inventarios_fk FOREIGN KEY (is_sitio) REFERENCES cat_sitio(id_sitio);


--
-- Name: cat_sitios_movimientos_fk; Type: FK CONSTRAINT; Schema: public; Owner: mike
--

ALTER TABLE ONLY movimientos
    ADD CONSTRAINT cat_sitios_movimientos_fk FOREIGN KEY (is_sitio) REFERENCES cat_sitio(id_sitio);


--
-- Name: cat_sitios_resguardante_fk; Type: FK CONSTRAINT; Schema: public; Owner: mike
--

ALTER TABLE ONLY resguardante
    ADD CONSTRAINT cat_sitios_resguardante_fk FOREIGN KEY (id_sitio) REFERENCES cat_sitio(id_sitio);


--
-- Name: cat_sitios_usuarios_fk; Type: FK CONSTRAINT; Schema: public; Owner: mike
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT cat_sitios_usuarios_fk FOREIGN KEY (id_sitio) REFERENCES cat_sitio(id_sitio);


--
-- Name: cat_status_bien_mueble_bien_muebles_fk; Type: FK CONSTRAINT; Schema: public; Owner: mike
--

ALTER TABLE ONLY bien_muebles
    ADD CONSTRAINT cat_status_bien_mueble_bien_muebles_fk FOREIGN KEY (id_status_bien_mueble) REFERENCES cat_status_bien_mueble(id_status_bien_mueble);


--
-- Name: cat_status_inventario_inventarios_fk; Type: FK CONSTRAINT; Schema: public; Owner: mike
--

ALTER TABLE ONLY inventarios
    ADD CONSTRAINT cat_status_inventario_inventarios_fk FOREIGN KEY (id_status_inventario) REFERENCES cat_status_inventario(id_status_inventario);


--
-- Name: cat_status_resguardamte_resguardante_fk; Type: FK CONSTRAINT; Schema: public; Owner: mike
--

ALTER TABLE ONLY resguardante
    ADD CONSTRAINT cat_status_resguardamte_resguardante_fk FOREIGN KEY (id_status_resguardante) REFERENCES cat_status_resguardamte(id_status_resguardante);


--
-- Name: cat_status_resguardo_resguardos_fk; Type: FK CONSTRAINT; Schema: public; Owner: mike
--

ALTER TABLE ONLY resguardos
    ADD CONSTRAINT cat_status_resguardo_resguardos_fk FOREIGN KEY (id_status_resguardo) REFERENCES cat_status_resguardo(id_status_resguardo);


--
-- Name: cat_status_usuario_usuarios_fk; Type: FK CONSTRAINT; Schema: public; Owner: mike
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT cat_status_usuario_usuarios_fk FOREIGN KEY (id_status_usuario) REFERENCES cat_status_usuario(id_status_usuario);


--
-- Name: cat_status_validacion_inventario_validacion_fk; Type: FK CONSTRAINT; Schema: public; Owner: mike
--

ALTER TABLE ONLY inventario_validacion
    ADD CONSTRAINT cat_status_validacion_inventario_validacion_fk FOREIGN KEY (id_status_validacion) REFERENCES cat_status_validacion(id_status_validacion);


--
-- Name: cat_tipo_bien_mueble_bien_muebles_fk; Type: FK CONSTRAINT; Schema: public; Owner: mike
--

ALTER TABLE ONLY bien_muebles
    ADD CONSTRAINT cat_tipo_bien_mueble_bien_muebles_fk FOREIGN KEY (id_tipo_bien_mueble) REFERENCES cat_tipo_bien_mueble(id_tipo_bien_mueble);


--
-- Name: inventarios_inventario_validacion_fk; Type: FK CONSTRAINT; Schema: public; Owner: mike
--

ALTER TABLE ONLY inventario_validacion
    ADD CONSTRAINT inventarios_inventario_validacion_fk FOREIGN KEY (id_inventario) REFERENCES inventarios(id_inventario);


--
-- Name: movimientos_resguardos_fk; Type: FK CONSTRAINT; Schema: public; Owner: mike
--

ALTER TABLE ONLY resguardos
    ADD CONSTRAINT movimientos_resguardos_fk FOREIGN KEY (movimiento_id) REFERENCES movimientos(movimiento_id);


--
-- Name: observacion_bien_muebles_inventario_validacion_fk; Type: FK CONSTRAINT; Schema: public; Owner: mike
--

ALTER TABLE ONLY inventario_validacion
    ADD CONSTRAINT observacion_bien_muebles_inventario_validacion_fk FOREIGN KEY (id_observacion) REFERENCES observacion_bien_muebles(id_observacion);


--
-- Name: observacion_bien_muebles_resguardos_fk; Type: FK CONSTRAINT; Schema: public; Owner: mike
--

ALTER TABLE ONLY resguardos
    ADD CONSTRAINT observacion_bien_muebles_resguardos_fk FOREIGN KEY (id_observacion) REFERENCES observacion_bien_muebles(id_observacion);


--
-- Name: resguardante_movimientos_fk; Type: FK CONSTRAINT; Schema: public; Owner: mike
--

ALTER TABLE ONLY movimientos
    ADD CONSTRAINT resguardante_movimientos_fk FOREIGN KEY (id_resguardante) REFERENCES resguardante(id_resguardante);


--
-- Name: resguardante_observacion_bien_muebles_fk; Type: FK CONSTRAINT; Schema: public; Owner: mike
--

ALTER TABLE ONLY observacion_bien_muebles
    ADD CONSTRAINT resguardante_observacion_bien_muebles_fk FOREIGN KEY (id_resguardante) REFERENCES resguardante(id_resguardante);


--
-- Name: resguardante_resguardos_fk; Type: FK CONSTRAINT; Schema: public; Owner: mike
--

ALTER TABLE ONLY resguardos
    ADD CONSTRAINT resguardante_resguardos_fk FOREIGN KEY (id_resguardante) REFERENCES resguardante(id_resguardante);


--
-- Name: usuarios_bien_mueble_baja_fk; Type: FK CONSTRAINT; Schema: public; Owner: mike
--

ALTER TABLE ONLY bien_mueble_baja
    ADD CONSTRAINT usuarios_bien_mueble_baja_fk FOREIGN KEY (usuario_id) REFERENCES usuario(id);


--
-- Name: usuarios_bien_muebles_fk; Type: FK CONSTRAINT; Schema: public; Owner: mike
--

ALTER TABLE ONLY bien_muebles
    ADD CONSTRAINT usuarios_bien_muebles_fk FOREIGN KEY (id) REFERENCES usuario(id);


--
-- Name: usuarios_inventario_validacion_fk; Type: FK CONSTRAINT; Schema: public; Owner: mike
--

ALTER TABLE ONLY inventario_validacion
    ADD CONSTRAINT usuarios_inventario_validacion_fk FOREIGN KEY (id) REFERENCES usuario(id);


--
-- Name: usuarios_inventarios_fk; Type: FK CONSTRAINT; Schema: public; Owner: mike
--

ALTER TABLE ONLY inventarios
    ADD CONSTRAINT usuarios_inventarios_fk FOREIGN KEY (id) REFERENCES usuario(id);


--
-- Name: usuarios_movimientos_fk; Type: FK CONSTRAINT; Schema: public; Owner: mike
--

ALTER TABLE ONLY movimientos
    ADD CONSTRAINT usuarios_movimientos_fk FOREIGN KEY (id) REFERENCES usuario(id);


--
-- Name: usuarios_observacion_bien_muebles_fk; Type: FK CONSTRAINT; Schema: public; Owner: mike
--

ALTER TABLE ONLY observacion_bien_muebles
    ADD CONSTRAINT usuarios_observacion_bien_muebles_fk FOREIGN KEY (id) REFERENCES usuario(id);


--
-- Name: usuarios_resguardos_fk; Type: FK CONSTRAINT; Schema: public; Owner: mike
--

ALTER TABLE ONLY resguardos
    ADD CONSTRAINT usuarios_resguardos_fk FOREIGN KEY (id) REFERENCES usuario(id);


--
-- Name: usuarios_usuario_sesion_fk; Type: FK CONSTRAINT; Schema: public; Owner: mike
--

ALTER TABLE ONLY usuario_sesion
    ADD CONSTRAINT usuarios_usuario_sesion_fk FOREIGN KEY (id) REFERENCES usuario(id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--


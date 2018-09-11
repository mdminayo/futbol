--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.7
-- Dumped by pg_dump version 9.6.7

-- Started on 2018-09-11 00:11:48

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12387)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2141 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 187 (class 1259 OID 52721)
-- Name: equipo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE equipo (
    codigo integer NOT NULL,
    nombre character varying(50) NOT NULL
);


ALTER TABLE equipo OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 52719)
-- Name: equipo_codigo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE equipo_codigo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE equipo_codigo_seq OWNER TO postgres;

--
-- TOC entry 2142 (class 0 OID 0)
-- Dependencies: 186
-- Name: equipo_codigo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE equipo_codigo_seq OWNED BY equipo.codigo;


--
-- TOC entry 188 (class 1259 OID 52833)
-- Name: partido; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE partido (
    fecha date,
    hora time with time zone,
    lugar character varying(100),
    codigoequipolocal bigint,
    codigoequipovisitante bigint,
    goleslocal bigint,
    golesvisitante bigint
);


ALTER TABLE partido OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 52714)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE usuario (
    usuario character varying(30) NOT NULL,
    clave character varying(32),
    rol character varying(1),
    foto character varying(30)
);


ALTER TABLE usuario OWNER TO postgres;

--
-- TOC entry 2009 (class 2604 OID 52724)
-- Name: equipo codigo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY equipo ALTER COLUMN codigo SET DEFAULT nextval('equipo_codigo_seq'::regclass);


--
-- TOC entry 2133 (class 0 OID 52721)
-- Dependencies: 187
-- Data for Name: equipo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY equipo (codigo, nombre) FROM stdin;
1	Pasto
2	Cali
3	Medellin
4	Santa Fe
5	America
6	Millonarios
7	Chico
8	Tolima
9	Nacional
\.


--
-- TOC entry 2143 (class 0 OID 0)
-- Dependencies: 186
-- Name: equipo_codigo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('equipo_codigo_seq', 9, true);


--
-- TOC entry 2134 (class 0 OID 52833)
-- Dependencies: 188
-- Data for Name: partido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY partido (fecha, hora, lugar, codigoequipolocal, codigoequipovisitante, goleslocal, golesvisitante) FROM stdin;
2018-09-09	22:50:00-05	Pasto	1	2	4	2
2018-09-05	15:23:00-05	Pasto	1	2	3	4
2018-09-10	11:30:00-05	Tolima	8	3	3	2
2018-09-11	11:11:00-05	Medellin	3	1	3	3
2018-09-12	10:40:00-05	Medellin	9	1	1	2
2018-09-05	08:50:00-05	Cali	2	4	5	3
\.


--
-- TOC entry 2131 (class 0 OID 52714)
-- Dependencies: 185
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY usuario (usuario, clave, rol, foto) FROM stdin;
admin	123	A	foto1.jpg
Danilo	123	J	foto2.jpg
\.


--
-- TOC entry 2013 (class 2606 OID 52726)
-- Name: equipo equipo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY equipo
    ADD CONSTRAINT equipo_pkey PRIMARY KEY (codigo);


--
-- TOC entry 2011 (class 2606 OID 52718)
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (usuario);


-- Completed on 2018-09-11 00:11:50

--
-- PostgreSQL database dump complete
--


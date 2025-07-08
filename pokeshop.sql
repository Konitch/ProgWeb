--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5
-- Dumped by pg_dump version 17.5

-- Started on 2025-05-19 09:43:21

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 4935 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 222 (class 1259 OID 16417)
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    id bigint NOT NULL,
    nome character varying,
    endereco character varying,
    cpf character varying
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16416)
-- Name: client_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.client_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.client_id_seq OWNER TO postgres;

--
-- TOC entry 4936 (class 0 OID 0)
-- Dependencies: 221
-- Name: client_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.client_id_seq OWNED BY public.cliente.id;


--
-- TOC entry 220 (class 1259 OID 16408)
-- Name: comentario_poke; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comentario_poke (
    id bigint NOT NULL,
    data date,
    conteudo character varying,
    id_pokemon bigint NOT NULL,
    id_cliente bigint NOT NULL
);


ALTER TABLE public.comentario_poke OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16407)
-- Name: comentario_poke_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comentario_poke_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.comentario_poke_id_seq OWNER TO postgres;

--
-- TOC entry 4937 (class 0 OID 0)
-- Dependencies: 219
-- Name: comentario_poke_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comentario_poke_id_seq OWNED BY public.comentario_poke.id;


--
-- TOC entry 226 (class 1259 OID 16435)
-- Name: comentario_publi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comentario_publi (
    id bigint NOT NULL,
    data date,
    publicacao_id bigint,
    conteudo character varying
);


ALTER TABLE public.comentario_publi OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16434)
-- Name: comentario_publi_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comentario_publi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.comentario_publi_id_seq OWNER TO postgres;

--
-- TOC entry 4938 (class 0 OID 0)
-- Dependencies: 225
-- Name: comentario_publi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comentario_publi_id_seq OWNED BY public.comentario_publi.id;


--
-- TOC entry 218 (class 1259 OID 16399)
-- Name: pokemon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pokemon (
    id bigint NOT NULL,
    nome character varying,
    preco numeric,
    tipo_1 character varying,
    tipo_2 character varying,
    avaliacao numeric,
    descricao character varying,
    altura numeric,
    peso numeric,
    genero_m boolean NOT NULL,
    genero_f boolean NOT NULL
);


ALTER TABLE public.pokemon OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16398)
-- Name: pokemon_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pokemon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pokemon_id_seq OWNER TO postgres;

--
-- TOC entry 4939 (class 0 OID 0)
-- Dependencies: 217
-- Name: pokemon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pokemon_id_seq OWNED BY public.pokemon.id;


--
-- TOC entry 224 (class 1259 OID 16426)
-- Name: publicacao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.publicacao (
    id bigint NOT NULL,
    foto character varying,
    texto character varying,
    data date,
    cliente_id bigint NOT NULL
);


ALTER TABLE public.publicacao OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16425)
-- Name: publicacao_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.publicacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.publicacao_id_seq OWNER TO postgres;

--
-- TOC entry 4940 (class 0 OID 0)
-- Dependencies: 223
-- Name: publicacao_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.publicacao_id_seq OWNED BY public.publicacao.id;


--
-- TOC entry 228 (class 1259 OID 16444)
-- Name: venda; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.venda (
    id bigint NOT NULL,
    localentrega character varying,
    data date,
    cliente_id bigint NOT NULL,
    pokemon_id bigint NOT NULL
);


ALTER TABLE public.venda OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16443)
-- Name: venda_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.venda_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.venda_id_seq OWNER TO postgres;

--
-- TOC entry 4941 (class 0 OID 0)
-- Dependencies: 227
-- Name: venda_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.venda_id_seq OWNED BY public.venda.id;


--
-- TOC entry 4769 (class 2604 OID 16420)
-- Name: cliente id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente ALTER COLUMN id SET DEFAULT nextval('public.client_id_seq'::regclass);


--
-- TOC entry 4768 (class 2604 OID 16411)
-- Name: comentario_poke id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentario_poke ALTER COLUMN id SET DEFAULT nextval('public.comentario_poke_id_seq'::regclass);


--
-- TOC entry 4771 (class 2604 OID 16438)
-- Name: comentario_publi id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentario_publi ALTER COLUMN id SET DEFAULT nextval('public.comentario_publi_id_seq'::regclass);


--
-- TOC entry 4767 (class 2604 OID 16402)
-- Name: pokemon id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemon ALTER COLUMN id SET DEFAULT nextval('public.pokemon_id_seq'::regclass);


--
-- TOC entry 4770 (class 2604 OID 16429)
-- Name: publicacao id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publicacao ALTER COLUMN id SET DEFAULT nextval('public.publicacao_id_seq'::regclass);


--
-- TOC entry 4772 (class 2604 OID 16447)
-- Name: venda id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venda ALTER COLUMN id SET DEFAULT nextval('public.venda_id_seq'::regclass);


--
-- TOC entry 4778 (class 2606 OID 16424)
-- Name: cliente client_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT client_pkey PRIMARY KEY (id);


--
-- TOC entry 4776 (class 2606 OID 16415)
-- Name: comentario_poke comentario_poke_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentario_poke
    ADD CONSTRAINT comentario_poke_pkey PRIMARY KEY (id);


--
-- TOC entry 4782 (class 2606 OID 16442)
-- Name: comentario_publi comentario_publi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentario_publi
    ADD CONSTRAINT comentario_publi_pkey PRIMARY KEY (id);


--
-- TOC entry 4774 (class 2606 OID 16406)
-- Name: pokemon pokemon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemon
    ADD CONSTRAINT pokemon_pkey PRIMARY KEY (id);


--
-- TOC entry 4780 (class 2606 OID 16433)
-- Name: publicacao publicacao_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publicacao
    ADD CONSTRAINT publicacao_pkey PRIMARY KEY (id);


--
-- TOC entry 4784 (class 2606 OID 16451)
-- Name: venda venda_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_pkey PRIMARY KEY (id);


-- Completed on 2025-05-19 09:43:21

--
-- PostgreSQL database dump complete
--


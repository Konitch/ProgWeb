--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5
-- Dumped by pg_dump version 17.5

-- Started on 2025-07-29 23:04:36

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 221 (class 1259 OID 16417)
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    nome character varying,
    endereco character varying,
    cpf character varying,
    id bigint NOT NULL,
    admin boolean,
    email character varying,
    login character varying,
    senha character varying
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16452)
-- Name: cliente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cliente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cliente_id_seq OWNER TO postgres;

--
-- TOC entry 4957 (class 0 OID 0)
-- Dependencies: 228
-- Name: cliente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cliente_id_seq OWNED BY public.cliente.id;


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
-- TOC entry 4958 (class 0 OID 0)
-- Dependencies: 219
-- Name: comentario_poke_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comentario_poke_id_seq OWNED BY public.comentario_poke.id;


--
-- TOC entry 225 (class 1259 OID 16435)
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
-- TOC entry 224 (class 1259 OID 16434)
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
-- TOC entry 4959 (class 0 OID 0)
-- Dependencies: 224
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
    genero_f boolean NOT NULL,
    quantidade bigint,
    foto character varying
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
-- TOC entry 4960 (class 0 OID 0)
-- Dependencies: 217
-- Name: pokemon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pokemon_id_seq OWNED BY public.pokemon.id;


--
-- TOC entry 223 (class 1259 OID 16426)
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
-- TOC entry 222 (class 1259 OID 16425)
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
-- TOC entry 4961 (class 0 OID 0)
-- Dependencies: 222
-- Name: publicacao_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.publicacao_id_seq OWNED BY public.publicacao.id;


--
-- TOC entry 230 (class 1259 OID 16462)
-- Name: tipo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipo (
    id bigint NOT NULL,
    nome character varying
);


ALTER TABLE public.tipo OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16461)
-- Name: tipo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tipo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tipo_id_seq OWNER TO postgres;

--
-- TOC entry 4962 (class 0 OID 0)
-- Dependencies: 229
-- Name: tipo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tipo_id_seq OWNED BY public.tipo.id;


--
-- TOC entry 227 (class 1259 OID 16444)
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
-- TOC entry 226 (class 1259 OID 16443)
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
-- TOC entry 4963 (class 0 OID 0)
-- Dependencies: 226
-- Name: venda_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.venda_id_seq OWNED BY public.venda.id;


--
-- TOC entry 4774 (class 2604 OID 16453)
-- Name: cliente id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente ALTER COLUMN id SET DEFAULT nextval('public.cliente_id_seq'::regclass);


--
-- TOC entry 4773 (class 2604 OID 16411)
-- Name: comentario_poke id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentario_poke ALTER COLUMN id SET DEFAULT nextval('public.comentario_poke_id_seq'::regclass);


--
-- TOC entry 4776 (class 2604 OID 16438)
-- Name: comentario_publi id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentario_publi ALTER COLUMN id SET DEFAULT nextval('public.comentario_publi_id_seq'::regclass);


--
-- TOC entry 4772 (class 2604 OID 16402)
-- Name: pokemon id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemon ALTER COLUMN id SET DEFAULT nextval('public.pokemon_id_seq'::regclass);


--
-- TOC entry 4775 (class 2604 OID 16429)
-- Name: publicacao id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publicacao ALTER COLUMN id SET DEFAULT nextval('public.publicacao_id_seq'::regclass);


--
-- TOC entry 4778 (class 2604 OID 16465)
-- Name: tipo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo ALTER COLUMN id SET DEFAULT nextval('public.tipo_id_seq'::regclass);


--
-- TOC entry 4777 (class 2604 OID 16447)
-- Name: venda id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venda ALTER COLUMN id SET DEFAULT nextval('public.venda_id_seq'::regclass);


--
-- TOC entry 4942 (class 0 OID 16417)
-- Dependencies: 221
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cliente (nome, endereco, cpf, id, admin, email, login, senha) FROM stdin;
testando	testando123	\N	2	f	thebesttigerforyou@gmail.com	teste123	123456
Gui	naosei	\N	3	f	gui@gmail.com	Gui	123
Kon o tigre	123	\N	1	t	levigomessg@gmail.com	levi	123
douglaslevi	123	\N	4	f	levigomessg@gmail.com	kon	123
\.


--
-- TOC entry 4941 (class 0 OID 16408)
-- Dependencies: 220
-- Data for Name: comentario_poke; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comentario_poke (id, data, conteudo, id_pokemon, id_cliente) FROM stdin;
\.


--
-- TOC entry 4946 (class 0 OID 16435)
-- Dependencies: 225
-- Data for Name: comentario_publi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comentario_publi (id, data, publicacao_id, conteudo) FROM stdin;
\.


--
-- TOC entry 4939 (class 0 OID 16399)
-- Dependencies: 218
-- Data for Name: pokemon; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pokemon (id, nome, preco, tipo_1, tipo_2, avaliacao, descricao, altura, peso, genero_m, genero_f, quantidade, foto) FROM stdin;
7	Golduck	350	2	3	5	golduck	1.76	30	t	f	4	\N
14	Mewtwo	6000	2	3	5	Ele Ã© um mewtwo muito forte	1.8	250	t	f	1	\N
15	Pikachu	500	5	6	5	AAAA	60	20	t	f	13	\N
\.


--
-- TOC entry 4944 (class 0 OID 16426)
-- Dependencies: 223
-- Data for Name: publicacao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.publicacao (id, foto, texto, data, cliente_id) FROM stdin;
\.


--
-- TOC entry 4951 (class 0 OID 16462)
-- Dependencies: 230
-- Data for Name: tipo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipo (id, nome) FROM stdin;
1	\N
3	Agua
4	Dragao
5	Raio
6	Trovao
7	Voador
\.


--
-- TOC entry 4948 (class 0 OID 16444)
-- Dependencies: 227
-- Data for Name: venda; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.venda (id, localentrega, data, cliente_id, pokemon_id) FROM stdin;
\.


--
-- TOC entry 4964 (class 0 OID 0)
-- Dependencies: 228
-- Name: cliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cliente_id_seq', 4, true);


--
-- TOC entry 4965 (class 0 OID 0)
-- Dependencies: 219
-- Name: comentario_poke_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comentario_poke_id_seq', 1, false);


--
-- TOC entry 4966 (class 0 OID 0)
-- Dependencies: 224
-- Name: comentario_publi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comentario_publi_id_seq', 1, false);


--
-- TOC entry 4967 (class 0 OID 0)
-- Dependencies: 217
-- Name: pokemon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pokemon_id_seq', 15, true);


--
-- TOC entry 4968 (class 0 OID 0)
-- Dependencies: 222
-- Name: publicacao_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.publicacao_id_seq', 1, false);


--
-- TOC entry 4969 (class 0 OID 0)
-- Dependencies: 229
-- Name: tipo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipo_id_seq', 7, true);


--
-- TOC entry 4970 (class 0 OID 0)
-- Dependencies: 226
-- Name: venda_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.venda_id_seq', 1, false);


--
-- TOC entry 4784 (class 2606 OID 16460)
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id);


--
-- TOC entry 4782 (class 2606 OID 16415)
-- Name: comentario_poke comentario_poke_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentario_poke
    ADD CONSTRAINT comentario_poke_pkey PRIMARY KEY (id);


--
-- TOC entry 4788 (class 2606 OID 16442)
-- Name: comentario_publi comentario_publi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentario_publi
    ADD CONSTRAINT comentario_publi_pkey PRIMARY KEY (id);


--
-- TOC entry 4780 (class 2606 OID 16406)
-- Name: pokemon pokemon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemon
    ADD CONSTRAINT pokemon_pkey PRIMARY KEY (id);


--
-- TOC entry 4786 (class 2606 OID 16433)
-- Name: publicacao publicacao_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publicacao
    ADD CONSTRAINT publicacao_pkey PRIMARY KEY (id);


--
-- TOC entry 4792 (class 2606 OID 16469)
-- Name: tipo tipo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo
    ADD CONSTRAINT tipo_pkey PRIMARY KEY (id);


--
-- TOC entry 4790 (class 2606 OID 16451)
-- Name: venda venda_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_pkey PRIMARY KEY (id);


-- Completed on 2025-07-29 23:04:36

--
-- PostgreSQL database dump complete
--


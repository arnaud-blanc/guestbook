--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.4 (Ubuntu 13.4-1.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: conference; Type: TABLE DATA; Schema: public; Owner: main
--

COPY public.conference (id, city, year, is_international, slug) FROM stdin;
1	Paris	2021	t	paris-2021
2	Tours centre	2024	f	tours centre-2024
\.


--
-- Data for Name: comment; Type: TABLE DATA; Schema: public; Owner: main
--

COPY public.comment (id, conference_id, author, text, email, created_at, photo_filename) FROM stdin;
1	1	Arnaud Blanc	Bien joué !	ab@blaca.eu	2021-08-10 22:46:12	\N
2	1	Archimède	Eurêka !\r\nJ'ai trouvé !	archi@mede.com	2021-08-11 23:16:12	\N
3	1	bob	Ok pour moi	bob@truc.fr	2021-08-08 22:00:12	\N
4	2	Joe Dalton	Lucky Luke !	jd@somewhere.com	2021-08-10 22:46:12	\N
\.


--
-- Data for Name: doctrine_migration_versions; Type: TABLE DATA; Schema: public; Owner: main
--

COPY public.doctrine_migration_versions (version, executed_at, execution_time) FROM stdin;
DoctrineMigrations\\Version20210807215215	2021-08-11 23:12:59	80
DoctrineMigrations\\Version20210811223632	2021-08-12 21:33:57	65
DoctrineMigrations\\Version20210811225016	2021-08-12 21:33:57	8
\.


--
-- Data for Name: test; Type: TABLE DATA; Schema: public; Owner: main
--

COPY public.test (id) FROM stdin;
\.


--
-- Name: comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: main
--

SELECT pg_catalog.setval('public.comment_id_seq', 4, true);


--
-- Name: conference_id_seq; Type: SEQUENCE SET; Schema: public; Owner: main
--

SELECT pg_catalog.setval('public.conference_id_seq', 2, true);


--
-- Name: test_id_seq; Type: SEQUENCE SET; Schema: public; Owner: main
--

SELECT pg_catalog.setval('public.test_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--


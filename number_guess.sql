--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    player_id integer NOT NULL,
    tries integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    player_id integer NOT NULL,
    name character varying(22) NOT NULL
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_player_id_seq OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_player_id_seq OWNED BY public.players.player_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: players player_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN player_id SET DEFAULT nextval('public.players_player_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (141, 58, 296);
INSERT INTO public.games VALUES (142, 58, 934);
INSERT INTO public.games VALUES (143, 59, 247);
INSERT INTO public.games VALUES (144, 59, 997);
INSERT INTO public.games VALUES (145, 58, 947);
INSERT INTO public.games VALUES (146, 58, 75);
INSERT INTO public.games VALUES (147, 58, 812);
INSERT INTO public.games VALUES (148, 60, 3);
INSERT INTO public.games VALUES (149, 61, 16);
INSERT INTO public.games VALUES (150, 61, 342);
INSERT INTO public.games VALUES (151, 62, 878);
INSERT INTO public.games VALUES (152, 62, 388);
INSERT INTO public.games VALUES (153, 61, 381);
INSERT INTO public.games VALUES (154, 61, 321);
INSERT INTO public.games VALUES (155, 61, 194);
INSERT INTO public.games VALUES (156, 63, 17);
INSERT INTO public.games VALUES (157, 63, 124);
INSERT INTO public.games VALUES (158, 64, 466);
INSERT INTO public.games VALUES (159, 64, 879);
INSERT INTO public.games VALUES (160, 63, 346);
INSERT INTO public.games VALUES (161, 63, 346);
INSERT INTO public.games VALUES (162, 63, 399);
INSERT INTO public.games VALUES (163, 65, 777);
INSERT INTO public.games VALUES (164, 65, 395);
INSERT INTO public.games VALUES (165, 66, 612);
INSERT INTO public.games VALUES (166, 66, 231);
INSERT INTO public.games VALUES (167, 65, 664);
INSERT INTO public.games VALUES (168, 65, 213);
INSERT INTO public.games VALUES (169, 65, 149);
INSERT INTO public.games VALUES (170, 67, 690);
INSERT INTO public.games VALUES (171, 67, 558);
INSERT INTO public.games VALUES (172, 68, 49);
INSERT INTO public.games VALUES (173, 68, 345);
INSERT INTO public.games VALUES (174, 67, 146);
INSERT INTO public.games VALUES (175, 67, 608);
INSERT INTO public.games VALUES (176, 67, 301);
INSERT INTO public.games VALUES (177, 69, 890);
INSERT INTO public.games VALUES (178, 69, 383);
INSERT INTO public.games VALUES (179, 70, 967);
INSERT INTO public.games VALUES (180, 70, 393);
INSERT INTO public.games VALUES (181, 69, 397);
INSERT INTO public.games VALUES (182, 69, 364);
INSERT INTO public.games VALUES (183, 69, 901);
INSERT INTO public.games VALUES (184, 71, 565);
INSERT INTO public.games VALUES (185, 71, 993);
INSERT INTO public.games VALUES (186, 72, 461);
INSERT INTO public.games VALUES (187, 72, 714);
INSERT INTO public.games VALUES (188, 71, 852);
INSERT INTO public.games VALUES (189, 71, 670);
INSERT INTO public.games VALUES (190, 71, 813);
INSERT INTO public.games VALUES (191, 73, 793);
INSERT INTO public.games VALUES (192, 73, 167);
INSERT INTO public.games VALUES (193, 74, 849);
INSERT INTO public.games VALUES (194, 74, 225);
INSERT INTO public.games VALUES (195, 73, 297);
INSERT INTO public.games VALUES (196, 73, 974);
INSERT INTO public.games VALUES (197, 73, 355);
INSERT INTO public.games VALUES (198, 75, 224);
INSERT INTO public.games VALUES (199, 75, 940);
INSERT INTO public.games VALUES (200, 76, 838);
INSERT INTO public.games VALUES (201, 76, 616);
INSERT INTO public.games VALUES (202, 75, 159);
INSERT INTO public.games VALUES (203, 75, 540);
INSERT INTO public.games VALUES (204, 75, 752);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (58, 'user_1689120166260');
INSERT INTO public.players VALUES (59, 'user_1689120166259');
INSERT INTO public.players VALUES (60, 'Gabriel');
INSERT INTO public.players VALUES (61, 'user_1689120321463');
INSERT INTO public.players VALUES (62, 'user_1689120321462');
INSERT INTO public.players VALUES (63, 'user_1689120331866');
INSERT INTO public.players VALUES (64, 'user_1689120331865');
INSERT INTO public.players VALUES (65, 'user_1689120351834');
INSERT INTO public.players VALUES (66, 'user_1689120351833');
INSERT INTO public.players VALUES (67, 'user_1689120379086');
INSERT INTO public.players VALUES (68, 'user_1689120379085');
INSERT INTO public.players VALUES (69, 'user_1689120392076');
INSERT INTO public.players VALUES (70, 'user_1689120392075');
INSERT INTO public.players VALUES (71, 'user_1689120433470');
INSERT INTO public.players VALUES (72, 'user_1689120433469');
INSERT INTO public.players VALUES (73, 'user_1689120474684');
INSERT INTO public.players VALUES (74, 'user_1689120474683');
INSERT INTO public.players VALUES (75, 'user_1689120483059');
INSERT INTO public.players VALUES (76, 'user_1689120483058');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 204, true);


--
-- Name: players_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_player_id_seq', 76, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (player_id);


--
-- Name: games games_player_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_player_id_fkey FOREIGN KEY (player_id) REFERENCES public.players(player_id);


--
-- PostgreSQL database dump complete
--


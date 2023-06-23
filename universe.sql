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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: discovered; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.discovered (
    discovered_id integer NOT NULL,
    name character varying(20),
    planet_id integer,
    date date NOT NULL
);


ALTER TABLE public.discovered OWNER TO freecodecamp;

--
-- Name: discovered_discovered_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.discovered_discovered_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.discovered_discovered_id_seq OWNER TO freecodecamp;

--
-- Name: discovered_discovered_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.discovered_discovered_id_seq OWNED BY public.discovered.discovered_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    distance_from_earth numeric(14,2)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    distance_from_earth numeric(14,2),
    has_life boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    distance_from_earth numeric(14,2),
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    distance_from_earth numeric(14,2),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: discovered discovered_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.discovered ALTER COLUMN discovered_id SET DEFAULT nextval('public.discovered_discovered_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: discovered; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.discovered VALUES (1, 'Gabriel castillo', 2, '1999-06-04');
INSERT INTO public.discovered VALUES (2, 'Gabriela castillo', 3, '1999-08-04');
INSERT INTO public.discovered VALUES (3, 'Gabriela castilla', 5, '1999-09-04');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andrómeda', 'Es una galaxia espiral', 199999, 1234567.00);
INSERT INTO public.galaxy VALUES (2, 'Gabriel', 'Es una galaxia espiral o algo así', 1299999, 12334567.00);
INSERT INTO public.galaxy VALUES (3, 'Pancito', 'Es una galaxia con forma de pan', 1299999, 12334567.00);
INSERT INTO public.galaxy VALUES (4, 'Tecito', 'Es una galaxia con forma de te, quiero pan', 1299994, 1344567.30);
INSERT INTO public.galaxy VALUES (5, 'Poto', 'Es una galaxia con forma de pot, buena galaxia esta', 8888884, 1344567.30);
INSERT INTO public.galaxy VALUES (6, 'Pata', 'Es una galaxia con forma de pata, buena galaxia esta, ricas patas', 18888884, 13244567.30);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Satélite del planeta este feo', 124, 5.00, false, 1);
INSERT INTO public.moon VALUES (2, 'A', 'Satélite del planeta este feo', 1224, 5.00, false, 2);
INSERT INTO public.moon VALUES (3, 'B', 'Satélite del planeta este feo', 12324, 5.00, false, 3);
INSERT INTO public.moon VALUES (4, 'C', 'Satélite del planeta este feo', 12324, 5.00, false, 4);
INSERT INTO public.moon VALUES (5, 'D', 'Satélite del planeta este feos', 12324, 5.00, false, 5);
INSERT INTO public.moon VALUES (6, 'E', 'Satélite del planeta este feos', 12324, 5.00, false, 6);
INSERT INTO public.moon VALUES (7, 'F', 'Satélite del planeta este feos', 12324, 5.00, false, 7);
INSERT INTO public.moon VALUES (8, 'G', 'Satélite del planeta este feos', 123242, 5.00, false, 8);
INSERT INTO public.moon VALUES (9, 'H', 'Satélite del planeta este feos', 123242, 5.00, false, 8);
INSERT INTO public.moon VALUES (10, 'I', 'Satélite del planeta este feos', 123242, 5.00, false, 9);
INSERT INTO public.moon VALUES (11, 'J', 'Satélite del planeta este feos', 123242, 5.00, false, 10);
INSERT INTO public.moon VALUES (12, 'K', 'Satélite del planeta este feos', 123242, 5.00, false, 11);
INSERT INTO public.moon VALUES (13, 'L', 'Satélite de me aburri ya', 123242, 5.00, false, 1);
INSERT INTO public.moon VALUES (14, 'M', 'Satélite de me aburri ya', 123242, 5.00, false, 2);
INSERT INTO public.moon VALUES (15, 'N', 'Satélite de me aburri ya', 123242, 5.00, false, 3);
INSERT INTO public.moon VALUES (16, 'Na', 'Satélite de me aburri ya', 123242, 532.00, false, 3);
INSERT INTO public.moon VALUES (17, 'Nb', 'Satélite de me aburri ya', 123242, 532.00, false, 5);
INSERT INTO public.moon VALUES (18, 'Nab', 'Satélite de me aburri ya', 123242, 532.00, false, 9);
INSERT INTO public.moon VALUES (19, 'Dofus', 'Satélite de me aburri ya', 123242, 532.00, false, 2);
INSERT INTO public.moon VALUES (20, 'Dofus touch', 'Satélite de me aburri ya', 123242, 532.00, false, 4);
INSERT INTO public.moon VALUES (21, 'Dof', 'Satélite de me aburri ya', 123242, 532.00, false, 7);
INSERT INTO public.moon VALUES (22, 'Daf', 'Satélite de me aburri ya', 123242, 532.00, false, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Pokemon', 'viven pokemones', 123, 44444.00, true, 1);
INSERT INTO public.planet VALUES (2, 'Pakesmon', 'viven pakesmones', 2123, 441444.00, true, 2);
INSERT INTO public.planet VALUES (3, 'Paksn', 'viven paksnes', 22123, 4411444.00, true, 3);
INSERT INTO public.planet VALUES (4, 'Patt', 'no tiene ningún brillo', 123, 44114.00, false, 4);
INSERT INTO public.planet VALUES (5, 'Poto', 'todos tienen buen poto', 1213, 4141114.00, true, 5);
INSERT INTO public.planet VALUES (6, 'Pata', 'todos tienen buenas patas', 1213, 4141114.00, true, 5);
INSERT INTO public.planet VALUES (7, 'Pataxz', 'todos tienen buenas patas', 1213, 4141114.00, true, 6);
INSERT INTO public.planet VALUES (8, 'Flojera', 'todos tienen flojera', 1213, 41413.00, false, 1);
INSERT INTO public.planet VALUES (9, 'Queda poco', 'todos quieren que termine', 1213, 41413.00, false, 1);
INSERT INTO public.planet VALUES (10, 'UDP', 'Nadie tiene vida', 1213, 41413.00, false, 5);
INSERT INTO public.planet VALUES (11, 'UDPatas', 'Nadie tiene patas', 1213, 41413.00, false, 6);
INSERT INTO public.planet VALUES (12, 'Ultimo planeta', 'Finalemente el ultimo', 1213, 41413.00, false, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Estrella del poto', 'Estrella justo al centro de la galaxia poto', 82838283, 123214123.43, 5);
INSERT INTO public.star VALUES (2, 'Estrella de las patas', 'Estrella justo al centro de la galaxia pata', 22838283, 14123.43, 6);
INSERT INTO public.star VALUES (3, 'Marraqueta', 'Estrella perteneciente a la galaxia del Pan, posee una forma peculiar', 138283, 14123.43, 3);
INSERT INTO public.star VALUES (4, 'Can mayor', 'Boring star', 1382834, 124123.43, 1);
INSERT INTO public.star VALUES (5, 'Kinky', 'Esta estrella describe la galaxia Gabriel', 1382, 1241938.43, 2);
INSERT INTO public.star VALUES (6, 'Negro', 'Estrella más conocida de la galaxia tecito', 1111382, 1241938.43, 2);


--
-- Name: discovered_discovered_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.discovered_discovered_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: discovered discovered_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.discovered
    ADD CONSTRAINT discovered_name_key UNIQUE (name);


--
-- Name: discovered discovered_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.discovered
    ADD CONSTRAINT discovered_pkey PRIMARY KEY (discovered_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: discovered discovered_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.discovered
    ADD CONSTRAINT discovered_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


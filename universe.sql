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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    description text,
    distance_earth numeric,
    category character varying NOT NULL
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
    size integer,
    is_spherical boolean,
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
    age_million_years integer,
    planet_type boolean,
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
    age_million_years integer,
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
-- Name: table_new; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.table_new (
    table_new_id integer NOT NULL,
    name character varying(20) NOT NULL,
    cl_3 text NOT NULL
);


ALTER TABLE public.table_new OWNER TO freecodecamp;

--
-- Name: table_new_table_new_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.table_new_table_new_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.table_new_table_new_id_seq OWNER TO freecodecamp;

--
-- Name: table_new_table_new_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.table_new_table_new_id_seq OWNED BY public.table_new.table_new_id;


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
-- Name: table_new table_new_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table_new ALTER COLUMN table_new_id SET DEFAULT nextval('public.table_new_table_new_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'G1', 'Galaxy 1', 20000, 'a');
INSERT INTO public.galaxy VALUES (2, 'G2', 'Galaxy 2', 30000, 'a');
INSERT INTO public.galaxy VALUES (3, 'G3', 'Galaxy 3', 50000, 'b');
INSERT INTO public.galaxy VALUES (4, 'G4', 'Galaxy 4', 9000, 'c');
INSERT INTO public.galaxy VALUES (5, 'G5', 'Galaxy 5', 30000, 'c');
INSERT INTO public.galaxy VALUES (6, 'G6', 'Galaxy 6', 760000, 'd');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'M1', 'Moon 1', 920400, true, 1);
INSERT INTO public.moon VALUES (2, 'M2', 'Moon 2', 60600, false, 2);
INSERT INTO public.moon VALUES (3, 'M3', 'Moon 3', 735000, true, 3);
INSERT INTO public.moon VALUES (9, 'M5', 'Moon 5', 9620400, false, 9);
INSERT INTO public.moon VALUES (10, 'M6', 'Moon 6', 670600, false, 10);
INSERT INTO public.moon VALUES (11, 'M7', 'Moon 7', 735000, true, 11);
INSERT INTO public.moon VALUES (13, 'M9', 'Moon 9', 6620400, false, 9);
INSERT INTO public.moon VALUES (14, 'M10', 'Moon 10', 270600, false, 10);
INSERT INTO public.moon VALUES (16, 'M12', 'Moon 12', 446436, false, 12);
INSERT INTO public.moon VALUES (17, 'M13', 'Moon 13', 620400, true, 1);
INSERT INTO public.moon VALUES (18, 'M14', 'Moon 14', 20600, false, 2);
INSERT INTO public.moon VALUES (19, 'M15', 'Moon 15', 65000, true, 3);
INSERT INTO public.moon VALUES (20, 'M16', 'Moon 16', 4463611, true, 4);
INSERT INTO public.moon VALUES (15, 'M11', 'Moon 11', 635000, true, 11);
INSERT INTO public.moon VALUES (4, 'M4', 'Moon 4', 46360, true, 4);
INSERT INTO public.moon VALUES (12, 'M8', 'Moon 8', 463360, false, 12);
INSERT INTO public.moon VALUES (21, 'M17', 'Moon 17', 1120400, true, 9);
INSERT INTO public.moon VALUES (22, 'M18', 'Moon 18', 25600, true, 10);
INSERT INTO public.moon VALUES (23, 'M19', 'Moon 19', 165000, true, 11);
INSERT INTO public.moon VALUES (24, 'M20', 'Moon 20', 81463611, false, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'P1', 'Planet 1', 92000, true, 1);
INSERT INTO public.planet VALUES (2, 'P2', 'Planet 2', 6000, false, 2);
INSERT INTO public.planet VALUES (3, 'P3', 'Planet 3', 725000, false, 3);
INSERT INTO public.planet VALUES (4, 'P2', 'Planet 2', 26360, true, 4);
INSERT INTO public.planet VALUES (9, 'P5', 'Planet 5', 792000, true, 5);
INSERT INTO public.planet VALUES (10, 'P6', 'Planet 6', 66000, false, 6);
INSERT INTO public.planet VALUES (11, 'P7', 'Planet 7', 572000, true, 1);
INSERT INTO public.planet VALUES (12, 'P8', 'Planet 8', 626360, true, 2);
INSERT INTO public.planet VALUES (13, 'P9', 'Planet 9', 392000, false, 3);
INSERT INTO public.planet VALUES (14, 'P10', 'Planet 10', 56000, false, 4);
INSERT INTO public.planet VALUES (15, 'P11', 'Planet 1', 532000, true, 5);
INSERT INTO public.planet VALUES (16, 'P12', 'Planet 12', 6263660, true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'S1', 'Star 1', 62000, 1);
INSERT INTO public.star VALUES (2, 'S2', 'Star 2', 5000, 2);
INSERT INTO public.star VALUES (3, 'S3', 'Star 3', 425000, 3);
INSERT INTO public.star VALUES (4, 'S4', 'Star 4', 72000, 4);
INSERT INTO public.star VALUES (5, 'S5', 'Star 5', 8000, 5);
INSERT INTO public.star VALUES (6, 'S6', 'Star 6', 415000, 6);


--
-- Data for Name: table_new; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.table_new VALUES (1, 'a1', 's');
INSERT INTO public.table_new VALUES (2, 'b2', 'w2');
INSERT INTO public.table_new VALUES (3, 'c3', 'f4');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: table_new_table_new_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.table_new_table_new_id_seq', 3, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unq UNIQUE (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unq UNIQUE (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unq UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unq UNIQUE (star_id);


--
-- Name: table_new table_new_cl_2_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table_new
    ADD CONSTRAINT table_new_cl_2_key UNIQUE (name);


--
-- Name: table_new table_new_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table_new
    ADD CONSTRAINT table_new_pkey PRIMARY KEY (table_new_id);


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

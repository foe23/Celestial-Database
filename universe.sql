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
    galaxy character varying(50) NOT NULL,
    description text,
    years_old integer,
    is_spherical boolean,
    has_life boolean,
    name character varying(23)
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
    moon character varying(50) NOT NULL,
    planet character varying(50),
    size integer,
    weight integer,
    is_spherical boolean,
    name character varying(40)
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
    planet character varying(50) NOT NULL,
    description text,
    is_spherical boolean,
    years_old numeric,
    star character varying(50),
    name character varying(100)
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
-- Name: population; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.population (
    planet character varying(50) NOT NULL,
    total_population numeric,
    population_id integer NOT NULL,
    more_info text NOT NULL,
    years integer,
    name character varying(100)
);


ALTER TABLE public.population OWNER TO freecodecamp;

--
-- Name: population_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.population_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.population_id_seq OWNER TO freecodecamp;

--
-- Name: population_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.population_id_seq OWNED BY public.population.population_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    star character varying(50) NOT NULL,
    is_spherical boolean,
    years_old integer,
    size integer,
    galaxy character varying(50),
    name character varying(24)
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
-- Name: population population_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.population ALTER COLUMN population_id SET DEFAULT nextval('public.population_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Cygnus A', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Virgo A', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Milky Way', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Magellanic Clouds', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Canis Major Dwarf', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'one', 'Earth', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'two', 'Earth', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'three', 'Earth', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'four', 'Earth', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'five', 'Earth', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'six', 'Earth', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'seven', 'Earth', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'eight', 'Earth', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'nine', 'Earth', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'ten', 'Earth', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'ninene', 'Earth', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'tener', 'Earth', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'ninener', 'Earth', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'etener', 'Earth', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'ninenerer', 'Earth', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'betener', 'Earth', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'ninenerermp', 'Earth', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'betenerers', 'Earth', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'ninenerermpe', 'Earth', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'betenqweerers', 'Earth', NULL, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Earth', NULL, NULL, NULL, 'Leo', NULL);
INSERT INTO public.planet VALUES (3, 'Zeus', NULL, NULL, NULL, 'Leo', NULL);
INSERT INTO public.planet VALUES (4, 'Uranus', NULL, NULL, NULL, 'Leo', NULL);
INSERT INTO public.planet VALUES (5, 'Pluto', NULL, NULL, NULL, 'Leo', NULL);
INSERT INTO public.planet VALUES (6, 'Afrodite', NULL, NULL, NULL, 'Leo', NULL);
INSERT INTO public.planet VALUES (7, 'Neptune', NULL, NULL, NULL, 'Leo', NULL);
INSERT INTO public.planet VALUES (8, 'Alpha', NULL, NULL, NULL, 'Lyra', NULL);
INSERT INTO public.planet VALUES (9, 'Beta', NULL, NULL, NULL, 'Lyra', NULL);
INSERT INTO public.planet VALUES (10, 'Jupiter', NULL, NULL, NULL, 'Lyra', NULL);
INSERT INTO public.planet VALUES (11, 'Mars', NULL, NULL, NULL, 'Lyra', NULL);
INSERT INTO public.planet VALUES (12, 'Teodora', NULL, NULL, NULL, 'Lyra', NULL);
INSERT INTO public.planet VALUES (13, 'Pit', NULL, NULL, NULL, 'Lyra', NULL);


--
-- Data for Name: population; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.population VALUES ('Earth', 109522111, 1, 'test', NULL, NULL);
INSERT INTO public.population VALUES ('Mars', 12, 2, 'test2', NULL, NULL);
INSERT INTO public.population VALUES ('Neptune', 0, 3, 'test3', NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (5, 'lynx', NULL, NULL, NULL, 'Andromeda', NULL);
INSERT INTO public.star VALUES (6, 'cancer', NULL, NULL, NULL, 'Cygnus A', NULL);
INSERT INTO public.star VALUES (7, 'Leo', NULL, NULL, NULL, 'Milky Way', NULL);
INSERT INTO public.star VALUES (8, 'Adhara', NULL, NULL, NULL, 'Cygnus A', NULL);
INSERT INTO public.star VALUES (9, 'Scorpius', NULL, NULL, NULL, 'Milky Way', NULL);
INSERT INTO public.star VALUES (10, 'Lyra', NULL, NULL, NULL, 'Milky Way', NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: population_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.population_id_seq', 1, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (galaxy);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (moon);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (planet);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: population population_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.population
    ADD CONSTRAINT population_name_key UNIQUE (planet);


--
-- Name: population population_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.population
    ADD CONSTRAINT population_pkey PRIMARY KEY (population_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (star);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_fkey FOREIGN KEY (planet) REFERENCES public.planet(planet);


--
-- Name: planet planet_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_fkey FOREIGN KEY (star) REFERENCES public.star(star);


--
-- Name: population population_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.population
    ADD CONSTRAINT population_planet_fkey FOREIGN KEY (planet) REFERENCES public.planet(planet);


--
-- Name: star star_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_fkey FOREIGN KEY (galaxy) REFERENCES public.galaxy(galaxy);


--
-- PostgreSQL database dump complete
--


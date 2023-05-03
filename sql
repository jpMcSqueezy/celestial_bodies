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
    galaxy_name character varying(60) NOT NULL,
    "exists" boolean,
    galaxy_id integer NOT NULL,
    is_favorite character varying(10),
    name character varying(30),
    text_field text
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
    moon_coordinates integer,
    "exists" boolean,
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    moon_count numeric,
    moon_id integer,
    star_id integer NOT NULL,
    name character varying(60) NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    planet_id integer,
    galaxy_id integer,
    name character varying(60) NOT NULL,
    is_favorite character varying(10)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.system (
    system_id integer NOT NULL,
    name character varying(60),
    age_in_years integer,
    is_favorite character varying(10) NOT NULL,
    vacation_rate integer NOT NULL
);


ALTER TABLE public.system OWNER TO freecodecamp;

--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky', true, 1, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Chocolate', true, 2, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Vanilla', true, 3, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Berry', true, 4, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Mint', true, 5, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Strawberry', true, 6, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (12, true, 1, 1, 'Moon1');
INSERT INTO public.moon VALUES (45, true, 2, 1, 'Moon2');
INSERT INTO public.moon VALUES (56, true, 3, 2, 'Moon3');
INSERT INTO public.moon VALUES (88, true, 4, 1, 'Moon4');
INSERT INTO public.moon VALUES (11, true, 5, 2, 'Moon5');
INSERT INTO public.moon VALUES (23, true, 6, 1, 'Moon6');
INSERT INTO public.moon VALUES (88, true, 7, 1, 'Moon7');
INSERT INTO public.moon VALUES (89, true, 8, 3, 'Moon8');
INSERT INTO public.moon VALUES (36, true, 9, 4, 'Moon9');
INSERT INTO public.moon VALUES (12, true, 10, 1, 'Moon10');
INSERT INTO public.moon VALUES (321, true, 11, 1, 'Moon11');
INSERT INTO public.moon VALUES (12, true, 12, 2, 'Moon12');
INSERT INTO public.moon VALUES (54, true, 13, 1, 'Moon13');
INSERT INTO public.moon VALUES (876, true, 14, 1, 'Moon14');
INSERT INTO public.moon VALUES (51, true, 15, 2, 'Moon15');
INSERT INTO public.moon VALUES (431, true, 16, 1, 'Moon16');
INSERT INTO public.moon VALUES (21, true, 17, 1, 'Moon17');
INSERT INTO public.moon VALUES (19, true, 18, 1, 'Moon18');
INSERT INTO public.moon VALUES (29, true, 19, 1, 'Moon19');
INSERT INTO public.moon VALUES (481, true, 20, 2, 'Moon20');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 1, 1, 'Earth');
INSERT INTO public.planet VALUES (2, 0, 0, 1, 'Venus');
INSERT INTO public.planet VALUES (3, 0, 0, 1, 'Mars');
INSERT INTO public.planet VALUES (4, 1, 1, 1, 'Pluto');
INSERT INTO public.planet VALUES (5, 5, 2, 1, 'Jupiter');
INSERT INTO public.planet VALUES (6, 1, 1, 1, 'Saturn');
INSERT INTO public.planet VALUES (7, 1, 1, 1, 'Mercury');
INSERT INTO public.planet VALUES (8, 1, 1, 1, 'Bluto');
INSERT INTO public.planet VALUES (9, 1, 1, 1, 'Poopiter');
INSERT INTO public.planet VALUES (10, 1, 1, 1, 'Uranus');
INSERT INTO public.planet VALUES (11, 2, 1, 1, 'Myanus');
INSERT INTO public.planet VALUES (12, 3, 1, 1, 'Ihatemyjob');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 1, 'Star1', NULL);
INSERT INTO public.star VALUES (2, 1, 1, 'Star2', NULL);
INSERT INTO public.star VALUES (3, 1, 1, 'Star3', NULL);
INSERT INTO public.star VALUES (4, 1, 1, 'Star4', NULL);
INSERT INTO public.star VALUES (5, 1, 1, 'Star5', NULL);
INSERT INTO public.star VALUES (6, 2, 1, 'Star6', NULL);


--
-- Data for Name: system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.system VALUES (1, 'Milky Bae', 5000, 'yes', 100);
INSERT INTO public.system VALUES (2, 'Shmilky Way', 3400, 'no', 50);
INSERT INTO public.system VALUES (3, 'Josh', 1000, 'no', 75);
INSERT INTO public.system VALUES (4, 'Hello Baby', 100, 'yes', 100);
INSERT INTO public.system VALUES (5, 'Gabagool', 10000, 'yes', 300);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: system system_age_in_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.system
    ADD CONSTRAINT system_age_in_years_key UNIQUE (age_in_years);


--
-- Name: system system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.system
    ADD CONSTRAINT system_pkey PRIMARY KEY (system_id);


--
-- Name: galaxy u_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT u_galaxy_name UNIQUE (galaxy_name);


--
-- Name: moon u_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT u_moon_name UNIQUE (name);


--
-- Name: planet u_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT u_planet_name UNIQUE (name);


--
-- Name: star u_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT u_star_name UNIQUE (name);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--


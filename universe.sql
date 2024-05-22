--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(255),
    age_in_millions_of_years numeric NOT NULL,
    numbers_of_planets integer,
    galaxy_type text NOT NULL,
    distance_from_earth integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255),
    age_in_millions_of_years numeric NOT NULL,
    planet_id integer,
    atmosphere boolean NOT NULL,
    distance_from_planet integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255),
    age_in_millions_of_years numeric NOT NULL,
    mass integer,
    planet_type text NOT NULL,
    has_life boolean,
    population integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: spacecraft; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.spacecraft (
    spacecraft_id integer NOT NULL,
    name character varying(255),
    agency character varying(255) NOT NULL,
    launch_date integer,
    destination text NOT NULL,
    in_space boolean
);


ALTER TABLE public.spacecraft OWNER TO freecodecamp;

--
-- Name: spacecraft_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.spacecraft_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spacecraft_id_seq OWNER TO freecodecamp;

--
-- Name: spacecraft_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.spacecraft_id_seq OWNED BY public.spacecraft.spacecraft_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255),
    age_in_millions_of_years numeric NOT NULL,
    star_type character varying(255) NOT NULL,
    distance_from_earth integer,
    mass numeric,
    rotation_period integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: spacecraft spacecraft_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spacecraft ALTER COLUMN spacecraft_id SET DEFAULT nextval('public.spacecraft_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (100, 'abc', 8000, 12344, 'spiral', 1234);
INSERT INTO public.galaxy VALUES (101, 'XYZ Galaxy', 5000, 5000, 'Irregular', 1500);
INSERT INTO public.galaxy VALUES (102, 'NGC 1300', 10000, 20000, 'Spiral', 3000);
INSERT INTO public.galaxy VALUES (103, 'M87', 13000, 1000000, 'Elliptical', 5000);
INSERT INTO public.galaxy VALUES (104, 'Sombrero Galaxy', 12000, 200000, 'Spiral', 2500);
INSERT INTO public.galaxy VALUES (105, 'Cartwheel Galaxy', 15000, 50000, 'Ring', 4000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (421, 'Luna', 4520, 300, false, 0);
INSERT INTO public.moon VALUES (422, 'Phobos', 4485, 301, false, 0);
INSERT INTO public.moon VALUES (423, 'Deimos', 4495, 301, false, 0);
INSERT INTO public.moon VALUES (424, 'Io', 4470, 311, true, 0);
INSERT INTO public.moon VALUES (425, 'Europa', 4435, 311, true, 0);
INSERT INTO public.moon VALUES (426, 'Ganymede', 4482, 311, true, 0);
INSERT INTO public.moon VALUES (427, 'Callisto', 4510, 311, true, 0);
INSERT INTO public.moon VALUES (428, 'Titan', 5010, 311, true, 0);
INSERT INTO public.moon VALUES (429, 'Triton', 5520, 314, true, 0);
INSERT INTO public.moon VALUES (430, 'Enceladus', 4150, 313, true, 0);
INSERT INTO public.moon VALUES (431, 'Mimas', 4145, 313, false, 0);
INSERT INTO public.moon VALUES (432, 'Rhea', 4190, 313, false, 0);
INSERT INTO public.moon VALUES (433, 'Dione', 4230, 313, false, 0);
INSERT INTO public.moon VALUES (434, 'Iapetus', 4110, 313, false, 0);
INSERT INTO public.moon VALUES (435, 'Charon', 4480, 316, false, 0);
INSERT INTO public.moon VALUES (436, 'Hydra', 4490, 316, false, 0);
INSERT INTO public.moon VALUES (437, 'Nix', 4465, 316, false, 0);
INSERT INTO public.moon VALUES (438, 'Styx', 4515, 316, false, 0);
INSERT INTO public.moon VALUES (439, 'Kerberos', 4435, 316, false, 0);
INSERT INTO public.moon VALUES (440, 'Diemos', 4560, 305, false, 0);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (300, 'earth', 12345, 345, 'gesteinsplanet', true, 8, 200);
INSERT INTO public.planet VALUES (301, 'Mars', 4567, 1, 'Gesteinsplanet', false, 0, 201);
INSERT INTO public.planet VALUES (302, 'Jupiter', 12345, 1898, 'Gasriese', false, 0, 202);
INSERT INTO public.planet VALUES (303, 'Saturn', 10000, 568, 'Gasriese', false, 0, 202);
INSERT INTO public.planet VALUES (304, 'Neptune', 4543, 102, 'Eisriese', false, 0, 203);
INSERT INTO public.planet VALUES (305, 'Mercury', 4550, 0, 'Gesteinsplanet', false, 0, 204);
INSERT INTO public.planet VALUES (306, 'Venus', 4445, 5, 'Gesteinsplanet', false, 0, 204);
INSERT INTO public.planet VALUES (307, 'Uranus', 6666, 87, 'Eisriese', false, 0, 205);
INSERT INTO public.planet VALUES (308, 'Pluto', 5000, 0, 'Zwergplanet', false, 0, 206);
INSERT INTO public.planet VALUES (309, 'Europa', 4430, 0, 'Eismond', false, 0, 202);
INSERT INTO public.planet VALUES (310, 'Ganymede', 4480, 0, 'Eismond', false, 0, 202);
INSERT INTO public.planet VALUES (311, 'Titan', 5000, 0, 'Eismond', false, 0, 203);
INSERT INTO public.planet VALUES (312, 'Io', 4460, 0, 'Gesteinsmond', false, 0, 203);
INSERT INTO public.planet VALUES (313, 'Enceladus', 4120, 0, 'Eismond', false, 0, 204);
INSERT INTO public.planet VALUES (314, 'Triton', 5500, 0, 'Eismond', false, 0, 205);
INSERT INTO public.planet VALUES (315, 'Callisto', 4500, 0, 'Eismond', false, 0, 206);
INSERT INTO public.planet VALUES (316, 'Ceres', 4530, 0, 'Zwergplanet', false, 0, 207);


--
-- Data for Name: spacecraft; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.spacecraft VALUES (500, 'Raumschiff Enterprise', 'NASA', 2023, 'Coruscant', true);
INSERT INTO public.spacecraft VALUES (501, 'Discovery One', 'NASA', 2001, 'Jupiter', true);
INSERT INTO public.spacecraft VALUES (502, 'Millennium Falcon', 'Rebellion', 0, 'Endor', true);
INSERT INTO public.spacecraft VALUES (503, 'Voyager 1', 'NASA', 1977, 'Interstellar Space', true);
INSERT INTO public.spacecraft VALUES (504, 'Space Shuttle Atlantis', 'NASA', 1985, 'Low Earth Orbit', false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (200, 'Alpha Centauri', 2354, 'G', 3455, 2344, 1234, 101);
INSERT INTO public.star VALUES (201, 'Sirius', 2000, 'A', 8500, 2.02, 6, 100);
INSERT INTO public.star VALUES (202, 'Betelgeuse', 8000, 'M', 643, 11.6, 9, 101);
INSERT INTO public.star VALUES (203, 'Proxima Centauri', 12000, 'M', 4, 0.12, 84, 101);
INSERT INTO public.star VALUES (204, 'Aldebaran', 6500, 'K', 65, 1.7, 626, 102);
INSERT INTO public.star VALUES (205, 'Antares', 12000, 'M', 550, 15, 3, 103);
INSERT INTO public.star VALUES (206, 'Polaris', 5000, 'F', 434, 5.4, 4, 104);
INSERT INTO public.star VALUES (207, 'Vega', 450, 'A', 25, 2.1, 13, 105);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 1, false);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 1, false);


--
-- Name: spacecraft_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.spacecraft_id_seq', 1, false);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 1, false);


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
-- Name: spacecraft spacecraft_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spacecraft
    ADD CONSTRAINT spacecraft_pkey PRIMARY KEY (spacecraft_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: spacecraft unique_spacecraft_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spacecraft
    ADD CONSTRAINT unique_spacecraft_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_planet_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey1 FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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


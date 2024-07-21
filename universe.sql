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
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    distance_from_earth numeric NOT NULL,
    is_spherical boolean,
    galaxy_type_id integer
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
-- Name: galaxy_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_type (
    galaxy_type_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.galaxy_type OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_type_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_type_galaxy_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_type_galaxy_type_id_seq OWNED BY public.galaxy_type.galaxy_type_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    distance_from_earth numeric NOT NULL,
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
    age_in_millions_of_years integer,
    distance_from_earth numeric NOT NULL,
    is_spherical boolean,
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
    distance_from_earth numeric NOT NULL,
    is_spherical boolean,
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_type galaxy_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type ALTER COLUMN galaxy_type_id SET DEFAULT nextval('public.galaxy_type_galaxy_type_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The galaxy that contains our Solar System', 13600, 0.0, true, 1);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The nearest major galaxy to the Milky Way', 10000, 2537000, true, 2);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'A member of the Local Group of galaxies', 10000, 3000000, true, 3);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'An interacting grand-design spiral galaxy', 4500, 23000000, true, 7);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'A lenticular galaxy in the constellation Virgo', 9000, 29000000, false, 8);
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', 'A satellite galaxy of the Milky Way', 13600, 163000, false, 9);


--
-- Data for Name: galaxy_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_type VALUES (1, 'Spiral', 'A galaxy with a central nucleus and spiral arms');
INSERT INTO public.galaxy_type VALUES (2, 'Barred Spiral', 'A spiral galaxy with a central bar-shaped structure');
INSERT INTO public.galaxy_type VALUES (3, 'Elliptical', 'A type of galaxy having an ellipsoidal shape and a smooth, nearly featureless brightness profile');
INSERT INTO public.galaxy_type VALUES (4, 'Lenticular', 'A galaxy with a central bulge and a disk but no spiral arms');
INSERT INTO public.galaxy_type VALUES (5, 'Irregular', 'A galaxy with no regular shape or structure');
INSERT INTO public.galaxy_type VALUES (6, 'Dwarf', 'A small galaxy composed of up to several billion stars');
INSERT INTO public.galaxy_type VALUES (7, 'Peculiar', 'A galaxy with unusual shape or size, often due to interactions or mergers');
INSERT INTO public.galaxy_type VALUES (8, 'S0', 'A type of lenticular galaxy with a prominent bulge and a disk but no spiral arms');
INSERT INTO public.galaxy_type VALUES (9, 'Low Surface Brightness', 'A galaxy with a surface brightness lower than the ambient night sky');
INSERT INTO public.galaxy_type VALUES (10, 'Ultra Diffuse', 'A galaxy that is as large as the Milky Way but has very low star density');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'The only natural satellite of Earth', 4500, 0.384, true, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'The larger and closer of the two moons of Mars', 4500, 225, true, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'The smaller and more distant of the two moons of Mars', 4500, 225, true, 4);
INSERT INTO public.moon VALUES (4, 'Io', 'The innermost of the four Galilean moons of Jupiter', 4500, 628, true, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 'The smallest of the four Galilean moons of Jupiter', 4500, 628, true, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'The largest moon of Jupiter and the Solar System', 4500, 628, true, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 'The second-largest moon of Jupiter', 4500, 628, true, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 'The largest moon of Saturn', 4500, 1200, true, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', 'A moon of Saturn known for its icy geysers', 4500, 1200, true, 6);
INSERT INTO public.moon VALUES (10, 'Mimas', 'The smallest and innermost of Saturn’s major moons', 4500, 1200, true, 6);
INSERT INTO public.moon VALUES (11, 'Triton', 'The largest moon of Neptune', 4500, 4300, true, 8);
INSERT INTO public.moon VALUES (12, 'Charon', 'The largest moon of Pluto', 4500, 5900, true, 1);
INSERT INTO public.moon VALUES (13, 'Hypothetical Mercury Moon 1', 'A hypothetical moon of Mercury', 4500, 77, true, 2);
INSERT INTO public.moon VALUES (14, 'Hypothetical Venus Moon 1', 'A hypothetical moon of Venus', 4500, 261, true, 9);
INSERT INTO public.moon VALUES (15, 'Hypothetical Betelgeuse Moon 1', 'A hypothetical moon of Betelgeuse b', 10000, 642.5, true, 10);
INSERT INTO public.moon VALUES (16, 'Hypothetical Sirius Moon 1', 'A hypothetical moon of Sirius b', 300, 8.6, true, 11);
INSERT INTO public.moon VALUES (17, 'Hypothetical Rigel Moon 1', 'A hypothetical moon of Rigel b', 8000, 860, true, 11);
INSERT INTO public.moon VALUES (18, 'Hypothetical Proxima Centauri c Moon 1', 'A hypothetical moon of Proxima Centauri c', 4600, 4.24, true, 12);
INSERT INTO public.moon VALUES (19, 'Hypothetical Proxima Centauri b Moon 1', 'A hypothetical moon of Proxima Centauri b', 4600, 4.24, true, 8);
INSERT INTO public.moon VALUES (20, 'Hypothetical Alpha Centauri Bb Moon 1', 'A hypothetical moon of Alpha Centauri Bb', 4600, 4.37, true, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'The smallest and innermost planet in the Solar System', 4500, 77, true, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'The second planet from the Sun', 4500, 261, true, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Our home planet, the third planet from the Sun', 4500, 0, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'The fourth planet from the Sun, known as the Red Planet', 4500, 225, true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'The largest planet in the Solar System', 4500, 588, true, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'The sixth planet from the Sun, known for its prominent ring system', 4500, 1200, true, 1);
INSERT INTO public.planet VALUES (7, 'Alpha Centauri Bb', 'An exoplanet orbiting Alpha Centauri B', 4600, 4.37, true, 5);
INSERT INTO public.planet VALUES (8, 'Proxima Centauri b', 'An exoplanet orbiting the closest star to the Sun', 4600, 4.24, true, 2);
INSERT INTO public.planet VALUES (9, 'Betelgeuse b', 'A hypothetical planet orbiting Betelgeuse', 10000, 642.5, true, 3);
INSERT INTO public.planet VALUES (10, 'Sirius b', 'A hypothetical planet orbiting Sirius', 300, 8.6, true, 4);
INSERT INTO public.planet VALUES (11, 'Rigel b', 'A hypothetical planet orbiting Rigel', 8000, 860, true, 6);
INSERT INTO public.planet VALUES (12, 'Proxima Centauri c', 'A hypothetical second planet orbiting Proxima Centauri', 4600, 4.24, true, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The star at the center of our Solar System', 4600, 0.0, true, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'The closest known star to the Sun', 4500, 4.24, true, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'A red supergiant star in the constellation Orion', 10000, 642.5, true, 1);
INSERT INTO public.star VALUES (4, 'Sirius', 'The brightest star in the night sky', 300, 8.6, true, 1);
INSERT INTO public.star VALUES (5, 'Alpha Centauri A', 'A star in the closest star system to the Solar System', 4500, 4.37, true, 1);
INSERT INTO public.star VALUES (6, 'Rigel', 'A blue supergiant star in the constellation Orion', 8000, 860, true, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_type_galaxy_type_id_seq', 10, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: galaxy_type galaxy_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_name_key UNIQUE (name);


--
-- Name: galaxy_type galaxy_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_pkey PRIMARY KEY (galaxy_type_id);


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
-- Name: galaxy galaxy_galaxy_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_type_id_fkey FOREIGN KEY (galaxy_type_id) REFERENCES public.galaxy_type(galaxy_type_id);


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


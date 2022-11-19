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
    description text,
    has_life boolean,
    galaxy_types text,
    name character varying(30) NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: meteor; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.meteor (
    meteor_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.meteor OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    age_in_millions_of_years integer,
    planet_id integer,
    has_life boolean,
    name character varying(30) NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    distance_from_earth numeric,
    has_life boolean,
    star_id integer,
    name character varying(30) NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer,
    name character varying(30) NOT NULL,
    distance_from_earth numeric,
    age_in_millions_of_years integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (0, '1', true, '1', 'galaxy1');
INSERT INTO public.galaxy VALUES (1, '2', false, '2', 'galaxy2');
INSERT INTO public.galaxy VALUES (2, '3', true, '3', 'galaxy3');
INSERT INTO public.galaxy VALUES (3, '4', false, '4', 'galaxy4');
INSERT INTO public.galaxy VALUES (4, '5', false, '5', 'galaxy5');
INSERT INTO public.galaxy VALUES (5, '6', true, '6', 'galaxy6');


--
-- Data for Name: meteor; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.meteor VALUES (0, 'meteor1', 2);
INSERT INTO public.meteor VALUES (1, 'meteor2', 4);
INSERT INTO public.meteor VALUES (2, 'meteor3', 0);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (0, 40, 0, true, 'moon1');
INSERT INTO public.moon VALUES (1, 1, 4, false, 'moon2');
INSERT INTO public.moon VALUES (2, 40, 5, false, 'moon3');
INSERT INTO public.moon VALUES (3, 10, 2, true, 'moon4');
INSERT INTO public.moon VALUES (4, 20, 1, true, 'moon5');
INSERT INTO public.moon VALUES (5, 10, 0, false, 'moon6');
INSERT INTO public.moon VALUES (6, 1, 1, false, 'moon7');
INSERT INTO public.moon VALUES (7, 3, 3, false, 'moon8');
INSERT INTO public.moon VALUES (8, 70, 4, true, 'moon9');
INSERT INTO public.moon VALUES (9, 50, 5, true, 'moon10');
INSERT INTO public.moon VALUES (10, 70, 3, true, 'moon11');
INSERT INTO public.moon VALUES (11, 50, 0, true, 'moon12');
INSERT INTO public.moon VALUES (12, 5, 1, false, 'moon13');
INSERT INTO public.moon VALUES (13, 60, 3, false, 'moon14');
INSERT INTO public.moon VALUES (14, 2, 2, true, 'moon15');
INSERT INTO public.moon VALUES (15, 89, 4, true, 'moon16');
INSERT INTO public.moon VALUES (16, 9, 5, false, 'moon17');
INSERT INTO public.moon VALUES (17, 8, 5, false, 'moon18');
INSERT INTO public.moon VALUES (18, 111, 1, false, 'moon19');
INSERT INTO public.moon VALUES (19, 1, 0, true, 'moon20');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (0, 30, true, 2, 'planet1');
INSERT INTO public.planet VALUES (1, 40, false, 3, 'planet2');
INSERT INTO public.planet VALUES (2, 50, false, 5, 'planet3');
INSERT INTO public.planet VALUES (3, 7, false, 0, 'planet4');
INSERT INTO public.planet VALUES (4, 40, true, 1, 'planet5');
INSERT INTO public.planet VALUES (5, 4, true, 3, 'planet6');
INSERT INTO public.planet VALUES (6, 10, false, 4, 'planet7');
INSERT INTO public.planet VALUES (7, 5, true, 5, 'planet8');
INSERT INTO public.planet VALUES (8, 70, true, 2, 'planet9');
INSERT INTO public.planet VALUES (9, 40, false, 4, 'planet10');
INSERT INTO public.planet VALUES (10, 50, false, 5, 'planet11');
INSERT INTO public.planet VALUES (11, 1, true, 1, 'planet12');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (0, 2, 'star1', 200, 3);
INSERT INTO public.star VALUES (1, 1, 'star2', 100, 4);
INSERT INTO public.star VALUES (2, 4, 'star3', 400, 70);
INSERT INTO public.star VALUES (3, 5, 'star4', 60, 80);
INSERT INTO public.star VALUES (4, 0, 'star5', 50, 100);
INSERT INTO public.star VALUES (5, 3, 'star6', 70, 6);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: meteor meteorites_meteor_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT meteorites_meteor_id_key UNIQUE (meteor_id);


--
-- Name: meteor meteorites_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT meteorites_pkey PRIMARY KEY (meteor_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: meteor meteorites_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT meteorites_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

